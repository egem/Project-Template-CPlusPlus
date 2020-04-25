include(${CMAKE_CURRENT_SOURCE_DIR}/ImportModule.cmake)
FUNCTION(ImportAllModules Dir)

    set(modules)

    ListSubDirs(modules ${Dir})

    foreach(module ${modules})
        ImportModule(${module})
    endforeach(module ${modules})

ENDFUNCTION()