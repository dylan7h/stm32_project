string(TIMESTAMP TODAY %Y%m%d)

macro(extract_hex)
    # Extract HEX File from Execuable
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}
        COMMAND ${CMAKE_FROMELF} --vhx --64x1 --output ${PROJECT_NAME}_${TODAY}.hex ${PROJECT_NAME}.axf
    )
endmacro()

macro(extract_asm)
    # Extract Assemble File from Execuable
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}
        COMMAND ${CMAKE_FROMELF} --text -c --output ${PROJECT_NAME}_${TODAY}.asm ${PROJECT_NAME}.axf
    )
endmacro()

macro(extract_bin)
    # Extract Binary File from Execuable
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}
        COMMAND ${CMAKE_FROMELF} --bin --output ${PROJECT_NAME}_${TODAY}.bin ${PROJECT_NAME}.axf
    )
endmacro()
