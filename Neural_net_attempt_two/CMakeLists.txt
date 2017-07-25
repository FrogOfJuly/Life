cmake_minimum_required(VERSION 3.6)
project(Neural_net_attempt_two_)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        Tests/all_tests.cpp
        Layer/Layer.cpp
        Layer/Layer.h
        Input_Layer/Input_layer.cpp
        Input_Layer/Input_layer.h
        Dense_Layer/Dense_Layer.cpp
        Dense_Layer/Dense_Layer.h
        Tests/tests.cpp
        Tests/tests.h
        Brain/Brain.cpp
        Brain/Brain.h
        Reccurent_Layer/Reccurent_Layer.h)

find_package(GSL REQUIRED)
include_directories(${GSL_INCLUDE_DIR})

add_library(Neural_net_attempt_two_ STATIC ${SOURCE_FILES})
