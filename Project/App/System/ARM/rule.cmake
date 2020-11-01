# ======================================
# [ Scatter Load File ]
# ======================================
list(APPEND SCATTER         ${CMAKE_CURRENT_LIST_DIR}/STM32F303RETx_FLASH.sct)


# ======================================
# [ Startup File ]
# ======================================
list(APPEND STARTUP         ${CMAKE_CURRENT_LIST_DIR}/startup_stm32f303re.s)
