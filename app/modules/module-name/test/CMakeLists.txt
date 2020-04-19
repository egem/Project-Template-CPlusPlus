enable_testing()

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SOURCES)

find_package(GoogleTest REQUIRED)
find_package(ModuleName REQUIRED)

foreach(SRC ${SOURCES})
    get_filename_component(SRC_NAME ${SRC} NAME_WE)
    add_executable(${SRC_NAME} ${SRC})

    add_dependencies(${SRC_NAME} ${GoogleTest_PROJECT_NAME})

    target_include_directories( ${SRC_NAME}   PRIVATE   ${CMAKE_CURRENT_SOURCE_DIR}/inc
                                                        ${GoogleTest_INCLUDE_DIRS}
                                                        ${ModuleName_INCLUDE_DIRS})

    target_link_libraries(${SRC_NAME}   ${GoogleTest_LIBRARIES}
                                        ${ModuleName_LIBRARIES})

    add_test(   NAME        ${SRC_NAME}
                COMMAND     ${SRC_NAME})

    add_custom_command(     TARGET ${SRC_NAME}
                            POST_BUILD
                            COMMAND ${SRC_NAME}
                            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                            COMMENT "Running Unit Tests" VERBATIM)
endforeach()
