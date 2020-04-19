project(Project-Template-C++)
cmake_minimum_required(VERSION 3.0)

include(${CMAKE_CURRENT_SOURCE_DIR}/config.cmake)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/oss/googletest)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/cmake-files)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/oss)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/app)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)

