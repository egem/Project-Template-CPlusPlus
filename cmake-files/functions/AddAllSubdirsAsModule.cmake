MACRO(AddAllSubdirsAsModule Dir)
    set(folders)

    ListSubDirs(folders ${Dir})

    foreach(folder ${folders})
        set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${Dir}/${folder})
    endforeach(folder ${folders})
ENDMACRO()
