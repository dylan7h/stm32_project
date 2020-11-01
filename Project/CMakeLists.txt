cmake_minimum_required(VERSION 3.15)

include(Common/rule.cmake)
include(${CMAKE_HOME_DIRECTORY}/../BuildScript/CMake/${COMPILER_TYPE}/rule.cmake)
# include(../BuildScript/CMake/AutoConfig/autoconfig.cmake)


project(
    # Project Name
    stm32f303re
    # Description
    DESCRIPTION     "stm32f303re cmake/openocd/gdb project"
    # URL
    HOMEPAGE_URL    "https://github.com/dylan7h"
)

# ======================================
# [ Begin 'autoconfig.h' generation ]
# ======================================
# begin_autoconfig()

# ======================================
# [ pushback 'autoconfig.h' generation ]
# ======================================
# pushback_autoconfig("${CMAKE_DEFINITIONS}")

include(${CMAKE_CURRENT_LIST_DIR}/App/rule.cmake)
# include(Lib)

# ======================================
# [ End 'autoconfig.h' generation ]
# ======================================
# end_autoconfig("Common/Include")
