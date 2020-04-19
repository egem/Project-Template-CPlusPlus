add_executable(main main.cpp)

AddAllSubdirs()

find_package(ModuleName REQUIRED)
message("ModuleName_LIBRARIES: ${ModuleName_LIBRARIES}")

add_dependencies(main ${ModuleName_LIBRARY_NAME})
target_include_directories(main PRIVATE ${ModuleName_INCLUDE_DIRS})
target_link_libraries(main ${ModuleName_LIBRARIES})


