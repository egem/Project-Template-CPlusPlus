FUNCTION(ImportModule TargetName)
    cmake_minimum_required(VERSION 3.0)

    aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SRCS)

    # message("SRCS: ${SRCS}")
    target_sources(${TargetName} PRIVATE ${SRCS})
    target_include_directories(${TargetName} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/inc)
ENDFUNCTION()
