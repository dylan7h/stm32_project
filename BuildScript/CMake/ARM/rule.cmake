include("${CMAKE_CURRENT_LIST_DIR}/option.cmake")

# Toolchain Configuration
set(CMAKE_TOOLCHAIN_FILE                "${CMAKE_CURRENT_LIST_DIR}/toolchain.cmake")

# Override rules  each type of build
set(CMAKE_USER_MAKE_RULES_OVERRIDE      "${CMAKE_CURRENT_LIST_DIR}/override.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/target.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/extract.cmake")
