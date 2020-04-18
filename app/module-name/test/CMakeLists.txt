enable_testing()

include_directories(${CMAKE_BINARY_DIR}/googletest/include)

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SRCS)

foreach(SRC ${SRCS})
    get_filename_component(SRC_NAME ${SRC} NAME_WE)
    add_executable(${SRC_NAME} ${SRC})

    add_dependencies(${SRC_NAME} GoogleTest)

    target_link_libraries(${SRC_NAME}   ${CMAKE_BINARY_DIR}/googletest/lib/libgtest.a
                                        ${CMAKE_BINARY_DIR}/googletest/lib/libgmock.a)

    add_test(   NAME        ${SRC_NAME}
                COMMAND     ${SRC_NAME})

    add_custom_command(     TARGET ${SRC_NAME}
                            POST_BUILD
                            COMMAND ${SRC_NAME}
                            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                            COMMENT "Running Unit Tests" VERBATIM)
endforeach()
