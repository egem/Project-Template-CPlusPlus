FUNCTION(ImportModule module)
    find_package(${module} REQUIRED)

    if(${${module}_FOUND})
        add_dependencies(main ${${module}_DEPENDENCY_NAME})

        target_include_directories(main PRIVATE ${${module}_INCLUDE_DIRS})
        target_link_libraries(main ${${module}_LIBRARIES})
    endif()
ENDFUNCTION()
