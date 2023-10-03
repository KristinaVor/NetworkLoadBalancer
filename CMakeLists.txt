cmake_minimum_required(VERSION 3.12)
project(NetworkLoadBalancer)

set(CMAKE_CXX_STANDARD 11)

add_executable(NetworkLoadBalancer main.cpp load_balancer.cpp)

target_link_libraries(NetworkLoadBalancer jsoncpp)#
