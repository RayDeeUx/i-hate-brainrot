file(WRITE "${TEST_DRIVER_CONFIG_FILE}"
    "set(TEST_DRIVER \"${TEST_DRIVER}\")\n"
)

file(WRITE "${TEST_INCLUDE_FILE}"
    "set(TEST_DRIVER_INCLUDE_FILE \"${TEST_DRIVER_INCLUDE_FILE}\")\n"
    "set(TEST_DRIVER_CONFIG_FILE_BASE \"${TEST_DRIVER_CONFIG_FILE_BASE}\")\n"
    "include(\"\${TEST_DRIVER_INCLUDE_FILE}\")\n"
    "set(TEST_DRIVER_SINGLE_CONFIG_FILE \"\${TEST_DRIVER_CONFIG_FILE_BASE}.cmake\")\n"
    "set(TEST_DRIVER_MULTI_CONFIG_FILE \"\${TEST_DRIVER_CONFIG_FILE_BASE}-\${CTEST_CONFIGURATION_TYPE}.cmake\")\n"
    "if(EXISTS \"\${TEST_DRIVER_MULTI_CONFIG_FILE}\")\n"
    "   include(\"\${TEST_DRIVER_MULTI_CONFIG_FILE}\")\n"
    "else()\n"
    "   include(\"\${TEST_DRIVER_SINGLE_CONFIG_FILE}\")\n"
    "endif()\n"
    "webview_discover_tests_impl(\"\${TEST_DRIVER}\")\n"
)
