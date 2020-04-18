MACRO(FindOssLibraries OSS_LIBRARIES)
    set(OSS_LIBRARIES           ${PROJECT_OUTPUT_OSS_CIVETWEB_BUILD_DIR_LIB}/libcivetweb.a
                                ${PROJECT_OUTPUT_OSS_CIVETWEB_BUILD_DIR_LIB}/libcivetweb-cpp.a
                                ${PROJECT_OUTPUT_OSS_CJSON_BUILD_DIR_LIB}/libcjson.a
                                ${PROJECT_OUTPUT_OSS_OPENSSL_BUILD_DIR_LIB}/libcrypto.a
                                ${PROJECT_OUTPUT_OSS_OPENSSL_BUILD_DIR_LIB}/libssl.a)

    if(ENABLE_UNIT_TESTS)
        set(OSS_LIBRARIES       ${OSS_LIBRARIES}
                                ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_LIB_DIR}/libgtest.a
                                ${PROJECT_OUTPUT_OSS_GOOGLETEST_BUILD_LIB_DIR}/libgmock.a)
    endif(ENABLE_UNIT_TESTS)
ENDMACRO()

