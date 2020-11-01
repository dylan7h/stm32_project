macro(build_executable)
    add_executable(${PROJECT_NAME} ${STARTUP} ${SOURCE_FILE})

    set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME})
    set_target_properties(${PROJECT_NAME} PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME})

    # =====================================================
    # Compile Definitions
    # =====================================================
    target_compile_definitions(${PROJECT_NAME} PRIVATE 
        $<$<COMPILE_LANGUAGE:C>:${DEFINES}>
        $<$<COMPILE_LANGUAGE:CXX>:${DEFINES}>
    )

    # =====================================================
    # Compile Options
    # =====================================================    
    target_compile_options(${PROJECT_NAME} PRIVATE 
        $<$<COMPILE_LANGUAGE:ASM>:
            --cpu=${ARM_ASM_CORE}
            ${AFLAGS}
        >
        $<$<COMPILE_LANGUAGE:C>:
            -march=${ARM_ARCH}
            -m${ARM_INSTRUCTION_SET}
            -mfpu=${FPU}
            -mfloat-abi=${FLOAT_ABI}
            -std=${STD_C_CXX}
            -fno-function-sections
            -fno-data-sections
            ${CFLAGS}
        >
        $<$<COMPILE_LANGUAGE:CXX>:
            -march=${ARM_ARCH}
            -m${ARM_INSTRUCTION_SET}
            -mfpu=${FPU}
            -mfloat-abi=${FLOAT_ABI}
            -std=${STD_C_CXX}
            -fno-function-sections
            -fno-data-sections
            ${CFLAGS}
        >
    )

    # =====================================================
    # Compile Include Path
    # =====================================================
    target_include_directories(${PROJECT_NAME} PRIVATE 
        $<$<COMPILE_LANGUAGE:C>:${COMMON_INCLUDE_PATH} ${INCLUDE_PATH}>
        $<$<COMPILE_LANGUAGE:CXX>:${COMMON_INCLUDE_PATH} ${INCLUDE_PATH}>
    )

    # =====================================================
    # Link Library Path
    # =====================================================
    target_link_directories(${PROJECT_NAME} PRIVATE ${LIBRARY_PATH})

    # =====================================================
    # Link Library
    # =====================================================
    target_link_libraries(${PROJECT_NAME} PRIVATE ${LINK_LIBRARY_FILE})

    # =====================================================
    # Link Option
    # =====================================================
    target_link_options(${PROJECT_NAME} PRIVATE
        --entry=Reset_Handler
        --scatter=${SCATTER}
        --diag_style=ide
        --verbose
        --symbols
        --remove
        --callgraph
        --summary_stderr
        --load_addr_map_info
        --map
        --info=${TOPIC}
        --library_type=${ARM_LIB_TYPE}
        ${LDFLAGS}
    )
endmacro()

macro(build_library)
    add_library(${PROJECT_NAME} ${SRC})

    set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME})
    set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME})
    set_target_properties(${PROJECT_NAME} PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${CMAKE_HOME_DIRECTORY}/../Bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME})

endmacro()
