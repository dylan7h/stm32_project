cmake_minimum_required(VERSION 3.15)

project(
    # Project Name
    TestApp
    # Description
    DESCRIPTION     "stm32f303re Test Application"
    # URL
    HOMEPAGE_URL    "https://github.com/dylan7h"
    # Language
    LANGUAGES       ASM C
)
    
include(${PROJECT_SOURCE_DIR}/Include/rule.cmake)
include(${PROJECT_SOURCE_DIR}/Source/rule.cmake)

build_executable()
