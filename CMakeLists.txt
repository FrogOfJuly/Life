cmake_minimum_required(VERSION 3.6)
project(Life_broken)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        Source_files/Life.cpp
        Source_files/unit/unit.cpp
        Source_files/unit/unit.h
        Source_files/unit/unit_params.cpp
        Source_files/unit/unit_params.h
        Source_files/field/field.cpp
        Source_files/field/field.h
        Source_files/place/place.cpp
        Source_files/place/place.h
        Source_files/brain/brain.cpp
        Source_files/brain/brain.h
        Source_files/sell/sell.cpp
        Source_files/sell/sell.h
        Source_files/sell/sell_params.cpp
        Source_files/sell/sell_params.h
        Source_files/sell/sell_brain.cpp
        Source_files/sell/sell_brain.h
        Source_files/body_parts/body_parts.cpp
        Source_files/body_parts/body_parts.h
        Source_files/predator/pred.cpp
        Source_files/predator/pred.h
        Source_files/predator/pred_brain.cpp
        Source_files/predator/pred_brain.h
        Source_files/predator/pred_params.cpp
        Source_files/predator/pred_params.h)

add_executable(Life_broken ${SOURCE_FILES})

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake_modules")
find_package(SFML REQUIRED system window graphics network audio)

if (SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(Life_broken ${SFML_LIBRARIES})
endif()


