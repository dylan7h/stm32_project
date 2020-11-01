########################################## [ARM Core & Architecture Matching Table ] ############################################################
# Arm Core	        | Cortex M0	| Cortex M0+ | Cortex M1 | Cortex M3 | Cortex M4 | Cortex M7 | Cortex M23 | Cortex M33 | Cortex M35P | Cortex M55
# ARM architecture	| ARMv6-M	| ARMv6-M	 | ARMv6-M	 | ARMv7-M   | ARMv7E-M	 | ARMv7E-M	 | ARMv8-M    | ARMv8-M	   | ARMv8-M	 | Armv8.1-M
#################################################################################################################################################

# ======================================
# [            Target ABI              ]
# ======================================
# 32bit: arm-none-eabi   | 64bit: aarch64-arm-none-eabi
list(APPEND TARGET_ABI              arm-none-eabi)


# ======================================
# [             Core Name              ]
# ======================================
# To See >> armclang --target=<Target ABI>-arm-none-eabi -mcpu=list
# To See >> armasm --cpu=list
list(APPEND ARM_C_CORE              cortex-m4)
list(APPEND ARM_ASM_CORE            Cortex-M4.fp.sp)


# ======================================
# [             Core Arch              ]
# ======================================
# To See >> armclang --target=arm-arm-none-eabi -march=list
list(APPEND ARM_ARCH                armv7e-m)


# ======================================
# [                FPU                 ]
# ======================================
# To See >> armclang --target=arm-arm-none-eabi -mfpu=list
list(APPEND ARM_FPU                 fpv4-sp-d16)


# ======================================
# [           FLOATING ABI             ]
# ======================================
# -mfloat-abi=[ soft | softfp | hard ]
# To See More Information
# http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1417451577871.html
list(APPEND ARM_FLOAT_ABI           hard)


# ======================================
# [         Instruction Set            ]
# ======================================
# Instruction Set([-m${ARM_INSTRUCTION_SET}], arm | thumb)
# -marm:    http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546380826.html
# -mthumb:  http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546391098.html
list(APPEND ARM_INSTRUCTION_SET     thumb)


# ======================================
# [        Standard Version            ]
# ======================================
# C     Standard Version(ex. c89 | c99 | c11)
# C++   Standard Version(ex. c++11 | c++14 | c++17)
list(APPEND STD_C_CXX               c99)


# ======================================
# [     Diagnostic Message Style       ]
# ======================================
# Default: arm
# ex) arm | gnu | ide
# To See More Information 
# https://developer.arm.com/documentation/dui0491/h/Compiler-Command-line-Options/--diag-style--arm-ide-gnu-
list(APPEND DIAG_STYLE              gnu)


# ======================================
# [        Linker Information          ]
# ======================================
# --info=$(TOPIC) : Prints information about specific topics.
# To See More Information 
# http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0803i/lhk1509547142478.html
list(APPEND TOPIC                   sizes,totals)


# ======================================
# [    ARM Standard Library Type       ]
# ======================================
# Default: standardlib | microlib
# To See More Information 
# http://infocenter.arm.com/help/topic/com.arm.doc.dui0803g/pge1362075508314.html
list(APPEND ARM_LIB_TYPE            microlib)


# ======================================
# [            ASM Option              ]
# ======================================
list(APPEND AFLAGS --brief_diagnostics)
list(APPEND AFLAGS --pd)
list(APPEND AFLAGS "__MICROLIB SETA 1")
list(APPEND AFLAGS --debug)
list(APPEND AFLAGS --keep)


# ======================================
# [             C Option               ]
# ======================================
list(APPEND CFLAGS -D__MICROLIB=1)


# ======================================
# [          Linker Option             ]
# ======================================
list(APPEND LDFLAGS )
