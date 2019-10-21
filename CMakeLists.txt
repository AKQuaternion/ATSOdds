cmake_minimum_required(VERSION 3.15)
project(ATSOdds)

set(CMAKE_CXX_STANDARD 17)

add_executable(ATSOdds main.cpp)

target_link_libraries(ATSOdds m)