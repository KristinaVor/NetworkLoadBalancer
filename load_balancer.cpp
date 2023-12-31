#include "load_balancer.hpp"
#include <iostream>
#include <fstream>
#include <cstring>
#include <cstdlib>
#include <ctime>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#include "json.hpp"

using json = nlohmann::json;

// Function for reading the configuration file
bool ReadConfig(const std::string& config_file, int& listen_port, std::vector<Node>& nodes, int& max_packets_per_second) {
    std::ifstream file(config_file);
    if (!file) {
        std::cerr << "Error: Unable to open config file." << std::endl;
        return false;
    }

    try {
        json config;
        file >> config;

        // Read settings from JSON
        listen_port = config["listen_port"];
        max_packets_per_second = config["max_packets_per_second"];

        nodes.clear();
        for (const auto& node : config["nodes"]) {
            Node n;
            n.address = node["address"];
            n.port = node["port"];
            n.weight = node["weight"];
            n.load = 0; // Initialize load to 0
            nodes.push_back(n);
        }

        return true;
    } catch (const json::exception& e) {
        std::cerr << "Error parsing config file: " << e.what() << std::endl;
        return false;
    }
}

// Main load balancing function
void BalanceLoad(int listen_port, const std::vector<Node>& nodes, int max_packets_per_second) {
    int udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
    if (udp_socket == -1) {
        std::cerr << "Error creating UDP socket." << std::endl;
        return;
    }

    struct sockaddr_in server_addr;
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(listen_port);

    if (bind(udp_socket, (struct sockaddr*)&server_addr, sizeof(server_addr)) == -1) {
        std::cerr << "Error binding UDP socket." << std::endl;
        close(udp_socket);
        return;
    }

    std::vector<int> node_sockets;
    for (const Node& node : nodes) {
        int node_socket = socket(AF_INET, SOCK_DGRAM, 0);
        if (node_socket == -1) {
            std::cerr << "Error creating socket for node." << std::endl;
            continue;
        }
        node_sockets.push_back(node_socket);
    }

    while (true) {
        char buffer[1024];
        struct sockaddr_in client_addr;
        socklen_t client_addr_len = sizeof(client_addr);
        int bytes_received = recvfrom(udp_socket, buffer, sizeof(buffer), 0, (struct sockaddr*)&client_addr, &client_addr_len);

        if (bytes_received == -1) {
            std::cerr << "Error receiving UDP packet." << std::endl;
            continue;
        }

        // Calculate total load
        int total_load = 0;
        for (const Node& node : nodes) {
            total_load += node.load;
        }

        // Check load limit
        if (total_load >= max_packets_per_second) {
            std::cerr << "Load limit exceeded. Dropping packet." << std::endl;
            continue;
        }

        // Balance load - choose the node with the lowest load
        const Node* selected_node = nullptr;
        for (const Node& node : nodes) {
            if (selected_node == nullptr || node.load < selected_node->load) {
                selected_node = &node;
            }
        }

        // Send the datagram to the selected node
        int node_socket = node_sockets[std::distance(&nodes[0], selected_node)];

        struct sockaddr_in node_addr;
        node_addr.sin_family = AF_INET;
        node_addr.sin_addr.s_addr = inet_addr(selected_node->address.c_str());
        node_addr.sin_port = htons(selected_node->port);

        sendto(node_socket, buffer, bytes_received, 0, (struct sockaddr*)&node_addr, sizeof(node_addr));

        // Increase the load of the selected node
        const_cast<Node*>(selected_node)->load++;
    }

    for (int node_socket : node_sockets) {
        close(node_socket);
    }

    close(udp_socket);
}
