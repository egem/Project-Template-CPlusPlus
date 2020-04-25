FUNCTION(AddTest filename)
    find_package(GoogleTest REQUIRED)

    get_filename_component(FILENAME_WE ${filename} NAME_WE)
    add_executable(${FILENAME_WE} ${CMAKE_CURRENT_SOURCE_DIR}/${filename})

    add_dependencies(${FILENAME_WE} ${GoogleTest_PROJECT_NAME})

    target_include_directories( ${FILENAME_WE}   PRIVATE   ${GoogleTest_INCLUDE_DIRS})

    target_link_libraries(${FILENAME_WE}    ${GoogleTest_LIBRARIES})

    add_test(   NAME        ${FILENAME_WE}
                COMMAND     ${FILENAME_WE})

    add_custom_command(     TARGET ${FILENAME_WE}
                            POST_BUILD
                            COMMAND ${FILENAME_WE}
                            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                            COMMENT "Running Unit Tests" VERBATIM)
ENDFUNCTION()