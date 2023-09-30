#ifndef LOAD_BALANCER_H
#define LOAD_BALANCER_H

#include <vector>
#include <string>

// Структура для хранения настроек узла
struct Node {
    std::string address;
    int port;
    int weight;
};

// Функция для чтения конфигурационного файла
bool ReadConfig(const std::string& config_file, int& listen_port, std::vector<Node>& nodes, int& max_packets_per_second);

// Главная функция балансировки нагрузки
void BalanceLoad(const int listen_port, const std::vector<Node>& nodes, const int max_packets_per_second);

#endif
