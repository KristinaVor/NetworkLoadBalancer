#include "load_balancer.hpp"
#include <iostream>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <config_file>" << std::endl;
        return 1;
    }

    const std::string config_file = argv[1];
    int listen_port, max_packets_per_second;
    std::vector<Node> nodes;

    if (!ReadConfig(config_file, listen_port, nodes, max_packets_per_second)) {
        return 1;
    }

    BalanceLoad(listen_port, nodes, max_packets_per_second);

    return 0;
}
