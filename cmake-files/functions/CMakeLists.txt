file(GLOB CMAKE_FUNCTIONS ${CMAKE_CURRENT_SOURCE_DIR}/*.cmake)

foreach(function ${CMAKE_FUNCTIONS})
    include(${function})
endforeach(function ${CMAKE_FUNCTIONS})
