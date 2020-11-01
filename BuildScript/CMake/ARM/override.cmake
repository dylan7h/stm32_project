# =========================================
# Set Build Option each type of build
# - Debug
# - RelWithDebInfo
# - Release
# =========================================
# Language ASM
set(CMAKE_ASM_FLAGS_DEBUG_INIT              )
set(CMAKE_ASM_FLAGS_RELWITHDEBINFO_INIT     )
set(CMAKE_ASM_FLAGS_RELEASE_INIT            )
# Language C
set(CMAKE_C_FLAGS_DEBUG_INIT                "-g --debug")
set(CMAKE_C_FLAGS_RELWITHDEBINFO_INIT       "-O2 --debug")
set(CMAKE_C_FLAGS_RELEASE_INIT              "-O2")
# Language C++
set(CMAKE_CXX_FLAGS_DEBUG_INIT              "-g --debug")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT     "-O2 --debug")
set(CMAKE_CXX_FLAGS_RELEASE_INIT            "-O2")


# =========================================
# Set Execuatable File Extension
# =========================================
set(CMAKE_EXECUTABLE_SUFFIX     ".axf")
