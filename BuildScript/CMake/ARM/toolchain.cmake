SET(CMAKE_SYSTEM_NAME       Generic)
SET(CMAKE_SYSTEM_PROCESSOR  ${ARM_C_CORE})

if(WIN32)
    set(FILE_EXT            ".exe")
endif()

set(CMAKE_ASM_COMPILER      "${TOOLCHAIN_ROOT}/bin/armasm${FILE_EXT}")
set(CMAKE_C_COMPILER        "${TOOLCHAIN_ROOT}/bin/armclang${FILE_EXT}")
set(CMAKE_CXX_COMPILER      "${TOOLCHAIN_ROOT}/bin/armclang${FILE_EXT}")
set(CMAKE_FROMELF           "${TOOLCHAIN_ROOT}/bin/fromelf${FILE_EXT}")

set(CMAKE_AR                "${TOOLCHAIN_ROOT}/bin/armar${FILE_EXT}")
set(CMAKE_CXX_COMPILER_AR   "${TOOLCHAIN_ROOT}/bin/armar${FILE_EXT}")
set(CMAKE_C_COMPILER_AR     "${TOOLCHAIN_ROOT}/bin/armar${FILE_EXT}")
set(CMAKE_LINKER            "${TOOLCHAIN_ROOT}/bin/armlink${FILE_EXT}")


# Where is the target environment
set(CMAKE_FIND_ROOT_PATH    "${TOOLCHAIN_ROOT}")

# Search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# For libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
