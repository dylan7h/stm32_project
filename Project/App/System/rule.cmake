# ======================================
# [ Include rules ]
# ======================================
include(${CMAKE_CURRENT_LIST_DIR}/${COMPILER_TYPE}/rule.cmake)


# ======================================
# [ Startup File ]
# ======================================
list(APPEND STARTUP         ${CMAKE_CURRENT_LIST_DIR}/system_stm32f3xx.c)
