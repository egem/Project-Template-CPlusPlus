# ImportModule(main)

project(ModuleName)

include(${CMAKE_CURRENT_SOURCE_DIR}/FindModuleName.cmake)

cmake_minimum_required(VERSION 3.0)

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SRCS)

message("SRCS: ${SRCS}")

add_library(${ModuleName_LIBRARY_NAME} ${SRCS})
set_target_properties(${ModuleName_LIBRARY_NAME} PROPERTIES
ARCHIVE_OUTPUT_DIRECTORY "${ModuleName_LIBRARY_PATH}"
LIBRARY_OUTPUT_DIRECTORY "${ModuleName_LIBRARY_PATH}"
RUNTIME_OUTPUT_DIRECTORY "${ModuleName_LIBRARY_PATH}"
)

target_include_directories(${ModuleName_LIBRARY_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/inc)
configure_files(${CMAKE_CURRENT_SOURCE_DIR}/inc ${ModuleName_INCLUDE_DIRS})

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)