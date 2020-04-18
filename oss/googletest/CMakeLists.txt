if(ENABLE_UNIT_TESTS)
include(ExternalProject)

set(GOOGLE_TEST_COMPRESSED_FILE_NAME   ${CMAKE_CURRENT_SOURCE_DIR}/${GOOGLETEST_VERSION_NAME}.tar.gz)

message("Uncompressing ${GOOGLE_TEST_COMPRESSED_FILE_NAME} ...")

execute_process(
    COMMAND             ${CMAKE_COMMAND} -E tar xzf ${GOOGLE_TEST_COMPRESSED_FILE_NAME}
    WORKING_DIRECTORY   ${PROJECT_OUTPUT_OSS_DIR}
)

set(GOOGLETEST_LIBRARIES_LIST "gtest gmock")

ExternalProject_Add(        ${GOOGLETEST_PROJECT_NAME}
    SOURCE_DIR              ${PROJECT_OUTPUT_OSS_GOOGLETEST_DIR}
    BINARY_DIR              ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_DIR}
    PREFIX                  ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_DIR}
    BUILD_COMMAND           make
    INSTALL_COMMAND         make install
    LIST_SEPARATOR          | # Use the alternate list separator
    CMAKE_ARGS 
                            -DCMAKE_INSTALL_PREFIX=${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_DIR}
)

set(GTEST_INC_DIRS          ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_INC_DIR}              PARENT_SCOPE)

# No need to create shared lib depending on ENABLE_SHARED_LIB flag since it will only be used in unit test.
set(GTEST_LIBRARIES         ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_LIB_DIR}/libgtest.a
                            ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_LIB_DIR}/libgmock.a   PARENT_SCOPE)

endif(ENABLE_UNIT_TESTS)
