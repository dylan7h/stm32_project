########################################## [ARM Core & Architecture Matching Table ] ############################################################
# Arm Core	        | Cortex M0	| Cortex M0+ | Cortex M1 | Cortex M3 | Cortex M4 | Cortex M7 | Cortex M23 | Cortex M33 | Cortex M35P | Cortex M55
# ARM architecture	| ARMv6-M	| ARMv6-M	 | ARMv6-M	 | ARMv7-M   | ARMv7E-M	 | ARMv7E-M	 | ARMv8-M    | ARMv8-M	   | ARMv8-M	 | Armv8.1-M
#################################################################################################################################################

# ======================================
# [            Target ABI              ]
# ======================================
# 32bit: arm        | 64bit: aarch64
set(TARGET_ABI              arm)

# ======================================
# [             Core Name              ]
# ======================================
# To See >> armclang --target=<Target ABI>-arm-none-eabi -mcpu=list
set(ARM_C_CORE              cortex-m4)
# To See >> armasm --cpu=list
set(ARM_ASM_CORE            Cortex-M4.fp.sp)

# ======================================
# [             Core Arch              ]
# ======================================
# To See >> armclang --target=arm-arm-none-eabi -march=list
set(ARM_ARCH                armv7e-m)

# ======================================
# [                FPU                 ]
# ======================================
# To See >> armclang --target=arm-arm-none-eabi -mfpu=list
set(FPU                     fpv4-sp-d16)

# ======================================
# [           FLOATING ABI             ]
# ======================================
# -mfloat-abi=[ soft | softfp | hard ]
# To See More Information
# http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1417451577871.html
set(FLOAT_ABI               hard)

# Instruction Set([-m${ARM_INSTRUCTION_SET}], arm | thumb)
# -marm:    http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546380826.html
# -mthumb:  http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546391098.html
set(ARM_INSTRUCTION_SET                thumb)

# ======================================
# [            ASM Option              ]
# ======================================
list(APPEND AFLAGS )

# ======================================
# [             C Option               ]
# ======================================

# --------------------- < Required options > --------------------- 
# C     Standard Version(ex. c89 | c99 | c11)
# C++   Standard Version(ex. c++11 | c++14 | c++17)
set(STD_C_CXX   c99)

# --------------------- < Optional options > ---------------------
set(CFLAGS

)

# ======================================
# [          Linker Option             ]
# ======================================

# --------------------- < Required options > --------------------- 
# --info=$(TOPIC) : Prints information about specific topics.
# To See More Information 
# http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0803i/lhk1509547142478.html
list(APPEND TOPIC sizes,totals,unused,veneers)

# Default: standardlib | microlib
# To See More Information 
# http://infocenter.arm.com/help/topic/com.arm.doc.dui0803g/pge1362075508314.html
list(APPEND ARM_LIB_TYPE standardlib)

# --------------------- < Optional options > ---------------------
set(LDFLAGS )
