include(${CMAKE_SOURCE_DIR}/oss/googletest/GoogleTest.cmake)

set(GoogleTest_FOUND true)
set(GoogleTest_INCLUDE_DIRS ${GOOGLE_TEST_OUTPUT_BUILD_DIR}/include)
set(GoogleTest_LIBRARIES    ${GOOGLE_TEST_OUTPUT_BUILD_DIR}/lib/libgtest.a
                            ${GOOGLE_TEST_OUTPUT_BUILD_DIR}/lib/libgmock.a)
