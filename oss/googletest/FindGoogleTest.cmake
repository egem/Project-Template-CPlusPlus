
set(GoogleTest_FOUND                    true)
set(GoogleTest_PROJECT_NAME             GoogleTest)
set(GoogleTest_OUTPUT_DIR               ${CMAKE_BINARY_DIR}/googletest)
set(GoogleTest_OUTPUT_BUILD_DIR         ${GoogleTest_OUTPUT_DIR}/build)
set(GoogleTest_INCLUDE_DIRS             ${GoogleTest_OUTPUT_BUILD_DIR}/include)
set(GoogleTest_LIBRARIES                ${GoogleTest_OUTPUT_BUILD_DIR}/lib/libgtest.a
                                        ${GoogleTest_OUTPUT_BUILD_DIR}/lib/libgmock.a)
