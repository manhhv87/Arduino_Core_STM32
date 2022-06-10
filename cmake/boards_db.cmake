# AFROFLIGHT_F103CB
# -----------------------------------------------------------------------------

set(AFROFLIGHT_F103CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(AFROFLIGHT_F103CB_MAXSIZE 131072)
set(AFROFLIGHT_F103CB_MAXDATASIZE 20480)
set(AFROFLIGHT_F103CB_MCU cortex-m3)
add_library(AFROFLIGHT_F103CB INTERFACE)
target_compile_options(AFROFLIGHT_F103CB INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${AFROFLIGHT_F103CB_MCU}
)
target_compile_definitions(AFROFLIGHT_F103CB INTERFACE
  "STM32F1xx"
	"ARDUINO_AFROFLIGHT_F103CB"
	"BOARD_NAME=\"AFROFLIGHT_F103CB\""
	"BOARD_ID=AFROFLIGHT_F103CB"
	"VARIANT_H=\"variant_AFROFLIGHT_F103CB_XX.h\""
)
target_include_directories(AFROFLIGHT_F103CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${AFROFLIGHT_F103CB_VARIANT_PATH}
)

target_link_options(AFROFLIGHT_F103CB INTERFACE
  "LINKER:--default-script=${AFROFLIGHT_F103CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${AFROFLIGHT_F103CB_MCU}
)
target_link_libraries(AFROFLIGHT_F103CB INTERFACE
  arm_cortexM3l_math
)

# AFROFLIGHT_F103CB_12M
# -----------------------------------------------------------------------------

set(AFROFLIGHT_F103CB_12M_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(AFROFLIGHT_F103CB_12M_MAXSIZE 131072)
set(AFROFLIGHT_F103CB_12M_MAXDATASIZE 20480)
set(AFROFLIGHT_F103CB_12M_MCU cortex-m3)
add_library(AFROFLIGHT_F103CB_12M INTERFACE)
target_compile_options(AFROFLIGHT_F103CB_12M INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${AFROFLIGHT_F103CB_12M_MCU}
)
target_compile_definitions(AFROFLIGHT_F103CB_12M INTERFACE
  "STM32F1xx"
	"ARDUINO_AFROFLIGHT_F103CB_12M"
	"BOARD_NAME=\"AFROFLIGHT_F103CB_12M\""
	"BOARD_ID=AFROFLIGHT_F103CB_12M"
	"VARIANT_H=\"variant_AFROFLIGHT_F103CB_XX.h\""
)
target_include_directories(AFROFLIGHT_F103CB_12M INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${AFROFLIGHT_F103CB_12M_VARIANT_PATH}
)

target_link_options(AFROFLIGHT_F103CB_12M INTERFACE
  "LINKER:--default-script=${AFROFLIGHT_F103CB_12M_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${AFROFLIGHT_F103CB_12M_MCU}
)
target_link_libraries(AFROFLIGHT_F103CB_12M INTERFACE
  arm_cortexM3l_math
)

# ARMED_V1
# -----------------------------------------------------------------------------

set(ARMED_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(ARMED_V1_MAXSIZE 524288)
set(ARMED_V1_MAXDATASIZE 131072)
set(ARMED_V1_MCU cortex-m4)
add_library(ARMED_V1 INTERFACE)
target_compile_options(ARMED_V1 INTERFACE
  "SHELL:-DSTM32F407xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${ARMED_V1_MCU}
)
target_compile_definitions(ARMED_V1 INTERFACE
  "STM32F4xx"
	"ARDUINO_ARMED_V1"
	"BOARD_NAME=\"ARMED_V1\""
	"BOARD_ID=ARMED_V1"
	"VARIANT_H=\"variant_ARMED_V1.h\""
)
target_include_directories(ARMED_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${ARMED_V1_VARIANT_PATH}
)

target_link_options(ARMED_V1 INTERFACE
  "LINKER:--default-script=${ARMED_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${ARMED_V1_MCU}
)
target_link_libraries(ARMED_V1 INTERFACE
  arm_cortexM4lf_math
)

# AURORA_ONE
# -----------------------------------------------------------------------------

set(AURORA_ONE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030K(6-8)T")
set(AURORA_ONE_MAXSIZE 65536)
set(AURORA_ONE_MAXDATASIZE 8192)
set(AURORA_ONE_MCU cortex-m0plus)
add_library(AURORA_ONE INTERFACE)
target_compile_options(AURORA_ONE INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${AURORA_ONE_MCU}
)
target_compile_definitions(AURORA_ONE INTERFACE
  "STM32G0xx"
	"ARDUINO_AURORA_ONE"
	"BOARD_NAME=\"AURORA_ONE\""
	"BOARD_ID=AURORA_ONE"
	"VARIANT_H=\"variant_AURORA_ONE.h\""
)
target_include_directories(AURORA_ONE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${AURORA_ONE_VARIANT_PATH}
)

target_link_options(AURORA_ONE INTERFACE
  "LINKER:--default-script=${AURORA_ONE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${AURORA_ONE_MCU}
)
target_link_libraries(AURORA_ONE INTERFACE
  arm_cortexM0l_math
)

# B_G431B_ESC1
# -----------------------------------------------------------------------------

set(B_G431B_ESC1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431C(6-8-B)U_G441CBU")
set(B_G431B_ESC1_MAXSIZE 131072)
set(B_G431B_ESC1_MAXDATASIZE 32768)
set(B_G431B_ESC1_MCU cortex-m4)
add_library(B_G431B_ESC1 INTERFACE)
target_compile_options(B_G431B_ESC1 INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${B_G431B_ESC1_MCU}
)
target_compile_definitions(B_G431B_ESC1 INTERFACE
  "STM32G4xx"
	"ARDUINO_B_G431B_ESC1"
	"BOARD_NAME=\"B_G431B_ESC1\""
	"BOARD_ID=B_G431B_ESC1"
	"VARIANT_H=\"variant_B_G431B_ESC1.h\""
)
target_include_directories(B_G431B_ESC1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${B_G431B_ESC1_VARIANT_PATH}
)

target_link_options(B_G431B_ESC1 INTERFACE
  "LINKER:--default-script=${B_G431B_ESC1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${B_G431B_ESC1_MCU}
)
target_link_libraries(B_G431B_ESC1 INTERFACE
  arm_cortexM4lf_math
)

# B_L072Z_LRWAN1
# -----------------------------------------------------------------------------

set(B_L072Z_LRWAN1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(B_L072Z_LRWAN1_MAXSIZE 196608)
set(B_L072Z_LRWAN1_MAXDATASIZE 20480)
set(B_L072Z_LRWAN1_MCU cortex-m0plus)
add_library(B_L072Z_LRWAN1 INTERFACE)
target_compile_options(B_L072Z_LRWAN1 INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${B_L072Z_LRWAN1_MCU}
)
target_compile_definitions(B_L072Z_LRWAN1 INTERFACE
  "STM32L0xx"
	"ARDUINO_B_L072Z_LRWAN1"
	"BOARD_NAME=\"B_L072Z_LRWAN1\""
	"BOARD_ID=B_L072Z_LRWAN1"
	"VARIANT_H=\"variant_B_L072Z_LRWAN1.h\""
)
target_include_directories(B_L072Z_LRWAN1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${B_L072Z_LRWAN1_VARIANT_PATH}
)

target_link_options(B_L072Z_LRWAN1 INTERFACE
  "LINKER:--default-script=${B_L072Z_LRWAN1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${B_L072Z_LRWAN1_MCU}
)
target_link_libraries(B_L072Z_LRWAN1 INTERFACE
  arm_cortexM0l_math
)

# B_L475E_IOT01A
# -----------------------------------------------------------------------------

set(B_L475E_IOT01A_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(B_L475E_IOT01A_MAXSIZE 1048576)
set(B_L475E_IOT01A_MAXDATASIZE 98304)
set(B_L475E_IOT01A_MCU cortex-m4)
add_library(B_L475E_IOT01A INTERFACE)
target_compile_options(B_L475E_IOT01A INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${B_L475E_IOT01A_MCU}
)
target_compile_definitions(B_L475E_IOT01A INTERFACE
  "STM32L4xx"
	"ARDUINO_B_L475E_IOT01A"
	"BOARD_NAME=\"B_L475E_IOT01A\""
	"BOARD_ID=B_L475E_IOT01A"
	"VARIANT_H=\"variant_B_L475E_IOT01A.h\""
)
target_include_directories(B_L475E_IOT01A INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${B_L475E_IOT01A_VARIANT_PATH}
)

target_link_options(B_L475E_IOT01A INTERFACE
  "LINKER:--default-script=${B_L475E_IOT01A_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${B_L475E_IOT01A_MCU}
)
target_link_libraries(B_L475E_IOT01A INTERFACE
  arm_cortexM4lf_math
)

# B_L4S5I_IOT01A
# -----------------------------------------------------------------------------

set(B_L4S5I_IOT01A_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(B_L4S5I_IOT01A_MAXSIZE 2097152)
set(B_L4S5I_IOT01A_MAXDATASIZE 655360)
set(B_L4S5I_IOT01A_MCU cortex-m4)
add_library(B_L4S5I_IOT01A INTERFACE)
target_compile_options(B_L4S5I_IOT01A INTERFACE
  "SHELL:-DSTM32L4S5xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${B_L4S5I_IOT01A_MCU}
)
target_compile_definitions(B_L4S5I_IOT01A INTERFACE
  "STM32L4xx"
	"ARDUINO_B_L4S5I_IOT01A"
	"BOARD_NAME=\"B_L4S5I_IOT01A\""
	"BOARD_ID=B_L4S5I_IOT01A"
	"VARIANT_H=\"variant_B_L4S5I_IOT01A.h\""
)
target_include_directories(B_L4S5I_IOT01A INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${B_L4S5I_IOT01A_VARIANT_PATH}
)

target_link_options(B_L4S5I_IOT01A INTERFACE
  "LINKER:--default-script=${B_L4S5I_IOT01A_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${B_L4S5I_IOT01A_MCU}
)
target_link_libraries(B_L4S5I_IOT01A INTERFACE
  arm_cortexM4lf_math
)

# B_U585I_IOT02A
# -----------------------------------------------------------------------------

set(B_U585I_IOT02A_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ")
set(B_U585I_IOT02A_MAXSIZE 2097152)
set(B_U585I_IOT02A_MAXDATASIZE 262144)
set(B_U585I_IOT02A_MCU cortex-m33)
add_library(B_U585I_IOT02A INTERFACE)
target_compile_options(B_U585I_IOT02A INTERFACE
  "SHELL:-DSTM32U585xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${B_U585I_IOT02A_MCU}
)
target_compile_definitions(B_U585I_IOT02A INTERFACE
  "STM32U5xx"
	"ARDUINO_B_U585I_IOT02A"
	"BOARD_NAME=\"B_U585I_IOT02A\""
	"BOARD_ID=B_U585I_IOT02A"
	"VARIANT_H=\"variant_B_U585I_IOT02A.h\""
)
target_include_directories(B_U585I_IOT02A INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${B_U585I_IOT02A_VARIANT_PATH}
)

target_link_options(B_U585I_IOT02A INTERFACE
  "LINKER:--default-script=${B_U585I_IOT02A_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${B_U585I_IOT02A_MCU}
)
target_link_libraries(B_U585I_IOT02A INTERFACE
  arm_ARMv8MMLlfsp_math
)

# BLACK_F407VE
# -----------------------------------------------------------------------------

set(BLACK_F407VE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(BLACK_F407VE_MAXSIZE 524288)
set(BLACK_F407VE_MAXDATASIZE 131072)
set(BLACK_F407VE_MCU cortex-m4)
add_library(BLACK_F407VE INTERFACE)
target_compile_options(BLACK_F407VE INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACK_F407VE_MCU}
)
target_compile_definitions(BLACK_F407VE INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACK_F407VE"
	"BOARD_NAME=\"BLACK_F407VE\""
	"BOARD_ID=BLACK_F407VE"
	"VARIANT_H=\"variant_BLACK_F407VX.h\""
)
target_include_directories(BLACK_F407VE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACK_F407VE_VARIANT_PATH}
)

target_link_options(BLACK_F407VE INTERFACE
  "LINKER:--default-script=${BLACK_F407VE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACK_F407VE_MCU}
)
target_link_libraries(BLACK_F407VE INTERFACE
  arm_cortexM4lf_math
)

# BLACK_F407VG
# -----------------------------------------------------------------------------

set(BLACK_F407VG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(BLACK_F407VG_MAXSIZE 1048576)
set(BLACK_F407VG_MAXDATASIZE 131072)
set(BLACK_F407VG_MCU cortex-m4)
add_library(BLACK_F407VG INTERFACE)
target_compile_options(BLACK_F407VG INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACK_F407VG_MCU}
)
target_compile_definitions(BLACK_F407VG INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACK_F407VG"
	"BOARD_NAME=\"BLACK_F407VG\""
	"BOARD_ID=BLACK_F407VG"
	"VARIANT_H=\"variant_BLACK_F407VX.h\""
)
target_include_directories(BLACK_F407VG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACK_F407VG_VARIANT_PATH}
)

target_link_options(BLACK_F407VG INTERFACE
  "LINKER:--default-script=${BLACK_F407VG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACK_F407VG_MCU}
)
target_link_libraries(BLACK_F407VG INTERFACE
  arm_cortexM4lf_math
)

# BLACK_F407ZE
# -----------------------------------------------------------------------------

set(BLACK_F407ZE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(BLACK_F407ZE_MAXSIZE 524288)
set(BLACK_F407ZE_MAXDATASIZE 131072)
set(BLACK_F407ZE_MCU cortex-m4)
add_library(BLACK_F407ZE INTERFACE)
target_compile_options(BLACK_F407ZE INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACK_F407ZE_MCU}
)
target_compile_definitions(BLACK_F407ZE INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACK_F407ZE"
	"BOARD_NAME=\"BLACK_F407ZE\""
	"BOARD_ID=BLACK_F407ZE"
	"VARIANT_H=\"variant_BLACK_F407ZX.h\""
)
target_include_directories(BLACK_F407ZE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACK_F407ZE_VARIANT_PATH}
)

target_link_options(BLACK_F407ZE INTERFACE
  "LINKER:--default-script=${BLACK_F407ZE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACK_F407ZE_MCU}
)
target_link_libraries(BLACK_F407ZE INTERFACE
  arm_cortexM4lf_math
)

# BLACK_F407ZG
# -----------------------------------------------------------------------------

set(BLACK_F407ZG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(BLACK_F407ZG_MAXSIZE 1048576)
set(BLACK_F407ZG_MAXDATASIZE 131072)
set(BLACK_F407ZG_MCU cortex-m4)
add_library(BLACK_F407ZG INTERFACE)
target_compile_options(BLACK_F407ZG INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACK_F407ZG_MCU}
)
target_compile_definitions(BLACK_F407ZG INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACK_F407ZG"
	"BOARD_NAME=\"BLACK_F407ZG\""
	"BOARD_ID=BLACK_F407ZG"
	"VARIANT_H=\"variant_BLACK_F407ZX.h\""
)
target_include_directories(BLACK_F407ZG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACK_F407ZG_VARIANT_PATH}
)

target_link_options(BLACK_F407ZG INTERFACE
  "LINKER:--default-script=${BLACK_F407ZG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACK_F407ZG_MCU}
)
target_link_libraries(BLACK_F407ZG INTERFACE
  arm_cortexM4lf_math
)

# BLACKPILL_F103C8
# -----------------------------------------------------------------------------

set(BLACKPILL_F103C8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(BLACKPILL_F103C8_MAXSIZE 65536)
set(BLACKPILL_F103C8_MAXDATASIZE 20480)
set(BLACKPILL_F103C8_MCU cortex-m3)
add_library(BLACKPILL_F103C8 INTERFACE)
target_compile_options(BLACKPILL_F103C8 INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLACKPILL_F103C8_MCU}
)
target_compile_definitions(BLACKPILL_F103C8 INTERFACE
  "STM32F1xx"
	"ARDUINO_BLACKPILL_F103C8"
	"BOARD_NAME=\"BLACKPILL_F103C8\""
	"BOARD_ID=BLACKPILL_F103C8"
	"VARIANT_H=\"variant_PILL_F103Cx.h\""
)
target_include_directories(BLACKPILL_F103C8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLACKPILL_F103C8_VARIANT_PATH}
)

target_link_options(BLACKPILL_F103C8 INTERFACE
  "LINKER:--default-script=${BLACKPILL_F103C8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLACKPILL_F103C8_MCU}
)
target_link_libraries(BLACKPILL_F103C8 INTERFACE
  arm_cortexM3l_math
)

# BLACKPILL_F103CB
# -----------------------------------------------------------------------------

set(BLACKPILL_F103CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(BLACKPILL_F103CB_MAXSIZE 131072)
set(BLACKPILL_F103CB_MAXDATASIZE 20480)
set(BLACKPILL_F103CB_MCU cortex-m3)
add_library(BLACKPILL_F103CB INTERFACE)
target_compile_options(BLACKPILL_F103CB INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLACKPILL_F103CB_MCU}
)
target_compile_definitions(BLACKPILL_F103CB INTERFACE
  "STM32F1xx"
	"ARDUINO_BLACKPILL_F103CB"
	"BOARD_NAME=\"BLACKPILL_F103CB\""
	"BOARD_ID=BLACKPILL_F103CB"
	"VARIANT_H=\"variant_PILL_F103Cx.h\""
)
target_include_directories(BLACKPILL_F103CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLACKPILL_F103CB_VARIANT_PATH}
)

target_link_options(BLACKPILL_F103CB INTERFACE
  "LINKER:--default-script=${BLACKPILL_F103CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLACKPILL_F103CB_MCU}
)
target_link_libraries(BLACKPILL_F103CB INTERFACE
  arm_cortexM3l_math
)

# BLACKPILL_F303CC
# -----------------------------------------------------------------------------

set(BLACKPILL_F303CC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303C(B-C)T")
set(BLACKPILL_F303CC_MAXSIZE 262144)
set(BLACKPILL_F303CC_MAXDATASIZE 40960)
set(BLACKPILL_F303CC_MCU cortex-m4)
add_library(BLACKPILL_F303CC INTERFACE)
target_compile_options(BLACKPILL_F303CC INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACKPILL_F303CC_MCU}
)
target_compile_definitions(BLACKPILL_F303CC INTERFACE
  "STM32F3xx"
	"ARDUINO_BLACKPILL_F303CC"
	"BOARD_NAME=\"BLACKPILL_F303CC\""
	"BOARD_ID=BLACKPILL_F303CC"
	"VARIANT_H=\"variant_BLACKPILL_F303CC.h\""
)
target_include_directories(BLACKPILL_F303CC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${BLACKPILL_F303CC_VARIANT_PATH}
)

target_link_options(BLACKPILL_F303CC INTERFACE
  "LINKER:--default-script=${BLACKPILL_F303CC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACKPILL_F303CC_MCU}
)
target_link_libraries(BLACKPILL_F303CC INTERFACE
  arm_cortexM4lf_math
)

# BLACKPILL_F401CC
# -----------------------------------------------------------------------------

set(BLACKPILL_F401CC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(BLACKPILL_F401CC_MAXSIZE 262144)
set(BLACKPILL_F401CC_MAXDATASIZE 65536)
set(BLACKPILL_F401CC_MCU cortex-m4)
add_library(BLACKPILL_F401CC INTERFACE)
target_compile_options(BLACKPILL_F401CC INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACKPILL_F401CC_MCU}
)
target_compile_definitions(BLACKPILL_F401CC INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACKPILL_F401CC"
	"BOARD_NAME=\"BLACKPILL_F401CC\""
	"BOARD_ID=BLACKPILL_F401CC"
	"VARIANT_H=\"variant_BLACKPILL_F401CC.h\""
)
target_include_directories(BLACKPILL_F401CC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACKPILL_F401CC_VARIANT_PATH}
)

target_link_options(BLACKPILL_F401CC INTERFACE
  "LINKER:--default-script=${BLACKPILL_F401CC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACKPILL_F401CC_MCU}
)
target_link_libraries(BLACKPILL_F401CC INTERFACE
  arm_cortexM4lf_math
)

# BLACKPILL_F411CE
# -----------------------------------------------------------------------------

set(BLACKPILL_F411CE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(BLACKPILL_F411CE_MAXSIZE 524288)
set(BLACKPILL_F411CE_MAXDATASIZE 131072)
set(BLACKPILL_F411CE_MCU cortex-m4)
add_library(BLACKPILL_F411CE INTERFACE)
target_compile_options(BLACKPILL_F411CE INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLACKPILL_F411CE_MCU}
)
target_compile_definitions(BLACKPILL_F411CE INTERFACE
  "STM32F4xx"
	"ARDUINO_BLACKPILL_F411CE"
	"BOARD_NAME=\"BLACKPILL_F411CE\""
	"BOARD_ID=BLACKPILL_F411CE"
	"VARIANT_H=\"variant_BLACKPILL_F411CE.h\""
)
target_include_directories(BLACKPILL_F411CE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLACKPILL_F411CE_VARIANT_PATH}
)

target_link_options(BLACKPILL_F411CE INTERFACE
  "LINKER:--default-script=${BLACKPILL_F411CE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLACKPILL_F411CE_MCU}
)
target_link_libraries(BLACKPILL_F411CE INTERFACE
  arm_cortexM4lf_math
)

# BLUE_F407VE_MINI
# -----------------------------------------------------------------------------

set(BLUE_F407VE_MINI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(BLUE_F407VE_MINI_MAXSIZE 524288)
set(BLUE_F407VE_MINI_MAXDATASIZE 131072)
set(BLUE_F407VE_MINI_MCU cortex-m4)
add_library(BLUE_F407VE_MINI INTERFACE)
target_compile_options(BLUE_F407VE_MINI INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${BLUE_F407VE_MINI_MCU}
)
target_compile_definitions(BLUE_F407VE_MINI INTERFACE
  "STM32F4xx"
	"ARDUINO_BLUE_F407VE_MINI"
	"BOARD_NAME=\"BLUE_F407VE_MINI\""
	"BOARD_ID=BLUE_F407VE_MINI"
	"VARIANT_H=\"variant_BLUE_F407VE_MINI.h\""
)
target_include_directories(BLUE_F407VE_MINI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${BLUE_F407VE_MINI_VARIANT_PATH}
)

target_link_options(BLUE_F407VE_MINI INTERFACE
  "LINKER:--default-script=${BLUE_F407VE_MINI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${BLUE_F407VE_MINI_MCU}
)
target_link_libraries(BLUE_F407VE_MINI INTERFACE
  arm_cortexM4lf_math
)

# BLUEBUTTON_F103R8T
# -----------------------------------------------------------------------------

set(BLUEBUTTON_F103R8T_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)T")
set(BLUEBUTTON_F103R8T_MAXSIZE 65536)
set(BLUEBUTTON_F103R8T_MAXDATASIZE 20480)
set(BLUEBUTTON_F103R8T_MCU cortex-m3)
add_library(BLUEBUTTON_F103R8T INTERFACE)
target_compile_options(BLUEBUTTON_F103R8T INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103R8T_MCU}
)
target_compile_definitions(BLUEBUTTON_F103R8T INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEBUTTON_F103R8T"
	"BOARD_NAME=\"BLUEBUTTON_F103R8T\""
	"BOARD_ID=BLUEBUTTON_F103R8T"
	"VARIANT_H=\"variant_BLUEBUTTON_F103R8T.h\""
)
target_include_directories(BLUEBUTTON_F103R8T INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEBUTTON_F103R8T_VARIANT_PATH}
)

target_link_options(BLUEBUTTON_F103R8T INTERFACE
  "LINKER:--default-script=${BLUEBUTTON_F103R8T_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103R8T_MCU}
)
target_link_libraries(BLUEBUTTON_F103R8T INTERFACE
  arm_cortexM3l_math
)

# BLUEBUTTON_F103RBT
# -----------------------------------------------------------------------------

set(BLUEBUTTON_F103RBT_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)T")
set(BLUEBUTTON_F103RBT_MAXSIZE 131072)
set(BLUEBUTTON_F103RBT_MAXDATASIZE 20480)
set(BLUEBUTTON_F103RBT_MCU cortex-m3)
add_library(BLUEBUTTON_F103RBT INTERFACE)
target_compile_options(BLUEBUTTON_F103RBT INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RBT_MCU}
)
target_compile_definitions(BLUEBUTTON_F103RBT INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEBUTTON_F103RBT"
	"BOARD_NAME=\"BLUEBUTTON_F103RBT\""
	"BOARD_ID=BLUEBUTTON_F103RBT"
	"VARIANT_H=\"variant_BLUEBUTTON_F103RBT.h\""
)
target_include_directories(BLUEBUTTON_F103RBT INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEBUTTON_F103RBT_VARIANT_PATH}
)

target_link_options(BLUEBUTTON_F103RBT INTERFACE
  "LINKER:--default-script=${BLUEBUTTON_F103RBT_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RBT_MCU}
)
target_link_libraries(BLUEBUTTON_F103RBT INTERFACE
  arm_cortexM3l_math
)

# BLUEBUTTON_F103RCT
# -----------------------------------------------------------------------------

set(BLUEBUTTON_F103RCT_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(BLUEBUTTON_F103RCT_MAXSIZE 262144)
set(BLUEBUTTON_F103RCT_MAXDATASIZE 49152)
set(BLUEBUTTON_F103RCT_MCU cortex-m3)
add_library(BLUEBUTTON_F103RCT INTERFACE)
target_compile_options(BLUEBUTTON_F103RCT INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RCT_MCU}
)
target_compile_definitions(BLUEBUTTON_F103RCT INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEBUTTON_F103RCT"
	"BOARD_NAME=\"BLUEBUTTON_F103RCT\""
	"BOARD_ID=BLUEBUTTON_F103RCT"
	"VARIANT_H=\"variant_BLUEBUTTON_F103RCT.h\""
)
target_include_directories(BLUEBUTTON_F103RCT INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEBUTTON_F103RCT_VARIANT_PATH}
)

target_link_options(BLUEBUTTON_F103RCT INTERFACE
  "LINKER:--default-script=${BLUEBUTTON_F103RCT_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RCT_MCU}
)
target_link_libraries(BLUEBUTTON_F103RCT INTERFACE
  arm_cortexM3l_math
)

# BLUEBUTTON_F103RET
# -----------------------------------------------------------------------------

set(BLUEBUTTON_F103RET_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(BLUEBUTTON_F103RET_MAXSIZE 524288)
set(BLUEBUTTON_F103RET_MAXDATASIZE 65536)
set(BLUEBUTTON_F103RET_MCU cortex-m3)
add_library(BLUEBUTTON_F103RET INTERFACE)
target_compile_options(BLUEBUTTON_F103RET INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RET_MCU}
)
target_compile_definitions(BLUEBUTTON_F103RET INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEBUTTON_F103RET"
	"BOARD_NAME=\"BLUEBUTTON_F103RET\""
	"BOARD_ID=BLUEBUTTON_F103RET"
	"VARIANT_H=\"variant_BLUEBUTTON_F103RET.h\""
)
target_include_directories(BLUEBUTTON_F103RET INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEBUTTON_F103RET_VARIANT_PATH}
)

target_link_options(BLUEBUTTON_F103RET INTERFACE
  "LINKER:--default-script=${BLUEBUTTON_F103RET_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${BLUEBUTTON_F103RET_MCU}
)
target_link_libraries(BLUEBUTTON_F103RET INTERFACE
  arm_cortexM3l_math
)

# BLUEPILL_F103C6
# -----------------------------------------------------------------------------

set(BLUEPILL_F103C6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C4T_F103C6(T-U)")
set(BLUEPILL_F103C6_MAXSIZE 32768)
set(BLUEPILL_F103C6_MAXDATASIZE 10240)
set(BLUEPILL_F103C6_MCU cortex-m3)
add_library(BLUEPILL_F103C6 INTERFACE)
target_compile_options(BLUEPILL_F103C6 INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEPILL_F103C6_MCU}
)
target_compile_definitions(BLUEPILL_F103C6 INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEPILL_F103C6"
	"BOARD_NAME=\"BLUEPILL_F103C6\""
	"BOARD_ID=BLUEPILL_F103C6"
	"VARIANT_H=\"variant_BLUEPILL_F103C6.h\""
)
target_include_directories(BLUEPILL_F103C6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEPILL_F103C6_VARIANT_PATH}
)

target_link_options(BLUEPILL_F103C6 INTERFACE
  "LINKER:--default-script=${BLUEPILL_F103C6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${BLUEPILL_F103C6_MCU}
)
target_link_libraries(BLUEPILL_F103C6 INTERFACE
  arm_cortexM3l_math
)

# BLUEPILL_F103C8
# -----------------------------------------------------------------------------

set(BLUEPILL_F103C8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(BLUEPILL_F103C8_MAXSIZE 65536)
set(BLUEPILL_F103C8_MAXDATASIZE 20480)
set(BLUEPILL_F103C8_MCU cortex-m3)
add_library(BLUEPILL_F103C8 INTERFACE)
target_compile_options(BLUEPILL_F103C8 INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEPILL_F103C8_MCU}
)
target_compile_definitions(BLUEPILL_F103C8 INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEPILL_F103C8"
	"BOARD_NAME=\"BLUEPILL_F103C8\""
	"BOARD_ID=BLUEPILL_F103C8"
	"VARIANT_H=\"variant_PILL_F103Cx.h\""
)
target_include_directories(BLUEPILL_F103C8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEPILL_F103C8_VARIANT_PATH}
)

target_link_options(BLUEPILL_F103C8 INTERFACE
  "LINKER:--default-script=${BLUEPILL_F103C8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLUEPILL_F103C8_MCU}
)
target_link_libraries(BLUEPILL_F103C8 INTERFACE
  arm_cortexM3l_math
)

# BLUEPILL_F103CB
# -----------------------------------------------------------------------------

set(BLUEPILL_F103CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(BLUEPILL_F103CB_MAXSIZE 131072)
set(BLUEPILL_F103CB_MAXDATASIZE 20480)
set(BLUEPILL_F103CB_MCU cortex-m3)
add_library(BLUEPILL_F103CB INTERFACE)
target_compile_options(BLUEPILL_F103CB INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${BLUEPILL_F103CB_MCU}
)
target_compile_definitions(BLUEPILL_F103CB INTERFACE
  "STM32F1xx"
	"ARDUINO_BLUEPILL_F103CB"
	"BOARD_NAME=\"BLUEPILL_F103CB\""
	"BOARD_ID=BLUEPILL_F103CB"
	"VARIANT_H=\"variant_PILL_F103Cx.h\""
)
target_include_directories(BLUEPILL_F103CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${BLUEPILL_F103CB_VARIANT_PATH}
)

target_link_options(BLUEPILL_F103CB INTERFACE
  "LINKER:--default-script=${BLUEPILL_F103CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${BLUEPILL_F103CB_MCU}
)
target_link_libraries(BLUEPILL_F103CB INTERFACE
  arm_cortexM3l_math
)

# CoreBoard_F401RC
# -----------------------------------------------------------------------------

set(CoreBoard_F401RC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(CoreBoard_F401RC_MAXSIZE 262144)
set(CoreBoard_F401RC_MAXDATASIZE 65536)
set(CoreBoard_F401RC_MCU cortex-m4)
add_library(CoreBoard_F401RC INTERFACE)
target_compile_options(CoreBoard_F401RC INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${CoreBoard_F401RC_MCU}
)
target_compile_definitions(CoreBoard_F401RC INTERFACE
  "STM32F4xx"
	"ARDUINO_CoreBoard_F401RC"
	"BOARD_NAME=\"CoreBoard_F401RC\""
	"BOARD_ID=CoreBoard_F401RC"
	"VARIANT_H=\"variant_CoreBoard_F401RC.h\""
)
target_include_directories(CoreBoard_F401RC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${CoreBoard_F401RC_VARIANT_PATH}
)

target_link_options(CoreBoard_F401RC INTERFACE
  "LINKER:--default-script=${CoreBoard_F401RC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${CoreBoard_F401RC_MCU}
)
target_link_libraries(CoreBoard_F401RC INTERFACE
  arm_cortexM4lf_math
)

# DAISY_PATCH_SM
# -----------------------------------------------------------------------------

set(DAISY_PATCH_SM_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(DAISY_PATCH_SM_MAXSIZE 131072)
set(DAISY_PATCH_SM_MAXDATASIZE 524288)
set(DAISY_PATCH_SM_MCU cortex-m7)
add_library(DAISY_PATCH_SM INTERFACE)
target_compile_options(DAISY_PATCH_SM INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DAISY_PATCH_SM_MCU}
)
target_compile_definitions(DAISY_PATCH_SM INTERFACE
  "STM32H7xx"
	"ARDUINO_DAISY_PATCH_SM"
	"BOARD_NAME=\"DAISY_PATCH_SM\""
	"BOARD_ID=DAISY_PATCH_SM"
	"VARIANT_H=\"variant_DAISY_PATCH_SM.h\""
)
target_include_directories(DAISY_PATCH_SM INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${DAISY_PATCH_SM_VARIANT_PATH}
)

target_link_options(DAISY_PATCH_SM INTERFACE
  "LINKER:--default-script=${DAISY_PATCH_SM_VARIANT_PATH}/DAISY_SEED.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DAISY_PATCH_SM_MCU}
)
target_link_libraries(DAISY_PATCH_SM INTERFACE
  arm_cortexM7lfsp_math
)

# DAISY_PETAL_SM
# -----------------------------------------------------------------------------

set(DAISY_PETAL_SM_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(DAISY_PETAL_SM_MAXSIZE 131072)
set(DAISY_PETAL_SM_MAXDATASIZE 524288)
set(DAISY_PETAL_SM_MCU cortex-m7)
add_library(DAISY_PETAL_SM INTERFACE)
target_compile_options(DAISY_PETAL_SM INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DAISY_PETAL_SM_MCU}
)
target_compile_definitions(DAISY_PETAL_SM INTERFACE
  "STM32H7xx"
	"ARDUINO_DAISY_PETAL_SM"
	"BOARD_NAME=\"DAISY_PETAL_SM\""
	"BOARD_ID=DAISY_PETAL_SM"
	"VARIANT_H=\"variant_DAISY_PETAL_SM.h\""
)
target_include_directories(DAISY_PETAL_SM INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${DAISY_PETAL_SM_VARIANT_PATH}
)

target_link_options(DAISY_PETAL_SM INTERFACE
  "LINKER:--default-script=${DAISY_PETAL_SM_VARIANT_PATH}/DAISY_SEED.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DAISY_PETAL_SM_MCU}
)
target_link_libraries(DAISY_PETAL_SM INTERFACE
  arm_cortexM7lfsp_math
)

# DAISY_SEED
# -----------------------------------------------------------------------------

set(DAISY_SEED_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(DAISY_SEED_MAXSIZE 131072)
set(DAISY_SEED_MAXDATASIZE 524288)
set(DAISY_SEED_MCU cortex-m7)
add_library(DAISY_SEED INTERFACE)
target_compile_options(DAISY_SEED INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DAISY_SEED_MCU}
)
target_compile_definitions(DAISY_SEED INTERFACE
  "STM32H7xx"
	"ARDUINO_DAISY_SEED"
	"BOARD_NAME=\"DAISY_SEED\""
	"BOARD_ID=DAISY_SEED"
	"VARIANT_H=\"variant_DAISY_SEED.h\""
)
target_include_directories(DAISY_SEED INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${DAISY_SEED_VARIANT_PATH}
)

target_link_options(DAISY_SEED INTERFACE
  "LINKER:--default-script=${DAISY_SEED_VARIANT_PATH}/DAISY_SEED.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DAISY_SEED_MCU}
)
target_link_libraries(DAISY_SEED INTERFACE
  arm_cortexM7lfsp_math
)

# DEMO_F030F4
# -----------------------------------------------------------------------------

set(DEMO_F030F4_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030F4P")
set(DEMO_F030F4_MAXSIZE 16384)
set(DEMO_F030F4_MAXDATASIZE 4096)
set(DEMO_F030F4_MCU cortex-m0)
add_library(DEMO_F030F4 INTERFACE)
target_compile_options(DEMO_F030F4 INTERFACE
  "SHELL:-DSTM32F030x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DEMO_F030F4_MCU}
)
target_compile_definitions(DEMO_F030F4 INTERFACE
  "STM32F0xx"
	"ARDUINO_DEMO_F030F4"
	"BOARD_NAME=\"DEMO_F030F4\""
	"BOARD_ID=DEMO_F030F4"
	"VARIANT_H=\"variant_DEMO_F030F4.h\""
)
target_include_directories(DEMO_F030F4 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${DEMO_F030F4_VARIANT_PATH}
)

target_link_options(DEMO_F030F4 INTERFACE
  "LINKER:--default-script=${DEMO_F030F4_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${DEMO_F030F4_MCU}
)
target_link_libraries(DEMO_F030F4 INTERFACE
  arm_cortexM0l_math
)

# DEMO_F030F4_16M
# -----------------------------------------------------------------------------

set(DEMO_F030F4_16M_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030F4P")
set(DEMO_F030F4_16M_MAXSIZE 16384)
set(DEMO_F030F4_16M_MAXDATASIZE 4096)
set(DEMO_F030F4_16M_MCU cortex-m0)
add_library(DEMO_F030F4_16M INTERFACE)
target_compile_options(DEMO_F030F4_16M INTERFACE
  "SHELL:-DSTM32F030x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DEMO_F030F4_16M_MCU}
)
target_compile_definitions(DEMO_F030F4_16M INTERFACE
  "STM32F0xx"
	"ARDUINO_DEMO_F030F4_16M"
	"BOARD_NAME=\"DEMO_F030F4_16M\""
	"BOARD_ID=DEMO_F030F4_16M"
	"VARIANT_H=\"variant_DEMO_F030F4.h\""
)
target_include_directories(DEMO_F030F4_16M INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${DEMO_F030F4_16M_VARIANT_PATH}
)

target_link_options(DEMO_F030F4_16M INTERFACE
  "LINKER:--default-script=${DEMO_F030F4_16M_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${DEMO_F030F4_16M_MCU}
)
target_link_libraries(DEMO_F030F4_16M INTERFACE
  arm_cortexM0l_math
)

# DEMO_F030F4_HSI
# -----------------------------------------------------------------------------

set(DEMO_F030F4_HSI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030F4P")
set(DEMO_F030F4_HSI_MAXSIZE 16384)
set(DEMO_F030F4_HSI_MAXDATASIZE 4096)
set(DEMO_F030F4_HSI_MCU cortex-m0)
add_library(DEMO_F030F4_HSI INTERFACE)
target_compile_options(DEMO_F030F4_HSI INTERFACE
  "SHELL:-DSTM32F030x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DEMO_F030F4_HSI_MCU}
)
target_compile_definitions(DEMO_F030F4_HSI INTERFACE
  "STM32F0xx"
	"ARDUINO_DEMO_F030F4_HSI"
	"BOARD_NAME=\"DEMO_F030F4_HSI\""
	"BOARD_ID=DEMO_F030F4_HSI"
	"VARIANT_H=\"variant_DEMO_F030F4.h\""
)
target_include_directories(DEMO_F030F4_HSI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${DEMO_F030F4_HSI_VARIANT_PATH}
)

target_link_options(DEMO_F030F4_HSI INTERFACE
  "LINKER:--default-script=${DEMO_F030F4_HSI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${DEMO_F030F4_HSI_MCU}
)
target_link_libraries(DEMO_F030F4_HSI INTERFACE
  arm_cortexM0l_math
)

# DevEBoxH743VITX
# -----------------------------------------------------------------------------

set(DevEBoxH743VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(DevEBoxH743VITX_MAXSIZE 2097152)
set(DevEBoxH743VITX_MAXDATASIZE 524288)
set(DevEBoxH743VITX_MCU cortex-m7)
add_library(DevEBoxH743VITX INTERFACE)
target_compile_options(DevEBoxH743VITX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DevEBoxH743VITX_MCU}
)
target_compile_definitions(DevEBoxH743VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_DevEBoxH743VITX"
	"BOARD_NAME=\"DevEBoxH743VITX\""
	"BOARD_ID=DevEBoxH743VITX"
	"VARIANT_H=\"variant_DevEBoxH7xx.h\""
)
target_include_directories(DevEBoxH743VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${DevEBoxH743VITX_VARIANT_PATH}
)

target_link_options(DevEBoxH743VITX INTERFACE
  "LINKER:--default-script=${DevEBoxH743VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DevEBoxH743VITX_MCU}
)
target_link_libraries(DevEBoxH743VITX INTERFACE
  arm_cortexM7lfsp_math
)

# DevEBoxH750VBTX
# -----------------------------------------------------------------------------

set(DevEBoxH750VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(DevEBoxH750VBTX_MAXSIZE 131072)
set(DevEBoxH750VBTX_MAXDATASIZE 524288)
set(DevEBoxH750VBTX_MCU cortex-m7)
add_library(DevEBoxH750VBTX INTERFACE)
target_compile_options(DevEBoxH750VBTX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DevEBoxH750VBTX_MCU}
)
target_compile_definitions(DevEBoxH750VBTX INTERFACE
  "STM32H7xx"
	"ARDUINO_DevEBoxH750VBTX"
	"BOARD_NAME=\"DevEBoxH750VBTX\""
	"BOARD_ID=DevEBoxH750VBTX"
	"VARIANT_H=\"variant_DevEBoxH7xx.h\""
)
target_include_directories(DevEBoxH750VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${DevEBoxH750VBTX_VARIANT_PATH}
)

target_link_options(DevEBoxH750VBTX INTERFACE
  "LINKER:--default-script=${DevEBoxH750VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DevEBoxH750VBTX_MCU}
)
target_link_libraries(DevEBoxH750VBTX INTERFACE
  arm_cortexM7lfsp_math
)

# DISCO_F030R8
# -----------------------------------------------------------------------------

set(DISCO_F030R8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030R8T")
set(DISCO_F030R8_MAXSIZE 65536)
set(DISCO_F030R8_MAXDATASIZE 8192)
set(DISCO_F030R8_MCU cortex-m0)
add_library(DISCO_F030R8 INTERFACE)
target_compile_options(DISCO_F030R8 INTERFACE
  "SHELL:-DSTM32F030x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DISCO_F030R8_MCU}
)
target_compile_definitions(DISCO_F030R8 INTERFACE
  "STM32F0xx"
	"ARDUINO_DISCO_F030R8"
	"BOARD_NAME=\"DISCO_F030R8\""
	"BOARD_ID=DISCO_F030R8"
	"VARIANT_H=\"variant_DISCO_F030R8.h\""
)
target_include_directories(DISCO_F030R8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${DISCO_F030R8_VARIANT_PATH}
)

target_link_options(DISCO_F030R8 INTERFACE
  "LINKER:--default-script=${DISCO_F030R8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${DISCO_F030R8_MCU}
)
target_link_libraries(DISCO_F030R8 INTERFACE
  arm_cortexM0l_math
)

# DISCO_F072RB
# -----------------------------------------------------------------------------

set(DISCO_F072RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(DISCO_F072RB_MAXSIZE 131072)
set(DISCO_F072RB_MAXDATASIZE 16384)
set(DISCO_F072RB_MCU cortex-m0)
add_library(DISCO_F072RB INTERFACE)
target_compile_options(DISCO_F072RB INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DISCO_F072RB_MCU}
)
target_compile_definitions(DISCO_F072RB INTERFACE
  "STM32F0xx"
	"ARDUINO_DISCO_F072RB"
	"BOARD_NAME=\"DISCO_F072RB\""
	"BOARD_ID=DISCO_F072RB"
	"VARIANT_H=\"variant_DISCO_F072RB.h\""
)
target_include_directories(DISCO_F072RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${DISCO_F072RB_VARIANT_PATH}
)

target_link_options(DISCO_F072RB INTERFACE
  "LINKER:--default-script=${DISCO_F072RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${DISCO_F072RB_MCU}
)
target_link_libraries(DISCO_F072RB INTERFACE
  arm_cortexM0l_math
)

# DISCO_F100RB
# -----------------------------------------------------------------------------

set(DISCO_F100RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100R(8-B)T")
set(DISCO_F100RB_MAXSIZE 131071)
set(DISCO_F100RB_MAXDATASIZE 8192)
set(DISCO_F100RB_MCU cortex-m3)
add_library(DISCO_F100RB INTERFACE)
target_compile_options(DISCO_F100RB INTERFACE
  "SHELL:-DSTM32F100xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DISCO_F100RB_MCU}
)
target_compile_definitions(DISCO_F100RB INTERFACE
  "STM32F1xx"
	"ARDUINO_DISCO_F100RB"
	"BOARD_NAME=\"DISCO_F100RB\""
	"BOARD_ID=DISCO_F100RB"
	"VARIANT_H=\"variant_DISCO_F100RB.h\""
)
target_include_directories(DISCO_F100RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${DISCO_F100RB_VARIANT_PATH}
)

target_link_options(DISCO_F100RB INTERFACE
  "LINKER:--default-script=${DISCO_F100RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131071"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${DISCO_F100RB_MCU}
)
target_link_libraries(DISCO_F100RB INTERFACE
  arm_cortexM3l_math
)

# DISCO_F303VC
# -----------------------------------------------------------------------------

set(DISCO_F303VC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303V(B-C)T")
set(DISCO_F303VC_MAXSIZE 262144)
set(DISCO_F303VC_MAXDATASIZE 40960)
set(DISCO_F303VC_MCU cortex-m4)
add_library(DISCO_F303VC INTERFACE)
target_compile_options(DISCO_F303VC INTERFACE
  "SHELL:-DSTM32F303xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DISCO_F303VC_MCU}
)
target_compile_definitions(DISCO_F303VC INTERFACE
  "STM32F3xx"
	"ARDUINO_DISCO_F303VC"
	"BOARD_NAME=\"DISCO_F303VC\""
	"BOARD_ID=DISCO_F303VC"
	"VARIANT_H=\"variant_DISCO_F303VC.h\""
)
target_include_directories(DISCO_F303VC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${DISCO_F303VC_VARIANT_PATH}
)

target_link_options(DISCO_F303VC INTERFACE
  "LINKER:--default-script=${DISCO_F303VC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DISCO_F303VC_MCU}
)
target_link_libraries(DISCO_F303VC INTERFACE
  arm_cortexM4lf_math
)

# DISCO_F407VG
# -----------------------------------------------------------------------------

set(DISCO_F407VG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(DISCO_F407VG_MAXSIZE 1048576)
set(DISCO_F407VG_MAXDATASIZE 131072)
set(DISCO_F407VG_MCU cortex-m4)
add_library(DISCO_F407VG INTERFACE)
target_compile_options(DISCO_F407VG INTERFACE
  "SHELL:-DSTM32F407xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DISCO_F407VG_MCU}
)
target_compile_definitions(DISCO_F407VG INTERFACE
  "STM32F4xx"
	"ARDUINO_DISCO_F407VG"
	"BOARD_NAME=\"DISCO_F407VG\""
	"BOARD_ID=DISCO_F407VG"
	"VARIANT_H=\"variant_DISCO_F407VG.h\""
)
target_include_directories(DISCO_F407VG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${DISCO_F407VG_VARIANT_PATH}
)

target_link_options(DISCO_F407VG INTERFACE
  "LINKER:--default-script=${DISCO_F407VG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DISCO_F407VG_MCU}
)
target_link_libraries(DISCO_F407VG INTERFACE
  arm_cortexM4lf_math
)

# DISCO_F413ZH
# -----------------------------------------------------------------------------

set(DISCO_F413ZH_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(DISCO_F413ZH_MAXSIZE 1572864)
set(DISCO_F413ZH_MAXDATASIZE 327680)
set(DISCO_F413ZH_MCU cortex-m4)
add_library(DISCO_F413ZH INTERFACE)
target_compile_options(DISCO_F413ZH INTERFACE
  "SHELL:-DSTM32F413xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DISCO_F413ZH_MCU}
)
target_compile_definitions(DISCO_F413ZH INTERFACE
  "STM32F4xx"
	"ARDUINO_DISCO_F413ZH"
	"BOARD_NAME=\"DISCO_F413ZH\""
	"BOARD_ID=DISCO_F413ZH"
	"VARIANT_H=\"variant_DISCO_F413ZH.h\""
)
target_include_directories(DISCO_F413ZH INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${DISCO_F413ZH_VARIANT_PATH}
)

target_link_options(DISCO_F413ZH INTERFACE
  "LINKER:--default-script=${DISCO_F413ZH_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DISCO_F413ZH_MCU}
)
target_link_libraries(DISCO_F413ZH INTERFACE
  arm_cortexM4lf_math
)

# DISCO_F746NG
# -----------------------------------------------------------------------------

set(DISCO_F746NG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(DISCO_F746NG_MAXSIZE 1048576)
set(DISCO_F746NG_MAXDATASIZE 327680)
set(DISCO_F746NG_MCU cortex-m7)
add_library(DISCO_F746NG INTERFACE)
target_compile_options(DISCO_F746NG INTERFACE
  "SHELL:-DSTM32F746xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DISCO_F746NG_MCU}
)
target_compile_definitions(DISCO_F746NG INTERFACE
  "STM32F7xx"
	"ARDUINO_DISCO_F746NG"
	"BOARD_NAME=\"DISCO_F746NG\""
	"BOARD_ID=DISCO_F746NG"
	"VARIANT_H=\"variant_DISCO_F746NG.h\""
)
target_include_directories(DISCO_F746NG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${DISCO_F746NG_VARIANT_PATH}
)

target_link_options(DISCO_F746NG INTERFACE
  "LINKER:--default-script=${DISCO_F746NG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DISCO_F746NG_MCU}
)
target_link_libraries(DISCO_F746NG INTERFACE
  arm_cortexM7lfsp_math
)

# DISCO_G0316
# -----------------------------------------------------------------------------

set(DISCO_G0316_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031J(4-6)M_G041J6M")
set(DISCO_G0316_MAXSIZE 32768)
set(DISCO_G0316_MAXDATASIZE 8192)
set(DISCO_G0316_MCU cortex-m0plus)
add_library(DISCO_G0316 INTERFACE)
target_compile_options(DISCO_G0316 INTERFACE
  "SHELL:-DSTM32G031xx  -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${DISCO_G0316_MCU}
)
target_compile_definitions(DISCO_G0316 INTERFACE
  "STM32G0xx"
	"ARDUINO_DISCO_G0316"
	"BOARD_NAME=\"DISCO_G0316\""
	"BOARD_ID=DISCO_G0316"
	"VARIANT_H=\"variant_DISCO_G0316.h\""
)
target_include_directories(DISCO_G0316 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${DISCO_G0316_VARIANT_PATH}
)

target_link_options(DISCO_G0316 INTERFACE
  "LINKER:--default-script=${DISCO_G0316_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${DISCO_G0316_MCU}
)
target_link_libraries(DISCO_G0316 INTERFACE
  arm_cortexM0l_math
)

# DIYMORE_F407VGT
# -----------------------------------------------------------------------------

set(DIYMORE_F407VGT_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(DIYMORE_F407VGT_MAXSIZE 1048576)
set(DIYMORE_F407VGT_MAXDATASIZE 131072)
set(DIYMORE_F407VGT_MCU cortex-m4)
add_library(DIYMORE_F407VGT INTERFACE)
target_compile_options(DIYMORE_F407VGT INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${DIYMORE_F407VGT_MCU}
)
target_compile_definitions(DIYMORE_F407VGT INTERFACE
  "STM32F4xx"
	"ARDUINO_DIYMORE_F407VGT"
	"BOARD_NAME=\"DIYMORE_F407VGT\""
	"BOARD_ID=DIYMORE_F407VGT"
	"VARIANT_H=\"variant_DIYMORE_F407VGT.h\""
)
target_include_directories(DIYMORE_F407VGT INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${DIYMORE_F407VGT_VARIANT_PATH}
)

target_link_options(DIYMORE_F407VGT INTERFACE
  "LINKER:--default-script=${DIYMORE_F407VGT_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${DIYMORE_F407VGT_MCU}
)
target_link_libraries(DIYMORE_F407VGT INTERFACE
  arm_cortexM4lf_math
)

# EEXTR_F030_V1
# -----------------------------------------------------------------------------

set(EEXTR_F030_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030C8T")
set(EEXTR_F030_V1_MAXSIZE 65536)
set(EEXTR_F030_V1_MAXDATASIZE 8192)
set(EEXTR_F030_V1_MCU cortex-m0)
add_library(EEXTR_F030_V1 INTERFACE)
target_compile_options(EEXTR_F030_V1 INTERFACE
  "SHELL:-DSTM32F030x8  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${EEXTR_F030_V1_MCU}
)
target_compile_definitions(EEXTR_F030_V1 INTERFACE
  "STM32F0xx"
	"ARDUINO_EEXTR_F030_V1"
	"BOARD_NAME=\"EEXTR_F030_V1\""
	"BOARD_ID=EEXTR_F030_V1"
	"VARIANT_H=\"variant_EEXTR_F030_V1.h\""
)
target_include_directories(EEXTR_F030_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${EEXTR_F030_V1_VARIANT_PATH}
)

target_link_options(EEXTR_F030_V1 INTERFACE
  "LINKER:--default-script=${EEXTR_F030_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${EEXTR_F030_V1_MCU}
)
target_link_libraries(EEXTR_F030_V1 INTERFACE
  arm_cortexM0l_math
)

# ELEKTOR_F072C8
# -----------------------------------------------------------------------------

set(ELEKTOR_F072C8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(ELEKTOR_F072C8_MAXSIZE 65536)
set(ELEKTOR_F072C8_MAXDATASIZE 16384)
set(ELEKTOR_F072C8_MCU cortex-m0)
add_library(ELEKTOR_F072C8 INTERFACE)
target_compile_options(ELEKTOR_F072C8 INTERFACE
  "SHELL:-DSTM32F072xB "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${ELEKTOR_F072C8_MCU}
)
target_compile_definitions(ELEKTOR_F072C8 INTERFACE
  "STM32F0xx"
	"ARDUINO_ELEKTOR_F072C8"
	"BOARD_NAME=\"ELEKTOR_F072C8\""
	"BOARD_ID=ELEKTOR_F072C8"
	"VARIANT_H=\"variant_ELEKTOR_F072Cx.h\""
)
target_include_directories(ELEKTOR_F072C8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${ELEKTOR_F072C8_VARIANT_PATH}
)

target_link_options(ELEKTOR_F072C8 INTERFACE
  "LINKER:--default-script=${ELEKTOR_F072C8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${ELEKTOR_F072C8_MCU}
)
target_link_libraries(ELEKTOR_F072C8 INTERFACE
  arm_cortexM0l_math
)

# ELEKTOR_F072CB
# -----------------------------------------------------------------------------

set(ELEKTOR_F072CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(ELEKTOR_F072CB_MAXSIZE 131072)
set(ELEKTOR_F072CB_MAXDATASIZE 16384)
set(ELEKTOR_F072CB_MCU cortex-m0)
add_library(ELEKTOR_F072CB INTERFACE)
target_compile_options(ELEKTOR_F072CB INTERFACE
  "SHELL:-DSTM32F072xB "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${ELEKTOR_F072CB_MCU}
)
target_compile_definitions(ELEKTOR_F072CB INTERFACE
  "STM32F0xx"
	"ARDUINO_ELEKTOR_F072CB"
	"BOARD_NAME=\"ELEKTOR_F072CB\""
	"BOARD_ID=ELEKTOR_F072CB"
	"VARIANT_H=\"variant_ELEKTOR_F072Cx.h\""
)
target_include_directories(ELEKTOR_F072CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${ELEKTOR_F072CB_VARIANT_PATH}
)

target_link_options(ELEKTOR_F072CB INTERFACE
  "LINKER:--default-script=${ELEKTOR_F072CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${ELEKTOR_F072CB_MCU}
)
target_link_libraries(ELEKTOR_F072CB INTERFACE
  arm_cortexM0l_math
)

# ETHERCAT_DUINO
# -----------------------------------------------------------------------------

set(ETHERCAT_DUINO_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(ETHERCAT_DUINO_MAXSIZE 524288)
set(ETHERCAT_DUINO_MAXDATASIZE 327680)
set(ETHERCAT_DUINO_MCU cortex-m7)
add_library(ETHERCAT_DUINO INTERFACE)
target_compile_options(ETHERCAT_DUINO INTERFACE
  "SHELL:-DSTM32F746xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${ETHERCAT_DUINO_MCU}
)
target_compile_definitions(ETHERCAT_DUINO INTERFACE
  "STM32F7xx"
	"ARDUINO_ETHERCAT_DUINO"
	"BOARD_NAME=\"ETHERCAT_DUINO\""
	"BOARD_ID=ETHERCAT_DUINO"
	"VARIANT_H=\"variant_ETHERCAT_DUINO.h\""
)
target_include_directories(ETHERCAT_DUINO INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${ETHERCAT_DUINO_VARIANT_PATH}
)

target_link_options(ETHERCAT_DUINO INTERFACE
  "LINKER:--default-script=${ETHERCAT_DUINO_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${ETHERCAT_DUINO_MCU}
)
target_link_libraries(ETHERCAT_DUINO INTERFACE
  arm_cortexM7lfsp_math
)

# FEATHER_F405
# -----------------------------------------------------------------------------

set(FEATHER_F405_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F405RGT_F415RGT")
set(FEATHER_F405_MAXSIZE 1048576)
set(FEATHER_F405_MAXDATASIZE 131072)
set(FEATHER_F405_MCU cortex-m4)
add_library(FEATHER_F405 INTERFACE)
target_compile_options(FEATHER_F405 INTERFACE
  "SHELL:-DSTM32F405xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${FEATHER_F405_MCU}
)
target_compile_definitions(FEATHER_F405 INTERFACE
  "STM32F4xx"
	"ARDUINO_FEATHER_F405"
	"BOARD_NAME=\"FEATHER_F405\""
	"BOARD_ID=FEATHER_F405"
	"VARIANT_H=\"variant_FEATHER_F405.h\""
)
target_include_directories(FEATHER_F405 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${FEATHER_F405_VARIANT_PATH}
)

target_link_options(FEATHER_F405 INTERFACE
  "LINKER:--default-script=${FEATHER_F405_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${FEATHER_F405_MCU}
)
target_link_libraries(FEATHER_F405 INTERFACE
  arm_cortexM4lf_math
)

# FK407M1
# -----------------------------------------------------------------------------

set(FK407M1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(FK407M1_MAXSIZE 524288)
set(FK407M1_MAXDATASIZE 131072)
set(FK407M1_MCU cortex-m4)
add_library(FK407M1 INTERFACE)
target_compile_options(FK407M1 INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${FK407M1_MCU}
)
target_compile_definitions(FK407M1 INTERFACE
  "STM32F4xx"
	"ARDUINO_FK407M1"
	"BOARD_NAME=\"FK407M1\""
	"BOARD_ID=FK407M1"
	"VARIANT_H=\"variant_FK407M1.h\""
)
target_include_directories(FK407M1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${FK407M1_VARIANT_PATH}
)

target_link_options(FK407M1 INTERFACE
  "LINKER:--default-script=${FK407M1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${FK407M1_MCU}
)
target_link_libraries(FK407M1 INTERFACE
  arm_cortexM4lf_math
)

# FYSETC_S6
# -----------------------------------------------------------------------------

set(FYSETC_S6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446V(C-E)T")
set(FYSETC_S6_MAXSIZE 458752)
set(FYSETC_S6_MAXDATASIZE 131072)
set(FYSETC_S6_MCU cortex-m4)
add_library(FYSETC_S6 INTERFACE)
target_compile_options(FYSETC_S6 INTERFACE
  "SHELL:-DSTM32F446xx   -DVECT_TAB_OFFSET=0x10000"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${FYSETC_S6_MCU}
)
target_compile_definitions(FYSETC_S6 INTERFACE
  "STM32F4xx"
	"ARDUINO_FYSETC_S6"
	"BOARD_NAME=\"FYSETC_S6\""
	"BOARD_ID=FYSETC_S6"
	"VARIANT_H=\"variant_FYSETC_S6.h\""
)
target_include_directories(FYSETC_S6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${FYSETC_S6_VARIANT_PATH}
)

target_link_options(FYSETC_S6 INTERFACE
  "LINKER:--default-script=${FYSETC_S6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x10000"
	"LINKER:--defsym=LD_MAX_SIZE=458752"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${FYSETC_S6_MCU}
)
target_link_libraries(FYSETC_S6 INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F030C8TX
# -----------------------------------------------------------------------------

set(GENERIC_F030C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030C8T")
set(GENERIC_F030C8TX_MAXSIZE 65536)
set(GENERIC_F030C8TX_MAXDATASIZE 8192)
set(GENERIC_F030C8TX_MCU cortex-m0)
add_library(GENERIC_F030C8TX INTERFACE)
target_compile_options(GENERIC_F030C8TX INTERFACE
  "SHELL:-DSTM32F030x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F030C8TX_MCU}
)
target_compile_definitions(GENERIC_F030C8TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F030C8TX"
	"BOARD_NAME=\"GENERIC_F030C8TX\""
	"BOARD_ID=GENERIC_F030C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F030C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F030C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F030C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F030C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F030C8TX_MCU}
)
target_link_libraries(GENERIC_F030C8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F030F4PX
# -----------------------------------------------------------------------------

set(GENERIC_F030F4PX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030F4P")
set(GENERIC_F030F4PX_MAXSIZE 16384)
set(GENERIC_F030F4PX_MAXDATASIZE 4096)
set(GENERIC_F030F4PX_MCU cortex-m0)
add_library(GENERIC_F030F4PX INTERFACE)
target_compile_options(GENERIC_F030F4PX INTERFACE
  "SHELL:-DSTM32F030x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F030F4PX_MCU}
)
target_compile_definitions(GENERIC_F030F4PX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F030F4PX"
	"BOARD_NAME=\"GENERIC_F030F4PX\""
	"BOARD_ID=GENERIC_F030F4PX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F030F4PX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F030F4PX_VARIANT_PATH}
)

target_link_options(GENERIC_F030F4PX INTERFACE
  "LINKER:--default-script=${GENERIC_F030F4PX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${GENERIC_F030F4PX_MCU}
)
target_link_libraries(GENERIC_F030F4PX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F030R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F030R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030R8T")
set(GENERIC_F030R8TX_MAXSIZE 65536)
set(GENERIC_F030R8TX_MAXDATASIZE 8192)
set(GENERIC_F030R8TX_MCU cortex-m0)
add_library(GENERIC_F030R8TX INTERFACE)
target_compile_options(GENERIC_F030R8TX INTERFACE
  "SHELL:-DSTM32F030x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F030R8TX_MCU}
)
target_compile_definitions(GENERIC_F030R8TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F030R8TX"
	"BOARD_NAME=\"GENERIC_F030R8TX\""
	"BOARD_ID=GENERIC_F030R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F030R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F030R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F030R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F030R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F030R8TX_MCU}
)
target_link_libraries(GENERIC_F030R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F031K6TX
# -----------------------------------------------------------------------------

set(GENERIC_F031K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F031K6T")
set(GENERIC_F031K6TX_MAXSIZE 32768)
set(GENERIC_F031K6TX_MAXDATASIZE 4096)
set(GENERIC_F031K6TX_MCU cortex-m0)
add_library(GENERIC_F031K6TX INTERFACE)
target_compile_options(GENERIC_F031K6TX INTERFACE
  "SHELL:-DSTM32F031x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F031K6TX_MCU}
)
target_compile_definitions(GENERIC_F031K6TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F031K6TX"
	"BOARD_NAME=\"GENERIC_F031K6TX\""
	"BOARD_ID=GENERIC_F031K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F031K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F031K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F031K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F031K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${GENERIC_F031K6TX_MCU}
)
target_link_libraries(GENERIC_F031K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042C4TX
# -----------------------------------------------------------------------------

set(GENERIC_F042C4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042C(4-6)(T-U)")
set(GENERIC_F042C4TX_MAXSIZE 16384)
set(GENERIC_F042C4TX_MAXDATASIZE 6144)
set(GENERIC_F042C4TX_MCU cortex-m0)
add_library(GENERIC_F042C4TX INTERFACE)
target_compile_options(GENERIC_F042C4TX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042C4TX_MCU}
)
target_compile_definitions(GENERIC_F042C4TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042C4TX"
	"BOARD_NAME=\"GENERIC_F042C4TX\""
	"BOARD_ID=GENERIC_F042C4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042C4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042C4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F042C4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F042C4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042C4TX_MCU}
)
target_link_libraries(GENERIC_F042C4TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042C4UX
# -----------------------------------------------------------------------------

set(GENERIC_F042C4UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042C(4-6)(T-U)")
set(GENERIC_F042C4UX_MAXSIZE 16384)
set(GENERIC_F042C4UX_MAXDATASIZE 6144)
set(GENERIC_F042C4UX_MCU cortex-m0)
add_library(GENERIC_F042C4UX INTERFACE)
target_compile_options(GENERIC_F042C4UX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042C4UX_MCU}
)
target_compile_definitions(GENERIC_F042C4UX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042C4UX"
	"BOARD_NAME=\"GENERIC_F042C4UX\""
	"BOARD_ID=GENERIC_F042C4UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042C4UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042C4UX_VARIANT_PATH}
)

target_link_options(GENERIC_F042C4UX INTERFACE
  "LINKER:--default-script=${GENERIC_F042C4UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042C4UX_MCU}
)
target_link_libraries(GENERIC_F042C4UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042C6TX
# -----------------------------------------------------------------------------

set(GENERIC_F042C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042C(4-6)(T-U)")
set(GENERIC_F042C6TX_MAXSIZE 32768)
set(GENERIC_F042C6TX_MAXDATASIZE 6144)
set(GENERIC_F042C6TX_MCU cortex-m0)
add_library(GENERIC_F042C6TX INTERFACE)
target_compile_options(GENERIC_F042C6TX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042C6TX_MCU}
)
target_compile_definitions(GENERIC_F042C6TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042C6TX"
	"BOARD_NAME=\"GENERIC_F042C6TX\""
	"BOARD_ID=GENERIC_F042C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F042C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F042C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042C6TX_MCU}
)
target_link_libraries(GENERIC_F042C6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042C6UX
# -----------------------------------------------------------------------------

set(GENERIC_F042C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042C(4-6)(T-U)")
set(GENERIC_F042C6UX_MAXSIZE 32768)
set(GENERIC_F042C6UX_MAXDATASIZE 6144)
set(GENERIC_F042C6UX_MCU cortex-m0)
add_library(GENERIC_F042C6UX INTERFACE)
target_compile_options(GENERIC_F042C6UX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042C6UX_MCU}
)
target_compile_definitions(GENERIC_F042C6UX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042C6UX"
	"BOARD_NAME=\"GENERIC_F042C6UX\""
	"BOARD_ID=GENERIC_F042C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_F042C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_F042C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042C6UX_MCU}
)
target_link_libraries(GENERIC_F042C6UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042K4TX
# -----------------------------------------------------------------------------

set(GENERIC_F042K4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042K(4-6)T")
set(GENERIC_F042K4TX_MAXSIZE 16384)
set(GENERIC_F042K4TX_MAXDATASIZE 6144)
set(GENERIC_F042K4TX_MCU cortex-m0)
add_library(GENERIC_F042K4TX INTERFACE)
target_compile_options(GENERIC_F042K4TX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042K4TX_MCU}
)
target_compile_definitions(GENERIC_F042K4TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042K4TX"
	"BOARD_NAME=\"GENERIC_F042K4TX\""
	"BOARD_ID=GENERIC_F042K4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042K4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042K4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F042K4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F042K4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042K4TX_MCU}
)
target_link_libraries(GENERIC_F042K4TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F042K6TX
# -----------------------------------------------------------------------------

set(GENERIC_F042K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042K(4-6)T")
set(GENERIC_F042K6TX_MAXSIZE 32768)
set(GENERIC_F042K6TX_MAXDATASIZE 6144)
set(GENERIC_F042K6TX_MCU cortex-m0)
add_library(GENERIC_F042K6TX INTERFACE)
target_compile_options(GENERIC_F042K6TX INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F042K6TX_MCU}
)
target_compile_definitions(GENERIC_F042K6TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F042K6TX"
	"BOARD_NAME=\"GENERIC_F042K6TX\""
	"BOARD_ID=GENERIC_F042K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F042K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F042K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F042K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F042K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F042K6TX_MCU}
)
target_link_libraries(GENERIC_F042K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F051K6UX
# -----------------------------------------------------------------------------

set(GENERIC_F051K6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F051K(6-8)U")
set(GENERIC_F051K6UX_MAXSIZE 32768)
set(GENERIC_F051K6UX_MAXDATASIZE 8192)
set(GENERIC_F051K6UX_MCU cortex-m0)
add_library(GENERIC_F051K6UX INTERFACE)
target_compile_options(GENERIC_F051K6UX INTERFACE
  "SHELL:-DSTM32F051x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F051K6UX_MCU}
)
target_compile_definitions(GENERIC_F051K6UX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F051K6UX"
	"BOARD_NAME=\"GENERIC_F051K6UX\""
	"BOARD_ID=GENERIC_F051K6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F051K6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F051K6UX_VARIANT_PATH}
)

target_link_options(GENERIC_F051K6UX INTERFACE
  "LINKER:--default-script=${GENERIC_F051K6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F051K6UX_MCU}
)
target_link_libraries(GENERIC_F051K6UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F051K8UX
# -----------------------------------------------------------------------------

set(GENERIC_F051K8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F051K(6-8)U")
set(GENERIC_F051K8UX_MAXSIZE 65536)
set(GENERIC_F051K8UX_MAXDATASIZE 8192)
set(GENERIC_F051K8UX_MCU cortex-m0)
add_library(GENERIC_F051K8UX INTERFACE)
target_compile_options(GENERIC_F051K8UX INTERFACE
  "SHELL:-DSTM32F051x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F051K8UX_MCU}
)
target_compile_definitions(GENERIC_F051K8UX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F051K8UX"
	"BOARD_NAME=\"GENERIC_F051K8UX\""
	"BOARD_ID=GENERIC_F051K8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F051K8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F051K8UX_VARIANT_PATH}
)

target_link_options(GENERIC_F051K8UX INTERFACE
  "LINKER:--default-script=${GENERIC_F051K8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F051K8UX_MCU}
)
target_link_libraries(GENERIC_F051K8UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F070CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F070CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F070CBT")
set(GENERIC_F070CBTX_MAXSIZE 131072)
set(GENERIC_F070CBTX_MAXDATASIZE 16384)
set(GENERIC_F070CBTX_MCU cortex-m0)
add_library(GENERIC_F070CBTX INTERFACE)
target_compile_options(GENERIC_F070CBTX INTERFACE
  "SHELL:-DSTM32F070xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F070CBTX_MCU}
)
target_compile_definitions(GENERIC_F070CBTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F070CBTX"
	"BOARD_NAME=\"GENERIC_F070CBTX\""
	"BOARD_ID=GENERIC_F070CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F070CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F070CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F070CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F070CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F070CBTX_MCU}
)
target_link_libraries(GENERIC_F070CBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F070RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F070RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F070RBT")
set(GENERIC_F070RBTX_MAXSIZE 131072)
set(GENERIC_F070RBTX_MAXDATASIZE 16384)
set(GENERIC_F070RBTX_MCU cortex-m0)
add_library(GENERIC_F070RBTX INTERFACE)
target_compile_options(GENERIC_F070RBTX INTERFACE
  "SHELL:-DSTM32F070xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F070RBTX_MCU}
)
target_compile_definitions(GENERIC_F070RBTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F070RBTX"
	"BOARD_NAME=\"GENERIC_F070RBTX\""
	"BOARD_ID=GENERIC_F070RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F070RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F070RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F070RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F070RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F070RBTX_MCU}
)
target_link_libraries(GENERIC_F070RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072C8TX
# -----------------------------------------------------------------------------

set(GENERIC_F072C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(GENERIC_F072C8TX_MAXSIZE 65536)
set(GENERIC_F072C8TX_MAXDATASIZE 16384)
set(GENERIC_F072C8TX_MCU cortex-m0)
add_library(GENERIC_F072C8TX INTERFACE)
target_compile_options(GENERIC_F072C8TX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072C8TX_MCU}
)
target_compile_definitions(GENERIC_F072C8TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072C8TX"
	"BOARD_NAME=\"GENERIC_F072C8TX\""
	"BOARD_ID=GENERIC_F072C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F072C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F072C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072C8TX_MCU}
)
target_link_libraries(GENERIC_F072C8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072C8UX
# -----------------------------------------------------------------------------

set(GENERIC_F072C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(GENERIC_F072C8UX_MAXSIZE 65536)
set(GENERIC_F072C8UX_MAXDATASIZE 16384)
set(GENERIC_F072C8UX_MCU cortex-m0)
add_library(GENERIC_F072C8UX INTERFACE)
target_compile_options(GENERIC_F072C8UX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072C8UX_MCU}
)
target_compile_definitions(GENERIC_F072C8UX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072C8UX"
	"BOARD_NAME=\"GENERIC_F072C8UX\""
	"BOARD_ID=GENERIC_F072C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_F072C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_F072C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072C8UX_MCU}
)
target_link_libraries(GENERIC_F072C8UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F072CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(GENERIC_F072CBTX_MAXSIZE 131072)
set(GENERIC_F072CBTX_MAXDATASIZE 16384)
set(GENERIC_F072CBTX_MCU cortex-m0)
add_library(GENERIC_F072CBTX INTERFACE)
target_compile_options(GENERIC_F072CBTX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072CBTX_MCU}
)
target_compile_definitions(GENERIC_F072CBTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072CBTX"
	"BOARD_NAME=\"GENERIC_F072CBTX\""
	"BOARD_ID=GENERIC_F072CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F072CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F072CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072CBTX_MCU}
)
target_link_libraries(GENERIC_F072CBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072CBUX
# -----------------------------------------------------------------------------

set(GENERIC_F072CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(GENERIC_F072CBUX_MAXSIZE 131072)
set(GENERIC_F072CBUX_MAXDATASIZE 16384)
set(GENERIC_F072CBUX_MCU cortex-m0)
add_library(GENERIC_F072CBUX INTERFACE)
target_compile_options(GENERIC_F072CBUX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072CBUX_MCU}
)
target_compile_definitions(GENERIC_F072CBUX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072CBUX"
	"BOARD_NAME=\"GENERIC_F072CBUX\""
	"BOARD_ID=GENERIC_F072CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_F072CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_F072CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072CBUX_MCU}
)
target_link_libraries(GENERIC_F072CBUX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072CBYX
# -----------------------------------------------------------------------------

set(GENERIC_F072CBYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072C8(T-U)_F072CB(T-U-Y)")
set(GENERIC_F072CBYX_MAXSIZE 131072)
set(GENERIC_F072CBYX_MAXDATASIZE 16384)
set(GENERIC_F072CBYX_MCU cortex-m0)
add_library(GENERIC_F072CBYX INTERFACE)
target_compile_options(GENERIC_F072CBYX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072CBYX_MCU}
)
target_compile_definitions(GENERIC_F072CBYX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072CBYX"
	"BOARD_NAME=\"GENERIC_F072CBYX\""
	"BOARD_ID=GENERIC_F072CBYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072CBYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072CBYX_VARIANT_PATH}
)

target_link_options(GENERIC_F072CBYX INTERFACE
  "LINKER:--default-script=${GENERIC_F072CBYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072CBYX_MCU}
)
target_link_libraries(GENERIC_F072CBYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F072R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(GENERIC_F072R8TX_MAXSIZE 65536)
set(GENERIC_F072R8TX_MAXDATASIZE 16384)
set(GENERIC_F072R8TX_MCU cortex-m0)
add_library(GENERIC_F072R8TX INTERFACE)
target_compile_options(GENERIC_F072R8TX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072R8TX_MCU}
)
target_compile_definitions(GENERIC_F072R8TX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072R8TX"
	"BOARD_NAME=\"GENERIC_F072R8TX\""
	"BOARD_ID=GENERIC_F072R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F072R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F072R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072R8TX_MCU}
)
target_link_libraries(GENERIC_F072R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072RBHX
# -----------------------------------------------------------------------------

set(GENERIC_F072RBHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(GENERIC_F072RBHX_MAXSIZE 131072)
set(GENERIC_F072RBHX_MAXDATASIZE 16384)
set(GENERIC_F072RBHX_MCU cortex-m0)
add_library(GENERIC_F072RBHX INTERFACE)
target_compile_options(GENERIC_F072RBHX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072RBHX_MCU}
)
target_compile_definitions(GENERIC_F072RBHX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072RBHX"
	"BOARD_NAME=\"GENERIC_F072RBHX\""
	"BOARD_ID=GENERIC_F072RBHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072RBHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072RBHX_VARIANT_PATH}
)

target_link_options(GENERIC_F072RBHX INTERFACE
  "LINKER:--default-script=${GENERIC_F072RBHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072RBHX_MCU}
)
target_link_libraries(GENERIC_F072RBHX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072RBIX
# -----------------------------------------------------------------------------

set(GENERIC_F072RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(GENERIC_F072RBIX_MAXSIZE 131072)
set(GENERIC_F072RBIX_MAXDATASIZE 16384)
set(GENERIC_F072RBIX_MCU cortex-m0)
add_library(GENERIC_F072RBIX INTERFACE)
target_compile_options(GENERIC_F072RBIX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072RBIX_MCU}
)
target_compile_definitions(GENERIC_F072RBIX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072RBIX"
	"BOARD_NAME=\"GENERIC_F072RBIX\""
	"BOARD_ID=GENERIC_F072RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_F072RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_F072RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072RBIX_MCU}
)
target_link_libraries(GENERIC_F072RBIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F072RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F072RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(GENERIC_F072RBTX_MAXSIZE 131072)
set(GENERIC_F072RBTX_MAXDATASIZE 16384)
set(GENERIC_F072RBTX_MCU cortex-m0)
add_library(GENERIC_F072RBTX INTERFACE)
target_compile_options(GENERIC_F072RBTX INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F072RBTX_MCU}
)
target_compile_definitions(GENERIC_F072RBTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F072RBTX"
	"BOARD_NAME=\"GENERIC_F072RBTX\""
	"BOARD_ID=GENERIC_F072RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F072RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F072RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F072RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F072RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_F072RBTX_MCU}
)
target_link_libraries(GENERIC_F072RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F091RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F091RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F091RBT_F091RC(H-T-Y)")
set(GENERIC_F091RBTX_MAXSIZE 131072)
set(GENERIC_F091RBTX_MAXDATASIZE 32768)
set(GENERIC_F091RBTX_MCU cortex-m0)
add_library(GENERIC_F091RBTX INTERFACE)
target_compile_options(GENERIC_F091RBTX INTERFACE
  "SHELL:-DSTM32F091xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F091RBTX_MCU}
)
target_compile_definitions(GENERIC_F091RBTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F091RBTX"
	"BOARD_NAME=\"GENERIC_F091RBTX\""
	"BOARD_ID=GENERIC_F091RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F091RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F091RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F091RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F091RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_F091RBTX_MCU}
)
target_link_libraries(GENERIC_F091RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F091RCHX
# -----------------------------------------------------------------------------

set(GENERIC_F091RCHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F091RBT_F091RC(H-T-Y)")
set(GENERIC_F091RCHX_MAXSIZE 262144)
set(GENERIC_F091RCHX_MAXDATASIZE 32768)
set(GENERIC_F091RCHX_MCU cortex-m0)
add_library(GENERIC_F091RCHX INTERFACE)
target_compile_options(GENERIC_F091RCHX INTERFACE
  "SHELL:-DSTM32F091xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F091RCHX_MCU}
)
target_compile_definitions(GENERIC_F091RCHX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F091RCHX"
	"BOARD_NAME=\"GENERIC_F091RCHX\""
	"BOARD_ID=GENERIC_F091RCHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F091RCHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F091RCHX_VARIANT_PATH}
)

target_link_options(GENERIC_F091RCHX INTERFACE
  "LINKER:--default-script=${GENERIC_F091RCHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_F091RCHX_MCU}
)
target_link_libraries(GENERIC_F091RCHX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F091RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F091RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F091RBT_F091RC(H-T-Y)")
set(GENERIC_F091RCTX_MAXSIZE 262144)
set(GENERIC_F091RCTX_MAXDATASIZE 32768)
set(GENERIC_F091RCTX_MCU cortex-m0)
add_library(GENERIC_F091RCTX INTERFACE)
target_compile_options(GENERIC_F091RCTX INTERFACE
  "SHELL:-DSTM32F091xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F091RCTX_MCU}
)
target_compile_definitions(GENERIC_F091RCTX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F091RCTX"
	"BOARD_NAME=\"GENERIC_F091RCTX\""
	"BOARD_ID=GENERIC_F091RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F091RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F091RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F091RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F091RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_F091RCTX_MCU}
)
target_link_libraries(GENERIC_F091RCTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F091RCYX
# -----------------------------------------------------------------------------

set(GENERIC_F091RCYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F091RBT_F091RC(H-T-Y)")
set(GENERIC_F091RCYX_MAXSIZE 262144)
set(GENERIC_F091RCYX_MAXDATASIZE 32768)
set(GENERIC_F091RCYX_MCU cortex-m0)
add_library(GENERIC_F091RCYX INTERFACE)
target_compile_options(GENERIC_F091RCYX INTERFACE
  "SHELL:-DSTM32F091xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F091RCYX_MCU}
)
target_compile_definitions(GENERIC_F091RCYX INTERFACE
  "STM32F0xx"
	"ARDUINO_GENERIC_F091RCYX"
	"BOARD_NAME=\"GENERIC_F091RCYX\""
	"BOARD_ID=GENERIC_F091RCYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F091RCYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${GENERIC_F091RCYX_VARIANT_PATH}
)

target_link_options(GENERIC_F091RCYX INTERFACE
  "LINKER:--default-script=${GENERIC_F091RCYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_F091RCYX_MCU}
)
target_link_libraries(GENERIC_F091RCYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_F100C4TX
# -----------------------------------------------------------------------------

set(GENERIC_F100C4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100C(4-6)T")
set(GENERIC_F100C4TX_MAXSIZE 16384)
set(GENERIC_F100C4TX_MAXDATASIZE 4096)
set(GENERIC_F100C4TX_MCU cortex-m3)
add_library(GENERIC_F100C4TX INTERFACE)
target_compile_options(GENERIC_F100C4TX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100C4TX_MCU}
)
target_compile_definitions(GENERIC_F100C4TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100C4TX"
	"BOARD_NAME=\"GENERIC_F100C4TX\""
	"BOARD_ID=GENERIC_F100C4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100C4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100C4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F100C4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F100C4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${GENERIC_F100C4TX_MCU}
)
target_link_libraries(GENERIC_F100C4TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F100C6TX
# -----------------------------------------------------------------------------

set(GENERIC_F100C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100C(4-6)T")
set(GENERIC_F100C6TX_MAXSIZE 32768)
set(GENERIC_F100C6TX_MAXDATASIZE 4096)
set(GENERIC_F100C6TX_MCU cortex-m3)
add_library(GENERIC_F100C6TX INTERFACE)
target_compile_options(GENERIC_F100C6TX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100C6TX_MCU}
)
target_compile_definitions(GENERIC_F100C6TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100C6TX"
	"BOARD_NAME=\"GENERIC_F100C6TX\""
	"BOARD_ID=GENERIC_F100C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F100C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F100C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${GENERIC_F100C6TX_MCU}
)
target_link_libraries(GENERIC_F100C6TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F100C8TX
# -----------------------------------------------------------------------------

set(GENERIC_F100C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100C(8-B)T")
set(GENERIC_F100C8TX_MAXSIZE 65536)
set(GENERIC_F100C8TX_MAXDATASIZE 8192)
set(GENERIC_F100C8TX_MCU cortex-m3)
add_library(GENERIC_F100C8TX INTERFACE)
target_compile_options(GENERIC_F100C8TX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100C8TX_MCU}
)
target_compile_definitions(GENERIC_F100C8TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100C8TX"
	"BOARD_NAME=\"GENERIC_F100C8TX\""
	"BOARD_ID=GENERIC_F100C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F100C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F100C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F100C8TX_MCU}
)
target_link_libraries(GENERIC_F100C8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F100CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F100CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100C(8-B)T")
set(GENERIC_F100CBTX_MAXSIZE 131072)
set(GENERIC_F100CBTX_MAXDATASIZE 8192)
set(GENERIC_F100CBTX_MCU cortex-m3)
add_library(GENERIC_F100CBTX INTERFACE)
target_compile_options(GENERIC_F100CBTX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100CBTX_MCU}
)
target_compile_definitions(GENERIC_F100CBTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100CBTX"
	"BOARD_NAME=\"GENERIC_F100CBTX\""
	"BOARD_ID=GENERIC_F100CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F100CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F100CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F100CBTX_MCU}
)
target_link_libraries(GENERIC_F100CBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F100R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F100R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100R(8-B)T")
set(GENERIC_F100R8TX_MAXSIZE 65536)
set(GENERIC_F100R8TX_MAXDATASIZE 8192)
set(GENERIC_F100R8TX_MCU cortex-m3)
add_library(GENERIC_F100R8TX INTERFACE)
target_compile_options(GENERIC_F100R8TX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100R8TX_MCU}
)
target_compile_definitions(GENERIC_F100R8TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100R8TX"
	"BOARD_NAME=\"GENERIC_F100R8TX\""
	"BOARD_ID=GENERIC_F100R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F100R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F100R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F100R8TX_MCU}
)
target_link_libraries(GENERIC_F100R8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F100RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F100RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F100R(8-B)T")
set(GENERIC_F100RBTX_MAXSIZE 131072)
set(GENERIC_F100RBTX_MAXDATASIZE 8192)
set(GENERIC_F100RBTX_MCU cortex-m3)
add_library(GENERIC_F100RBTX INTERFACE)
target_compile_options(GENERIC_F100RBTX INTERFACE
  "SHELL:-DSTM32F100xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F100RBTX_MCU}
)
target_compile_definitions(GENERIC_F100RBTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F100RBTX"
	"BOARD_NAME=\"GENERIC_F100RBTX\""
	"BOARD_ID=GENERIC_F100RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F100RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F100RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F100RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F100RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_F100RBTX_MCU}
)
target_link_libraries(GENERIC_F100RBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103C4TX
# -----------------------------------------------------------------------------

set(GENERIC_F103C4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C4T_F103C6(T-U)")
set(GENERIC_F103C4TX_MAXSIZE 16384)
set(GENERIC_F103C4TX_MAXDATASIZE 6144)
set(GENERIC_F103C4TX_MCU cortex-m3)
add_library(GENERIC_F103C4TX INTERFACE)
target_compile_options(GENERIC_F103C4TX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103C4TX_MCU}
)
target_compile_definitions(GENERIC_F103C4TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103C4TX"
	"BOARD_NAME=\"GENERIC_F103C4TX\""
	"BOARD_ID=GENERIC_F103C4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103C4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103C4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103C4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103C4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F103C4TX_MCU}
)
target_link_libraries(GENERIC_F103C4TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103C6TX
# -----------------------------------------------------------------------------

set(GENERIC_F103C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C4T_F103C6(T-U)")
set(GENERIC_F103C6TX_MAXSIZE 32768)
set(GENERIC_F103C6TX_MAXDATASIZE 10240)
set(GENERIC_F103C6TX_MCU cortex-m3)
add_library(GENERIC_F103C6TX INTERFACE)
target_compile_options(GENERIC_F103C6TX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103C6TX_MCU}
)
target_compile_definitions(GENERIC_F103C6TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103C6TX"
	"BOARD_NAME=\"GENERIC_F103C6TX\""
	"BOARD_ID=GENERIC_F103C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_F103C6TX_MCU}
)
target_link_libraries(GENERIC_F103C6TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103C6UX
# -----------------------------------------------------------------------------

set(GENERIC_F103C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C4T_F103C6(T-U)")
set(GENERIC_F103C6UX_MAXSIZE 32768)
set(GENERIC_F103C6UX_MAXDATASIZE 10240)
set(GENERIC_F103C6UX_MCU cortex-m3)
add_library(GENERIC_F103C6UX INTERFACE)
target_compile_options(GENERIC_F103C6UX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103C6UX_MCU}
)
target_compile_definitions(GENERIC_F103C6UX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103C6UX"
	"BOARD_NAME=\"GENERIC_F103C6UX\""
	"BOARD_ID=GENERIC_F103C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_F103C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_F103C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_F103C6UX_MCU}
)
target_link_libraries(GENERIC_F103C6UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103C8TX
# -----------------------------------------------------------------------------

set(GENERIC_F103C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(GENERIC_F103C8TX_MAXSIZE 65536)
set(GENERIC_F103C8TX_MAXDATASIZE 20480)
set(GENERIC_F103C8TX_MCU cortex-m3)
add_library(GENERIC_F103C8TX INTERFACE)
target_compile_options(GENERIC_F103C8TX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103C8TX_MCU}
)
target_compile_definitions(GENERIC_F103C8TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103C8TX"
	"BOARD_NAME=\"GENERIC_F103C8TX\""
	"BOARD_ID=GENERIC_F103C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103C8TX_MCU}
)
target_link_libraries(GENERIC_F103C8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F103CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(GENERIC_F103CBTX_MAXSIZE 131072)
set(GENERIC_F103CBTX_MAXDATASIZE 20480)
set(GENERIC_F103CBTX_MCU cortex-m3)
add_library(GENERIC_F103CBTX INTERFACE)
target_compile_options(GENERIC_F103CBTX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103CBTX_MCU}
)
target_compile_definitions(GENERIC_F103CBTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103CBTX"
	"BOARD_NAME=\"GENERIC_F103CBTX\""
	"BOARD_ID=GENERIC_F103CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103CBTX_MCU}
)
target_link_libraries(GENERIC_F103CBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103CBUX
# -----------------------------------------------------------------------------

set(GENERIC_F103CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(GENERIC_F103CBUX_MAXSIZE 131072)
set(GENERIC_F103CBUX_MAXDATASIZE 20480)
set(GENERIC_F103CBUX_MCU cortex-m3)
add_library(GENERIC_F103CBUX INTERFACE)
target_compile_options(GENERIC_F103CBUX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103CBUX_MCU}
)
target_compile_definitions(GENERIC_F103CBUX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103CBUX"
	"BOARD_NAME=\"GENERIC_F103CBUX\""
	"BOARD_ID=GENERIC_F103CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_F103CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_F103CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103CBUX_MCU}
)
target_link_libraries(GENERIC_F103CBUX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R4HX
# -----------------------------------------------------------------------------

set(GENERIC_F103R4HX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(4-6)H")
set(GENERIC_F103R4HX_MAXSIZE 16384)
set(GENERIC_F103R4HX_MAXDATASIZE 6144)
set(GENERIC_F103R4HX_MCU cortex-m3)
add_library(GENERIC_F103R4HX INTERFACE)
target_compile_options(GENERIC_F103R4HX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R4HX_MCU}
)
target_compile_definitions(GENERIC_F103R4HX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R4HX"
	"BOARD_NAME=\"GENERIC_F103R4HX\""
	"BOARD_ID=GENERIC_F103R4HX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R4HX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R4HX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R4HX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R4HX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F103R4HX_MCU}
)
target_link_libraries(GENERIC_F103R4HX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R4TX
# -----------------------------------------------------------------------------

set(GENERIC_F103R4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(4-6)T")
set(GENERIC_F103R4TX_MAXSIZE 16384)
set(GENERIC_F103R4TX_MAXDATASIZE 6144)
set(GENERIC_F103R4TX_MCU cortex-m3)
add_library(GENERIC_F103R4TX INTERFACE)
target_compile_options(GENERIC_F103R4TX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R4TX_MCU}
)
target_compile_definitions(GENERIC_F103R4TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R4TX"
	"BOARD_NAME=\"GENERIC_F103R4TX\""
	"BOARD_ID=GENERIC_F103R4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F103R4TX_MCU}
)
target_link_libraries(GENERIC_F103R4TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R6HX
# -----------------------------------------------------------------------------

set(GENERIC_F103R6HX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(4-6)H")
set(GENERIC_F103R6HX_MAXSIZE 32768)
set(GENERIC_F103R6HX_MAXDATASIZE 10240)
set(GENERIC_F103R6HX_MCU cortex-m3)
add_library(GENERIC_F103R6HX INTERFACE)
target_compile_options(GENERIC_F103R6HX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R6HX_MCU}
)
target_compile_definitions(GENERIC_F103R6HX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R6HX"
	"BOARD_NAME=\"GENERIC_F103R6HX\""
	"BOARD_ID=GENERIC_F103R6HX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R6HX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R6HX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R6HX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R6HX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_F103R6HX_MCU}
)
target_link_libraries(GENERIC_F103R6HX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R6TX
# -----------------------------------------------------------------------------

set(GENERIC_F103R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(4-6)T")
set(GENERIC_F103R6TX_MAXSIZE 32768)
set(GENERIC_F103R6TX_MAXDATASIZE 10240)
set(GENERIC_F103R6TX_MCU cortex-m3)
add_library(GENERIC_F103R6TX INTERFACE)
target_compile_options(GENERIC_F103R6TX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R6TX_MCU}
)
target_compile_definitions(GENERIC_F103R6TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R6TX"
	"BOARD_NAME=\"GENERIC_F103R6TX\""
	"BOARD_ID=GENERIC_F103R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_F103R6TX_MCU}
)
target_link_libraries(GENERIC_F103R6TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R8HX
# -----------------------------------------------------------------------------

set(GENERIC_F103R8HX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)H")
set(GENERIC_F103R8HX_MAXSIZE 65536)
set(GENERIC_F103R8HX_MAXDATASIZE 20480)
set(GENERIC_F103R8HX_MCU cortex-m3)
add_library(GENERIC_F103R8HX INTERFACE)
target_compile_options(GENERIC_F103R8HX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R8HX_MCU}
)
target_compile_definitions(GENERIC_F103R8HX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R8HX"
	"BOARD_NAME=\"GENERIC_F103R8HX\""
	"BOARD_ID=GENERIC_F103R8HX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R8HX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R8HX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R8HX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R8HX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103R8HX_MCU}
)
target_link_libraries(GENERIC_F103R8HX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F103R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)T")
set(GENERIC_F103R8TX_MAXSIZE 65536)
set(GENERIC_F103R8TX_MAXDATASIZE 20480)
set(GENERIC_F103R8TX_MCU cortex-m3)
add_library(GENERIC_F103R8TX INTERFACE)
target_compile_options(GENERIC_F103R8TX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103R8TX_MCU}
)
target_compile_definitions(GENERIC_F103R8TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103R8TX"
	"BOARD_NAME=\"GENERIC_F103R8TX\""
	"BOARD_ID=GENERIC_F103R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103R8TX_MCU}
)
target_link_libraries(GENERIC_F103R8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RBHX
# -----------------------------------------------------------------------------

set(GENERIC_F103RBHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)H")
set(GENERIC_F103RBHX_MAXSIZE 131072)
set(GENERIC_F103RBHX_MAXDATASIZE 20480)
set(GENERIC_F103RBHX_MCU cortex-m3)
add_library(GENERIC_F103RBHX INTERFACE)
target_compile_options(GENERIC_F103RBHX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RBHX_MCU}
)
target_compile_definitions(GENERIC_F103RBHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RBHX"
	"BOARD_NAME=\"GENERIC_F103RBHX\""
	"BOARD_ID=GENERIC_F103RBHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RBHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RBHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RBHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RBHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103RBHX_MCU}
)
target_link_libraries(GENERIC_F103RBHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F103RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)T")
set(GENERIC_F103RBTX_MAXSIZE 131072)
set(GENERIC_F103RBTX_MAXDATASIZE 20480)
set(GENERIC_F103RBTX_MCU cortex-m3)
add_library(GENERIC_F103RBTX INTERFACE)
target_compile_options(GENERIC_F103RBTX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RBTX_MCU}
)
target_compile_definitions(GENERIC_F103RBTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RBTX"
	"BOARD_NAME=\"GENERIC_F103RBTX\""
	"BOARD_ID=GENERIC_F103RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103RBTX_MCU}
)
target_link_libraries(GENERIC_F103RBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F103RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(GENERIC_F103RCTX_MAXSIZE 262144)
set(GENERIC_F103RCTX_MAXDATASIZE 49152)
set(GENERIC_F103RCTX_MCU cortex-m3)
add_library(GENERIC_F103RCTX INTERFACE)
target_compile_options(GENERIC_F103RCTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RCTX_MCU}
)
target_compile_definitions(GENERIC_F103RCTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RCTX"
	"BOARD_NAME=\"GENERIC_F103RCTX\""
	"BOARD_ID=GENERIC_F103RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103RCTX_MCU}
)
target_link_libraries(GENERIC_F103RCTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RCYX
# -----------------------------------------------------------------------------

set(GENERIC_F103RCYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)Y")
set(GENERIC_F103RCYX_MAXSIZE 262144)
set(GENERIC_F103RCYX_MAXDATASIZE 49152)
set(GENERIC_F103RCYX_MCU cortex-m3)
add_library(GENERIC_F103RCYX INTERFACE)
target_compile_options(GENERIC_F103RCYX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RCYX_MCU}
)
target_compile_definitions(GENERIC_F103RCYX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RCYX"
	"BOARD_NAME=\"GENERIC_F103RCYX\""
	"BOARD_ID=GENERIC_F103RCYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RCYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RCYX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RCYX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RCYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103RCYX_MCU}
)
target_link_libraries(GENERIC_F103RCYX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RDTX
# -----------------------------------------------------------------------------

set(GENERIC_F103RDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(GENERIC_F103RDTX_MAXSIZE 393216)
set(GENERIC_F103RDTX_MAXDATASIZE 65536)
set(GENERIC_F103RDTX_MCU cortex-m3)
add_library(GENERIC_F103RDTX INTERFACE)
target_compile_options(GENERIC_F103RDTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RDTX_MCU}
)
target_compile_definitions(GENERIC_F103RDTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RDTX"
	"BOARD_NAME=\"GENERIC_F103RDTX\""
	"BOARD_ID=GENERIC_F103RDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103RDTX_MCU}
)
target_link_libraries(GENERIC_F103RDTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RDYX
# -----------------------------------------------------------------------------

set(GENERIC_F103RDYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)Y")
set(GENERIC_F103RDYX_MAXSIZE 393216)
set(GENERIC_F103RDYX_MAXDATASIZE 65536)
set(GENERIC_F103RDYX_MCU cortex-m3)
add_library(GENERIC_F103RDYX INTERFACE)
target_compile_options(GENERIC_F103RDYX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RDYX_MCU}
)
target_compile_definitions(GENERIC_F103RDYX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RDYX"
	"BOARD_NAME=\"GENERIC_F103RDYX\""
	"BOARD_ID=GENERIC_F103RDYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RDYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RDYX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RDYX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RDYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103RDYX_MCU}
)
target_link_libraries(GENERIC_F103RDYX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RETX
# -----------------------------------------------------------------------------

set(GENERIC_F103RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(GENERIC_F103RETX_MAXSIZE 524288)
set(GENERIC_F103RETX_MAXDATASIZE 65536)
set(GENERIC_F103RETX_MCU cortex-m3)
add_library(GENERIC_F103RETX INTERFACE)
target_compile_options(GENERIC_F103RETX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RETX_MCU}
)
target_compile_definitions(GENERIC_F103RETX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RETX"
	"BOARD_NAME=\"GENERIC_F103RETX\""
	"BOARD_ID=GENERIC_F103RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103RETX_MCU}
)
target_link_libraries(GENERIC_F103RETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103REYX
# -----------------------------------------------------------------------------

set(GENERIC_F103REYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)Y")
set(GENERIC_F103REYX_MAXSIZE 524288)
set(GENERIC_F103REYX_MAXDATASIZE 65536)
set(GENERIC_F103REYX_MCU cortex-m3)
add_library(GENERIC_F103REYX INTERFACE)
target_compile_options(GENERIC_F103REYX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103REYX_MCU}
)
target_compile_definitions(GENERIC_F103REYX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103REYX"
	"BOARD_NAME=\"GENERIC_F103REYX\""
	"BOARD_ID=GENERIC_F103REYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103REYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103REYX_VARIANT_PATH}
)

target_link_options(GENERIC_F103REYX INTERFACE
  "LINKER:--default-script=${GENERIC_F103REYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103REYX_MCU}
)
target_link_libraries(GENERIC_F103REYX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RFTX
# -----------------------------------------------------------------------------

set(GENERIC_F103RFTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(F-G)T")
set(GENERIC_F103RFTX_MAXSIZE 786432)
set(GENERIC_F103RFTX_MAXDATASIZE 98304)
set(GENERIC_F103RFTX_MCU cortex-m3)
add_library(GENERIC_F103RFTX INTERFACE)
target_compile_options(GENERIC_F103RFTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RFTX_MCU}
)
target_compile_definitions(GENERIC_F103RFTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RFTX"
	"BOARD_NAME=\"GENERIC_F103RFTX\""
	"BOARD_ID=GENERIC_F103RFTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RFTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RFTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RFTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RFTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=786432"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103RFTX_MCU}
)
target_link_libraries(GENERIC_F103RFTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103RGTX
# -----------------------------------------------------------------------------

set(GENERIC_F103RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(F-G)T")
set(GENERIC_F103RGTX_MAXSIZE 1048576)
set(GENERIC_F103RGTX_MAXDATASIZE 98304)
set(GENERIC_F103RGTX_MCU cortex-m3)
add_library(GENERIC_F103RGTX INTERFACE)
target_compile_options(GENERIC_F103RGTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103RGTX_MCU}
)
target_compile_definitions(GENERIC_F103RGTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103RGTX"
	"BOARD_NAME=\"GENERIC_F103RGTX\""
	"BOARD_ID=GENERIC_F103RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103RGTX_MCU}
)
target_link_libraries(GENERIC_F103RGTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103T4UX
# -----------------------------------------------------------------------------

set(GENERIC_F103T4UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103T(4-6)U")
set(GENERIC_F103T4UX_MAXSIZE 16384)
set(GENERIC_F103T4UX_MAXDATASIZE 6144)
set(GENERIC_F103T4UX_MCU cortex-m3)
add_library(GENERIC_F103T4UX INTERFACE)
target_compile_options(GENERIC_F103T4UX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103T4UX_MCU}
)
target_compile_definitions(GENERIC_F103T4UX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103T4UX"
	"BOARD_NAME=\"GENERIC_F103T4UX\""
	"BOARD_ID=GENERIC_F103T4UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103T4UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103T4UX_VARIANT_PATH}
)

target_link_options(GENERIC_F103T4UX INTERFACE
  "LINKER:--default-script=${GENERIC_F103T4UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${GENERIC_F103T4UX_MCU}
)
target_link_libraries(GENERIC_F103T4UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103T6UX
# -----------------------------------------------------------------------------

set(GENERIC_F103T6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103T(4-6)U")
set(GENERIC_F103T6UX_MAXSIZE 32768)
set(GENERIC_F103T6UX_MAXDATASIZE 10240)
set(GENERIC_F103T6UX_MCU cortex-m3)
add_library(GENERIC_F103T6UX INTERFACE)
target_compile_options(GENERIC_F103T6UX INTERFACE
  "SHELL:-DSTM32F103x6   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103T6UX_MCU}
)
target_compile_definitions(GENERIC_F103T6UX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103T6UX"
	"BOARD_NAME=\"GENERIC_F103T6UX\""
	"BOARD_ID=GENERIC_F103T6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103T6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103T6UX_VARIANT_PATH}
)

target_link_options(GENERIC_F103T6UX INTERFACE
  "LINKER:--default-script=${GENERIC_F103T6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_F103T6UX_MCU}
)
target_link_libraries(GENERIC_F103T6UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103T8UX
# -----------------------------------------------------------------------------

set(GENERIC_F103T8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103T(8-B)U")
set(GENERIC_F103T8UX_MAXSIZE 65536)
set(GENERIC_F103T8UX_MAXDATASIZE 20480)
set(GENERIC_F103T8UX_MCU cortex-m3)
add_library(GENERIC_F103T8UX INTERFACE)
target_compile_options(GENERIC_F103T8UX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103T8UX_MCU}
)
target_compile_definitions(GENERIC_F103T8UX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103T8UX"
	"BOARD_NAME=\"GENERIC_F103T8UX\""
	"BOARD_ID=GENERIC_F103T8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103T8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103T8UX_VARIANT_PATH}
)

target_link_options(GENERIC_F103T8UX INTERFACE
  "LINKER:--default-script=${GENERIC_F103T8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103T8UX_MCU}
)
target_link_libraries(GENERIC_F103T8UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103TBUX
# -----------------------------------------------------------------------------

set(GENERIC_F103TBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103T(8-B)U")
set(GENERIC_F103TBUX_MAXSIZE 131072)
set(GENERIC_F103TBUX_MAXDATASIZE 20480)
set(GENERIC_F103TBUX_MCU cortex-m3)
add_library(GENERIC_F103TBUX INTERFACE)
target_compile_options(GENERIC_F103TBUX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103TBUX_MCU}
)
target_compile_definitions(GENERIC_F103TBUX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103TBUX"
	"BOARD_NAME=\"GENERIC_F103TBUX\""
	"BOARD_ID=GENERIC_F103TBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103TBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103TBUX_VARIANT_PATH}
)

target_link_options(GENERIC_F103TBUX INTERFACE
  "LINKER:--default-script=${GENERIC_F103TBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103TBUX_MCU}
)
target_link_libraries(GENERIC_F103TBUX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103V8HX
# -----------------------------------------------------------------------------

set(GENERIC_F103V8HX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V8(H-T)_F103VB(H-I-T)")
set(GENERIC_F103V8HX_MAXSIZE 65536)
set(GENERIC_F103V8HX_MAXDATASIZE 20480)
set(GENERIC_F103V8HX_MCU cortex-m3)
add_library(GENERIC_F103V8HX INTERFACE)
target_compile_options(GENERIC_F103V8HX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103V8HX_MCU}
)
target_compile_definitions(GENERIC_F103V8HX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103V8HX"
	"BOARD_NAME=\"GENERIC_F103V8HX\""
	"BOARD_ID=GENERIC_F103V8HX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103V8HX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103V8HX_VARIANT_PATH}
)

target_link_options(GENERIC_F103V8HX INTERFACE
  "LINKER:--default-script=${GENERIC_F103V8HX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103V8HX_MCU}
)
target_link_libraries(GENERIC_F103V8HX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103V8TX
# -----------------------------------------------------------------------------

set(GENERIC_F103V8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V8(H-T)_F103VB(H-I-T)")
set(GENERIC_F103V8TX_MAXSIZE 65536)
set(GENERIC_F103V8TX_MAXDATASIZE 20480)
set(GENERIC_F103V8TX_MCU cortex-m3)
add_library(GENERIC_F103V8TX INTERFACE)
target_compile_options(GENERIC_F103V8TX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103V8TX_MCU}
)
target_compile_definitions(GENERIC_F103V8TX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103V8TX"
	"BOARD_NAME=\"GENERIC_F103V8TX\""
	"BOARD_ID=GENERIC_F103V8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103V8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103V8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F103V8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F103V8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103V8TX_MCU}
)
target_link_libraries(GENERIC_F103V8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VBHX
# -----------------------------------------------------------------------------

set(GENERIC_F103VBHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V8(H-T)_F103VB(H-I-T)")
set(GENERIC_F103VBHX_MAXSIZE 131072)
set(GENERIC_F103VBHX_MAXDATASIZE 20480)
set(GENERIC_F103VBHX_MCU cortex-m3)
add_library(GENERIC_F103VBHX INTERFACE)
target_compile_options(GENERIC_F103VBHX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VBHX_MCU}
)
target_compile_definitions(GENERIC_F103VBHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VBHX"
	"BOARD_NAME=\"GENERIC_F103VBHX\""
	"BOARD_ID=GENERIC_F103VBHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VBHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VBHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VBHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VBHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103VBHX_MCU}
)
target_link_libraries(GENERIC_F103VBHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VBIX
# -----------------------------------------------------------------------------

set(GENERIC_F103VBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V8(H-T)_F103VB(H-I-T)")
set(GENERIC_F103VBIX_MAXSIZE 131072)
set(GENERIC_F103VBIX_MAXDATASIZE 20480)
set(GENERIC_F103VBIX_MCU cortex-m3)
add_library(GENERIC_F103VBIX INTERFACE)
target_compile_options(GENERIC_F103VBIX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VBIX_MCU}
)
target_compile_definitions(GENERIC_F103VBIX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VBIX"
	"BOARD_NAME=\"GENERIC_F103VBIX\""
	"BOARD_ID=GENERIC_F103VBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VBIX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VBIX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103VBIX_MCU}
)
target_link_libraries(GENERIC_F103VBIX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VBTX
# -----------------------------------------------------------------------------

set(GENERIC_F103VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V8(H-T)_F103VB(H-I-T)")
set(GENERIC_F103VBTX_MAXSIZE 131072)
set(GENERIC_F103VBTX_MAXDATASIZE 20480)
set(GENERIC_F103VBTX_MCU cortex-m3)
add_library(GENERIC_F103VBTX INTERFACE)
target_compile_options(GENERIC_F103VBTX INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VBTX_MCU}
)
target_compile_definitions(GENERIC_F103VBTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VBTX"
	"BOARD_NAME=\"GENERIC_F103VBTX\""
	"BOARD_ID=GENERIC_F103VBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_F103VBTX_MCU}
)
target_link_libraries(GENERIC_F103VBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VCHX
# -----------------------------------------------------------------------------

set(GENERIC_F103VCHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VCHX_MAXSIZE 262144)
set(GENERIC_F103VCHX_MAXDATASIZE 49152)
set(GENERIC_F103VCHX_MCU cortex-m3)
add_library(GENERIC_F103VCHX INTERFACE)
target_compile_options(GENERIC_F103VCHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VCHX_MCU}
)
target_compile_definitions(GENERIC_F103VCHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VCHX"
	"BOARD_NAME=\"GENERIC_F103VCHX\""
	"BOARD_ID=GENERIC_F103VCHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VCHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VCHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VCHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VCHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103VCHX_MCU}
)
target_link_libraries(GENERIC_F103VCHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VCTX
# -----------------------------------------------------------------------------

set(GENERIC_F103VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VCTX_MAXSIZE 262144)
set(GENERIC_F103VCTX_MAXDATASIZE 49152)
set(GENERIC_F103VCTX_MCU cortex-m3)
add_library(GENERIC_F103VCTX INTERFACE)
target_compile_options(GENERIC_F103VCTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VCTX_MCU}
)
target_compile_definitions(GENERIC_F103VCTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VCTX"
	"BOARD_NAME=\"GENERIC_F103VCTX\""
	"BOARD_ID=GENERIC_F103VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103VCTX_MCU}
)
target_link_libraries(GENERIC_F103VCTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VDHX
# -----------------------------------------------------------------------------

set(GENERIC_F103VDHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VDHX_MAXSIZE 393216)
set(GENERIC_F103VDHX_MAXDATASIZE 65536)
set(GENERIC_F103VDHX_MCU cortex-m3)
add_library(GENERIC_F103VDHX INTERFACE)
target_compile_options(GENERIC_F103VDHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VDHX_MCU}
)
target_compile_definitions(GENERIC_F103VDHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VDHX"
	"BOARD_NAME=\"GENERIC_F103VDHX\""
	"BOARD_ID=GENERIC_F103VDHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VDHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VDHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VDHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VDHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103VDHX_MCU}
)
target_link_libraries(GENERIC_F103VDHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VDTX
# -----------------------------------------------------------------------------

set(GENERIC_F103VDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VDTX_MAXSIZE 393216)
set(GENERIC_F103VDTX_MAXDATASIZE 65536)
set(GENERIC_F103VDTX_MCU cortex-m3)
add_library(GENERIC_F103VDTX INTERFACE)
target_compile_options(GENERIC_F103VDTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VDTX_MCU}
)
target_compile_definitions(GENERIC_F103VDTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VDTX"
	"BOARD_NAME=\"GENERIC_F103VDTX\""
	"BOARD_ID=GENERIC_F103VDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103VDTX_MCU}
)
target_link_libraries(GENERIC_F103VDTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VEHX
# -----------------------------------------------------------------------------

set(GENERIC_F103VEHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VEHX_MAXSIZE 524288)
set(GENERIC_F103VEHX_MAXDATASIZE 65536)
set(GENERIC_F103VEHX_MCU cortex-m3)
add_library(GENERIC_F103VEHX INTERFACE)
target_compile_options(GENERIC_F103VEHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VEHX_MCU}
)
target_compile_definitions(GENERIC_F103VEHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VEHX"
	"BOARD_NAME=\"GENERIC_F103VEHX\""
	"BOARD_ID=GENERIC_F103VEHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VEHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VEHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VEHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VEHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103VEHX_MCU}
)
target_link_libraries(GENERIC_F103VEHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VETX
# -----------------------------------------------------------------------------

set(GENERIC_F103VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(C-D-E)(H-T)")
set(GENERIC_F103VETX_MAXSIZE 524288)
set(GENERIC_F103VETX_MAXDATASIZE 65536)
set(GENERIC_F103VETX_MCU cortex-m3)
add_library(GENERIC_F103VETX INTERFACE)
target_compile_options(GENERIC_F103VETX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VETX_MCU}
)
target_compile_definitions(GENERIC_F103VETX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VETX"
	"BOARD_NAME=\"GENERIC_F103VETX\""
	"BOARD_ID=GENERIC_F103VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VETX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VETX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103VETX_MCU}
)
target_link_libraries(GENERIC_F103VETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VFTX
# -----------------------------------------------------------------------------

set(GENERIC_F103VFTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(F-G)T")
set(GENERIC_F103VFTX_MAXSIZE 786432)
set(GENERIC_F103VFTX_MAXDATASIZE 98304)
set(GENERIC_F103VFTX_MCU cortex-m3)
add_library(GENERIC_F103VFTX INTERFACE)
target_compile_options(GENERIC_F103VFTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VFTX_MCU}
)
target_compile_definitions(GENERIC_F103VFTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VFTX"
	"BOARD_NAME=\"GENERIC_F103VFTX\""
	"BOARD_ID=GENERIC_F103VFTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VFTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VFTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VFTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VFTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=786432"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103VFTX_MCU}
)
target_link_libraries(GENERIC_F103VFTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103VGTX
# -----------------------------------------------------------------------------

set(GENERIC_F103VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103V(F-G)T")
set(GENERIC_F103VGTX_MAXSIZE 1048576)
set(GENERIC_F103VGTX_MAXDATASIZE 98304)
set(GENERIC_F103VGTX_MCU cortex-m3)
add_library(GENERIC_F103VGTX INTERFACE)
target_compile_options(GENERIC_F103VGTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103VGTX_MCU}
)
target_compile_definitions(GENERIC_F103VGTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103VGTX"
	"BOARD_NAME=\"GENERIC_F103VGTX\""
	"BOARD_ID=GENERIC_F103VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103VGTX_MCU}
)
target_link_libraries(GENERIC_F103VGTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZCHX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZCHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZCHX_MAXSIZE 262144)
set(GENERIC_F103ZCHX_MAXDATASIZE 49152)
set(GENERIC_F103ZCHX_MCU cortex-m3)
add_library(GENERIC_F103ZCHX INTERFACE)
target_compile_options(GENERIC_F103ZCHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZCHX_MCU}
)
target_compile_definitions(GENERIC_F103ZCHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZCHX"
	"BOARD_NAME=\"GENERIC_F103ZCHX\""
	"BOARD_ID=GENERIC_F103ZCHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZCHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZCHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZCHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZCHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103ZCHX_MCU}
)
target_link_libraries(GENERIC_F103ZCHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZCTX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZCTX_MAXSIZE 262144)
set(GENERIC_F103ZCTX_MAXDATASIZE 49152)
set(GENERIC_F103ZCTX_MCU cortex-m3)
add_library(GENERIC_F103ZCTX INTERFACE)
target_compile_options(GENERIC_F103ZCTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZCTX_MCU}
)
target_compile_definitions(GENERIC_F103ZCTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZCTX"
	"BOARD_NAME=\"GENERIC_F103ZCTX\""
	"BOARD_ID=GENERIC_F103ZCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_F103ZCTX_MCU}
)
target_link_libraries(GENERIC_F103ZCTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZDHX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZDHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZDHX_MAXSIZE 393216)
set(GENERIC_F103ZDHX_MAXDATASIZE 65536)
set(GENERIC_F103ZDHX_MCU cortex-m3)
add_library(GENERIC_F103ZDHX INTERFACE)
target_compile_options(GENERIC_F103ZDHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZDHX_MCU}
)
target_compile_definitions(GENERIC_F103ZDHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZDHX"
	"BOARD_NAME=\"GENERIC_F103ZDHX\""
	"BOARD_ID=GENERIC_F103ZDHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZDHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZDHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZDHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZDHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103ZDHX_MCU}
)
target_link_libraries(GENERIC_F103ZDHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZDTX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZDTX_MAXSIZE 393216)
set(GENERIC_F103ZDTX_MAXDATASIZE 65536)
set(GENERIC_F103ZDTX_MCU cortex-m3)
add_library(GENERIC_F103ZDTX INTERFACE)
target_compile_options(GENERIC_F103ZDTX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZDTX_MCU}
)
target_compile_definitions(GENERIC_F103ZDTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZDTX"
	"BOARD_NAME=\"GENERIC_F103ZDTX\""
	"BOARD_ID=GENERIC_F103ZDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103ZDTX_MCU}
)
target_link_libraries(GENERIC_F103ZDTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZEHX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZEHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZEHX_MAXSIZE 524288)
set(GENERIC_F103ZEHX_MAXDATASIZE 65536)
set(GENERIC_F103ZEHX_MCU cortex-m3)
add_library(GENERIC_F103ZEHX INTERFACE)
target_compile_options(GENERIC_F103ZEHX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZEHX_MCU}
)
target_compile_definitions(GENERIC_F103ZEHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZEHX"
	"BOARD_NAME=\"GENERIC_F103ZEHX\""
	"BOARD_ID=GENERIC_F103ZEHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZEHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZEHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZEHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZEHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103ZEHX_MCU}
)
target_link_libraries(GENERIC_F103ZEHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(GENERIC_F103ZETX_MAXSIZE 524288)
set(GENERIC_F103ZETX_MAXDATASIZE 65536)
set(GENERIC_F103ZETX_MCU cortex-m3)
add_library(GENERIC_F103ZETX INTERFACE)
target_compile_options(GENERIC_F103ZETX INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZETX_MCU}
)
target_compile_definitions(GENERIC_F103ZETX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZETX"
	"BOARD_NAME=\"GENERIC_F103ZETX\""
	"BOARD_ID=GENERIC_F103ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_F103ZETX_MCU}
)
target_link_libraries(GENERIC_F103ZETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZFHX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZFHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(F-G)(H-T)")
set(GENERIC_F103ZFHX_MAXSIZE 786432)
set(GENERIC_F103ZFHX_MAXDATASIZE 98304)
set(GENERIC_F103ZFHX_MCU cortex-m3)
add_library(GENERIC_F103ZFHX INTERFACE)
target_compile_options(GENERIC_F103ZFHX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZFHX_MCU}
)
target_compile_definitions(GENERIC_F103ZFHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZFHX"
	"BOARD_NAME=\"GENERIC_F103ZFHX\""
	"BOARD_ID=GENERIC_F103ZFHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZFHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZFHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZFHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZFHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=786432"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103ZFHX_MCU}
)
target_link_libraries(GENERIC_F103ZFHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZFTX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZFTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(F-G)(H-T)")
set(GENERIC_F103ZFTX_MAXSIZE 786432)
set(GENERIC_F103ZFTX_MAXDATASIZE 98304)
set(GENERIC_F103ZFTX_MCU cortex-m3)
add_library(GENERIC_F103ZFTX INTERFACE)
target_compile_options(GENERIC_F103ZFTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZFTX_MCU}
)
target_compile_definitions(GENERIC_F103ZFTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZFTX"
	"BOARD_NAME=\"GENERIC_F103ZFTX\""
	"BOARD_ID=GENERIC_F103ZFTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZFTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZFTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZFTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZFTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=786432"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103ZFTX_MCU}
)
target_link_libraries(GENERIC_F103ZFTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZGHX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(F-G)(H-T)")
set(GENERIC_F103ZGHX_MAXSIZE 1048576)
set(GENERIC_F103ZGHX_MAXDATASIZE 98304)
set(GENERIC_F103ZGHX_MCU cortex-m3)
add_library(GENERIC_F103ZGHX INTERFACE)
target_compile_options(GENERIC_F103ZGHX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZGHX_MCU}
)
target_compile_definitions(GENERIC_F103ZGHX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZGHX"
	"BOARD_NAME=\"GENERIC_F103ZGHX\""
	"BOARD_ID=GENERIC_F103ZGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZGHX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZGHX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103ZGHX_MCU}
)
target_link_libraries(GENERIC_F103ZGHX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F103ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F103ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(F-G)(H-T)")
set(GENERIC_F103ZGTX_MAXSIZE 1048576)
set(GENERIC_F103ZGTX_MAXDATASIZE 98304)
set(GENERIC_F103ZGTX_MCU cortex-m3)
add_library(GENERIC_F103ZGTX INTERFACE)
target_compile_options(GENERIC_F103ZGTX INTERFACE
  "SHELL:-DSTM32F103xG   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F103ZGTX_MCU}
)
target_compile_definitions(GENERIC_F103ZGTX INTERFACE
  "STM32F1xx"
	"ARDUINO_GENERIC_F103ZGTX"
	"BOARD_NAME=\"GENERIC_F103ZGTX\""
	"BOARD_ID=GENERIC_F103ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F103ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${GENERIC_F103ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F103ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F103ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:"
  -mcpu=${GENERIC_F103ZGTX_MCU}
)
target_link_libraries(GENERIC_F103ZGTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F207ZCTX
# -----------------------------------------------------------------------------

set(GENERIC_F207ZCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F207ZCTX_MAXSIZE 262144)
set(GENERIC_F207ZCTX_MAXDATASIZE 131072)
set(GENERIC_F207ZCTX_MCU cortex-m3)
add_library(GENERIC_F207ZCTX INTERFACE)
target_compile_options(GENERIC_F207ZCTX INTERFACE
  "SHELL:-DSTM32F207xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F207ZCTX_MCU}
)
target_compile_definitions(GENERIC_F207ZCTX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F207ZCTX"
	"BOARD_NAME=\"GENERIC_F207ZCTX\""
	"BOARD_ID=GENERIC_F207ZCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F207ZCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F207ZCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F207ZCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F207ZCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F207ZCTX_MCU}
)
target_link_libraries(GENERIC_F207ZCTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F207ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F207ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F207ZETX_MAXSIZE 524288)
set(GENERIC_F207ZETX_MAXDATASIZE 131072)
set(GENERIC_F207ZETX_MCU cortex-m3)
add_library(GENERIC_F207ZETX INTERFACE)
target_compile_options(GENERIC_F207ZETX INTERFACE
  "SHELL:-DSTM32F207xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F207ZETX_MCU}
)
target_compile_definitions(GENERIC_F207ZETX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F207ZETX"
	"BOARD_NAME=\"GENERIC_F207ZETX\""
	"BOARD_ID=GENERIC_F207ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F207ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F207ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F207ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F207ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F207ZETX_MCU}
)
target_link_libraries(GENERIC_F207ZETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F207ZFTX
# -----------------------------------------------------------------------------

set(GENERIC_F207ZFTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F207ZFTX_MAXSIZE 786432)
set(GENERIC_F207ZFTX_MAXDATASIZE 131072)
set(GENERIC_F207ZFTX_MCU cortex-m3)
add_library(GENERIC_F207ZFTX INTERFACE)
target_compile_options(GENERIC_F207ZFTX INTERFACE
  "SHELL:-DSTM32F207xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F207ZFTX_MCU}
)
target_compile_definitions(GENERIC_F207ZFTX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F207ZFTX"
	"BOARD_NAME=\"GENERIC_F207ZFTX\""
	"BOARD_ID=GENERIC_F207ZFTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F207ZFTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F207ZFTX_VARIANT_PATH}
)

target_link_options(GENERIC_F207ZFTX INTERFACE
  "LINKER:--default-script=${GENERIC_F207ZFTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=786432"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F207ZFTX_MCU}
)
target_link_libraries(GENERIC_F207ZFTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F207ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F207ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F207ZGTX_MAXSIZE 1048576)
set(GENERIC_F207ZGTX_MAXDATASIZE 131072)
set(GENERIC_F207ZGTX_MCU cortex-m3)
add_library(GENERIC_F207ZGTX INTERFACE)
target_compile_options(GENERIC_F207ZGTX INTERFACE
  "SHELL:-DSTM32F207xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F207ZGTX_MCU}
)
target_compile_definitions(GENERIC_F207ZGTX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F207ZGTX"
	"BOARD_NAME=\"GENERIC_F207ZGTX\""
	"BOARD_ID=GENERIC_F207ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F207ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F207ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F207ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F207ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F207ZGTX_MCU}
)
target_link_libraries(GENERIC_F207ZGTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F217ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F217ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F217ZETX_MAXSIZE 524288)
set(GENERIC_F217ZETX_MAXDATASIZE 131072)
set(GENERIC_F217ZETX_MCU cortex-m3)
add_library(GENERIC_F217ZETX INTERFACE)
target_compile_options(GENERIC_F217ZETX INTERFACE
  "SHELL:-DSTM32F217xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F217ZETX_MCU}
)
target_compile_definitions(GENERIC_F217ZETX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F217ZETX"
	"BOARD_NAME=\"GENERIC_F217ZETX\""
	"BOARD_ID=GENERIC_F217ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F217ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F217ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F217ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F217ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F217ZETX_MCU}
)
target_link_libraries(GENERIC_F217ZETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F217ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F217ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(GENERIC_F217ZGTX_MAXSIZE 1048576)
set(GENERIC_F217ZGTX_MAXDATASIZE 131072)
set(GENERIC_F217ZGTX_MCU cortex-m3)
add_library(GENERIC_F217ZGTX INTERFACE)
target_compile_options(GENERIC_F217ZGTX INTERFACE
  "SHELL:-DSTM32F217xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_F217ZGTX_MCU}
)
target_compile_definitions(GENERIC_F217ZGTX INTERFACE
  "STM32F2xx"
	"ARDUINO_GENERIC_F217ZGTX"
	"BOARD_NAME=\"GENERIC_F217ZGTX\""
	"BOARD_ID=GENERIC_F217ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F217ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${GENERIC_F217ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F217ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F217ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${GENERIC_F217ZGTX_MCU}
)
target_link_libraries(GENERIC_F217ZGTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_F302R6TX
# -----------------------------------------------------------------------------

set(GENERIC_F302R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F302R(6-8)T")
set(GENERIC_F302R6TX_MAXSIZE 32768)
set(GENERIC_F302R6TX_MAXDATASIZE 16384)
set(GENERIC_F302R6TX_MCU cortex-m4)
add_library(GENERIC_F302R6TX INTERFACE)
target_compile_options(GENERIC_F302R6TX INTERFACE
  "SHELL:-DSTM32F302x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F302R6TX_MCU}
)
target_compile_definitions(GENERIC_F302R6TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F302R6TX"
	"BOARD_NAME=\"GENERIC_F302R6TX\""
	"BOARD_ID=GENERIC_F302R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F302R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F302R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F302R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F302R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F302R6TX_MCU}
)
target_link_libraries(GENERIC_F302R6TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F302R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F302R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F302R(6-8)T")
set(GENERIC_F302R8TX_MAXSIZE 65536)
set(GENERIC_F302R8TX_MAXDATASIZE 16384)
set(GENERIC_F302R8TX_MCU cortex-m4)
add_library(GENERIC_F302R8TX INTERFACE)
target_compile_options(GENERIC_F302R8TX INTERFACE
  "SHELL:-DSTM32F302x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F302R8TX_MCU}
)
target_compile_definitions(GENERIC_F302R8TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F302R8TX"
	"BOARD_NAME=\"GENERIC_F302R8TX\""
	"BOARD_ID=GENERIC_F302R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F302R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F302R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F302R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F302R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F302R8TX_MCU}
)
target_link_libraries(GENERIC_F302R8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F303CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303C(B-C)T")
set(GENERIC_F303CBTX_MAXSIZE 131072)
set(GENERIC_F303CBTX_MAXDATASIZE 32768)
set(GENERIC_F303CBTX_MCU cortex-m4)
add_library(GENERIC_F303CBTX INTERFACE)
target_compile_options(GENERIC_F303CBTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303CBTX_MCU}
)
target_compile_definitions(GENERIC_F303CBTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303CBTX"
	"BOARD_NAME=\"GENERIC_F303CBTX\""
	"BOARD_ID=GENERIC_F303CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303CBTX_MCU}
)
target_link_libraries(GENERIC_F303CBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303CCTX
# -----------------------------------------------------------------------------

set(GENERIC_F303CCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303C(B-C)T")
set(GENERIC_F303CCTX_MAXSIZE 262144)
set(GENERIC_F303CCTX_MAXDATASIZE 40960)
set(GENERIC_F303CCTX_MCU cortex-m4)
add_library(GENERIC_F303CCTX INTERFACE)
target_compile_options(GENERIC_F303CCTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303CCTX_MCU}
)
target_compile_definitions(GENERIC_F303CCTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303CCTX"
	"BOARD_NAME=\"GENERIC_F303CCTX\""
	"BOARD_ID=GENERIC_F303CCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303CCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303CCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303CCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303CCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303CCTX_MCU}
)
target_link_libraries(GENERIC_F303CCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303K6TX
# -----------------------------------------------------------------------------

set(GENERIC_F303K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(GENERIC_F303K6TX_MAXSIZE 32768)
set(GENERIC_F303K6TX_MAXDATASIZE 12288)
set(GENERIC_F303K6TX_MCU cortex-m4)
add_library(GENERIC_F303K6TX INTERFACE)
target_compile_options(GENERIC_F303K6TX INTERFACE
  "SHELL:-DSTM32F303x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303K6TX_MCU}
)
target_compile_definitions(GENERIC_F303K6TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303K6TX"
	"BOARD_NAME=\"GENERIC_F303K6TX\""
	"BOARD_ID=GENERIC_F303K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F303K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F303K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303K6TX_MCU}
)
target_link_libraries(GENERIC_F303K6TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303K8TX
# -----------------------------------------------------------------------------

set(GENERIC_F303K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(GENERIC_F303K8TX_MAXSIZE 65536)
set(GENERIC_F303K8TX_MAXDATASIZE 12288)
set(GENERIC_F303K8TX_MCU cortex-m4)
add_library(GENERIC_F303K8TX INTERFACE)
target_compile_options(GENERIC_F303K8TX INTERFACE
  "SHELL:-DSTM32F303x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303K8TX_MCU}
)
target_compile_definitions(GENERIC_F303K8TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303K8TX"
	"BOARD_NAME=\"GENERIC_F303K8TX\""
	"BOARD_ID=GENERIC_F303K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F303K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F303K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303K8TX_MCU}
)
target_link_libraries(GENERIC_F303K8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F303RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(B-C)T")
set(GENERIC_F303RBTX_MAXSIZE 131072)
set(GENERIC_F303RBTX_MAXDATASIZE 32768)
set(GENERIC_F303RBTX_MCU cortex-m4)
add_library(GENERIC_F303RBTX INTERFACE)
target_compile_options(GENERIC_F303RBTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303RBTX_MCU}
)
target_compile_definitions(GENERIC_F303RBTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303RBTX"
	"BOARD_NAME=\"GENERIC_F303RBTX\""
	"BOARD_ID=GENERIC_F303RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303RBTX_MCU}
)
target_link_libraries(GENERIC_F303RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F303RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(B-C)T")
set(GENERIC_F303RCTX_MAXSIZE 262144)
set(GENERIC_F303RCTX_MAXDATASIZE 40960)
set(GENERIC_F303RCTX_MCU cortex-m4)
add_library(GENERIC_F303RCTX INTERFACE)
target_compile_options(GENERIC_F303RCTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303RCTX_MCU}
)
target_compile_definitions(GENERIC_F303RCTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303RCTX"
	"BOARD_NAME=\"GENERIC_F303RCTX\""
	"BOARD_ID=GENERIC_F303RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303RCTX_MCU}
)
target_link_libraries(GENERIC_F303RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303RDTX
# -----------------------------------------------------------------------------

set(GENERIC_F303RDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(D-E)T")
set(GENERIC_F303RDTX_MAXSIZE 393216)
set(GENERIC_F303RDTX_MAXDATASIZE 65536)
set(GENERIC_F303RDTX_MCU cortex-m4)
add_library(GENERIC_F303RDTX INTERFACE)
target_compile_options(GENERIC_F303RDTX INTERFACE
  "SHELL:-DSTM32F303xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303RDTX_MCU}
)
target_compile_definitions(GENERIC_F303RDTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303RDTX"
	"BOARD_NAME=\"GENERIC_F303RDTX\""
	"BOARD_ID=GENERIC_F303RDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303RDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303RDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303RDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303RDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303RDTX_MCU}
)
target_link_libraries(GENERIC_F303RDTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303RETX
# -----------------------------------------------------------------------------

set(GENERIC_F303RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(D-E)T")
set(GENERIC_F303RETX_MAXSIZE 524288)
set(GENERIC_F303RETX_MAXDATASIZE 65536)
set(GENERIC_F303RETX_MCU cortex-m4)
add_library(GENERIC_F303RETX INTERFACE)
target_compile_options(GENERIC_F303RETX INTERFACE
  "SHELL:-DSTM32F303xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303RETX_MCU}
)
target_compile_definitions(GENERIC_F303RETX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303RETX"
	"BOARD_NAME=\"GENERIC_F303RETX\""
	"BOARD_ID=GENERIC_F303RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F303RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F303RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303RETX_MCU}
)
target_link_libraries(GENERIC_F303RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303VBTX
# -----------------------------------------------------------------------------

set(GENERIC_F303VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303V(B-C)T")
set(GENERIC_F303VBTX_MAXSIZE 131072)
set(GENERIC_F303VBTX_MAXDATASIZE 32768)
set(GENERIC_F303VBTX_MCU cortex-m4)
add_library(GENERIC_F303VBTX INTERFACE)
target_compile_options(GENERIC_F303VBTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303VBTX_MCU}
)
target_compile_definitions(GENERIC_F303VBTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303VBTX"
	"BOARD_NAME=\"GENERIC_F303VBTX\""
	"BOARD_ID=GENERIC_F303VBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303VBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303VBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303VBTX_MCU}
)
target_link_libraries(GENERIC_F303VBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F303VCTX
# -----------------------------------------------------------------------------

set(GENERIC_F303VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303V(B-C)T")
set(GENERIC_F303VCTX_MAXSIZE 262144)
set(GENERIC_F303VCTX_MAXDATASIZE 40960)
set(GENERIC_F303VCTX_MCU cortex-m4)
add_library(GENERIC_F303VCTX INTERFACE)
target_compile_options(GENERIC_F303VCTX INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F303VCTX_MCU}
)
target_compile_definitions(GENERIC_F303VCTX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F303VCTX"
	"BOARD_NAME=\"GENERIC_F303VCTX\""
	"BOARD_ID=GENERIC_F303VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F303VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F303VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F303VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F303VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F303VCTX_MCU}
)
target_link_libraries(GENERIC_F303VCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F334K4TX
# -----------------------------------------------------------------------------

set(GENERIC_F334K4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(GENERIC_F334K4TX_MAXSIZE 16384)
set(GENERIC_F334K4TX_MAXDATASIZE 12288)
set(GENERIC_F334K4TX_MCU cortex-m4)
add_library(GENERIC_F334K4TX INTERFACE)
target_compile_options(GENERIC_F334K4TX INTERFACE
  "SHELL:-DSTM32F334x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F334K4TX_MCU}
)
target_compile_definitions(GENERIC_F334K4TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F334K4TX"
	"BOARD_NAME=\"GENERIC_F334K4TX\""
	"BOARD_ID=GENERIC_F334K4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F334K4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F334K4TX_VARIANT_PATH}
)

target_link_options(GENERIC_F334K4TX INTERFACE
  "LINKER:--default-script=${GENERIC_F334K4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F334K4TX_MCU}
)
target_link_libraries(GENERIC_F334K4TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F334K6TX
# -----------------------------------------------------------------------------

set(GENERIC_F334K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(GENERIC_F334K6TX_MAXSIZE 32768)
set(GENERIC_F334K6TX_MAXDATASIZE 12288)
set(GENERIC_F334K6TX_MCU cortex-m4)
add_library(GENERIC_F334K6TX INTERFACE)
target_compile_options(GENERIC_F334K6TX INTERFACE
  "SHELL:-DSTM32F334x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F334K6TX_MCU}
)
target_compile_definitions(GENERIC_F334K6TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F334K6TX"
	"BOARD_NAME=\"GENERIC_F334K6TX\""
	"BOARD_ID=GENERIC_F334K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F334K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F334K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_F334K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_F334K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F334K6TX_MCU}
)
target_link_libraries(GENERIC_F334K6TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F334K8TX
# -----------------------------------------------------------------------------

set(GENERIC_F334K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(GENERIC_F334K8TX_MAXSIZE 65536)
set(GENERIC_F334K8TX_MAXDATASIZE 12288)
set(GENERIC_F334K8TX_MCU cortex-m4)
add_library(GENERIC_F334K8TX INTERFACE)
target_compile_options(GENERIC_F334K8TX INTERFACE
  "SHELL:-DSTM32F334x8   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F334K8TX_MCU}
)
target_compile_definitions(GENERIC_F334K8TX INTERFACE
  "STM32F3xx"
	"ARDUINO_GENERIC_F334K8TX"
	"BOARD_NAME=\"GENERIC_F334K8TX\""
	"BOARD_ID=GENERIC_F334K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F334K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${GENERIC_F334K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F334K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F334K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F334K8TX_MCU}
)
target_link_libraries(GENERIC_F334K8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CBUX
# -----------------------------------------------------------------------------

set(GENERIC_F401CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CBUX_MAXSIZE 131072)
set(GENERIC_F401CBUX_MAXDATASIZE 65536)
set(GENERIC_F401CBUX_MCU cortex-m4)
add_library(GENERIC_F401CBUX INTERFACE)
target_compile_options(GENERIC_F401CBUX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CBUX_MCU}
)
target_compile_definitions(GENERIC_F401CBUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CBUX"
	"BOARD_NAME=\"GENERIC_F401CBUX\""
	"BOARD_ID=GENERIC_F401CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CBUX_MCU}
)
target_link_libraries(GENERIC_F401CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CBYX
# -----------------------------------------------------------------------------

set(GENERIC_F401CBYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CBYX_MAXSIZE 131072)
set(GENERIC_F401CBYX_MAXDATASIZE 65536)
set(GENERIC_F401CBYX_MCU cortex-m4)
add_library(GENERIC_F401CBYX INTERFACE)
target_compile_options(GENERIC_F401CBYX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CBYX_MCU}
)
target_compile_definitions(GENERIC_F401CBYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CBYX"
	"BOARD_NAME=\"GENERIC_F401CBYX\""
	"BOARD_ID=GENERIC_F401CBYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CBYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CBYX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CBYX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CBYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CBYX_MCU}
)
target_link_libraries(GENERIC_F401CBYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CCFX
# -----------------------------------------------------------------------------

set(GENERIC_F401CCFX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CCFX_MAXSIZE 262144)
set(GENERIC_F401CCFX_MAXDATASIZE 65536)
set(GENERIC_F401CCFX_MCU cortex-m4)
add_library(GENERIC_F401CCFX INTERFACE)
target_compile_options(GENERIC_F401CCFX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CCFX_MCU}
)
target_compile_definitions(GENERIC_F401CCFX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CCFX"
	"BOARD_NAME=\"GENERIC_F401CCFX\""
	"BOARD_ID=GENERIC_F401CCFX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CCFX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CCFX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CCFX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CCFX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CCFX_MCU}
)
target_link_libraries(GENERIC_F401CCFX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CCUX
# -----------------------------------------------------------------------------

set(GENERIC_F401CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CCUX_MAXSIZE 262144)
set(GENERIC_F401CCUX_MAXDATASIZE 65536)
set(GENERIC_F401CCUX_MCU cortex-m4)
add_library(GENERIC_F401CCUX INTERFACE)
target_compile_options(GENERIC_F401CCUX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CCUX_MCU}
)
target_compile_definitions(GENERIC_F401CCUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CCUX"
	"BOARD_NAME=\"GENERIC_F401CCUX\""
	"BOARD_ID=GENERIC_F401CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CCUX_MCU}
)
target_link_libraries(GENERIC_F401CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CCYX
# -----------------------------------------------------------------------------

set(GENERIC_F401CCYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CCYX_MAXSIZE 262144)
set(GENERIC_F401CCYX_MAXDATASIZE 65536)
set(GENERIC_F401CCYX_MCU cortex-m4)
add_library(GENERIC_F401CCYX INTERFACE)
target_compile_options(GENERIC_F401CCYX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CCYX_MCU}
)
target_compile_definitions(GENERIC_F401CCYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CCYX"
	"BOARD_NAME=\"GENERIC_F401CCYX\""
	"BOARD_ID=GENERIC_F401CCYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CCYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CCYX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CCYX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CCYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CCYX_MCU}
)
target_link_libraries(GENERIC_F401CCYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CDUX
# -----------------------------------------------------------------------------

set(GENERIC_F401CDUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CDUX_MAXSIZE 393216)
set(GENERIC_F401CDUX_MAXDATASIZE 98304)
set(GENERIC_F401CDUX_MCU cortex-m4)
add_library(GENERIC_F401CDUX INTERFACE)
target_compile_options(GENERIC_F401CDUX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CDUX_MCU}
)
target_compile_definitions(GENERIC_F401CDUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CDUX"
	"BOARD_NAME=\"GENERIC_F401CDUX\""
	"BOARD_ID=GENERIC_F401CDUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CDUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CDUX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CDUX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CDUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CDUX_MCU}
)
target_link_libraries(GENERIC_F401CDUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CDYX
# -----------------------------------------------------------------------------

set(GENERIC_F401CDYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CDYX_MAXSIZE 393216)
set(GENERIC_F401CDYX_MAXDATASIZE 98304)
set(GENERIC_F401CDYX_MCU cortex-m4)
add_library(GENERIC_F401CDYX INTERFACE)
target_compile_options(GENERIC_F401CDYX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CDYX_MCU}
)
target_compile_definitions(GENERIC_F401CDYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CDYX"
	"BOARD_NAME=\"GENERIC_F401CDYX\""
	"BOARD_ID=GENERIC_F401CDYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CDYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CDYX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CDYX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CDYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CDYX_MCU}
)
target_link_libraries(GENERIC_F401CDYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CEUX
# -----------------------------------------------------------------------------

set(GENERIC_F401CEUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CEUX_MAXSIZE 524288)
set(GENERIC_F401CEUX_MAXDATASIZE 98304)
set(GENERIC_F401CEUX_MCU cortex-m4)
add_library(GENERIC_F401CEUX INTERFACE)
target_compile_options(GENERIC_F401CEUX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CEUX_MCU}
)
target_compile_definitions(GENERIC_F401CEUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CEUX"
	"BOARD_NAME=\"GENERIC_F401CEUX\""
	"BOARD_ID=GENERIC_F401CEUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CEUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CEUX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CEUX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CEUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CEUX_MCU}
)
target_link_libraries(GENERIC_F401CEUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401CEYX
# -----------------------------------------------------------------------------

set(GENERIC_F401CEYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(GENERIC_F401CEYX_MAXSIZE 524288)
set(GENERIC_F401CEYX_MAXDATASIZE 98304)
set(GENERIC_F401CEYX_MCU cortex-m4)
add_library(GENERIC_F401CEYX INTERFACE)
target_compile_options(GENERIC_F401CEYX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401CEYX_MCU}
)
target_compile_definitions(GENERIC_F401CEYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401CEYX"
	"BOARD_NAME=\"GENERIC_F401CEYX\""
	"BOARD_ID=GENERIC_F401CEYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401CEYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401CEYX_VARIANT_PATH}
)

target_link_options(GENERIC_F401CEYX INTERFACE
  "LINKER:--default-script=${GENERIC_F401CEYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401CEYX_MCU}
)
target_link_libraries(GENERIC_F401CEYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F401RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(GENERIC_F401RBTX_MAXSIZE 131072)
set(GENERIC_F401RBTX_MAXDATASIZE 65536)
set(GENERIC_F401RBTX_MCU cortex-m4)
add_library(GENERIC_F401RBTX INTERFACE)
target_compile_options(GENERIC_F401RBTX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401RBTX_MCU}
)
target_compile_definitions(GENERIC_F401RBTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401RBTX"
	"BOARD_NAME=\"GENERIC_F401RBTX\""
	"BOARD_ID=GENERIC_F401RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401RBTX_MCU}
)
target_link_libraries(GENERIC_F401RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F401RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(GENERIC_F401RCTX_MAXSIZE 262144)
set(GENERIC_F401RCTX_MAXDATASIZE 65536)
set(GENERIC_F401RCTX_MCU cortex-m4)
add_library(GENERIC_F401RCTX INTERFACE)
target_compile_options(GENERIC_F401RCTX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401RCTX_MCU}
)
target_compile_definitions(GENERIC_F401RCTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401RCTX"
	"BOARD_NAME=\"GENERIC_F401RCTX\""
	"BOARD_ID=GENERIC_F401RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401RCTX_MCU}
)
target_link_libraries(GENERIC_F401RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401RDTX
# -----------------------------------------------------------------------------

set(GENERIC_F401RDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(GENERIC_F401RDTX_MAXSIZE 393216)
set(GENERIC_F401RDTX_MAXDATASIZE 98304)
set(GENERIC_F401RDTX_MCU cortex-m4)
add_library(GENERIC_F401RDTX INTERFACE)
target_compile_options(GENERIC_F401RDTX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401RDTX_MCU}
)
target_compile_definitions(GENERIC_F401RDTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401RDTX"
	"BOARD_NAME=\"GENERIC_F401RDTX\""
	"BOARD_ID=GENERIC_F401RDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401RDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401RDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401RDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401RDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401RDTX_MCU}
)
target_link_libraries(GENERIC_F401RDTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401RETX
# -----------------------------------------------------------------------------

set(GENERIC_F401RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(GENERIC_F401RETX_MAXSIZE 524288)
set(GENERIC_F401RETX_MAXDATASIZE 98304)
set(GENERIC_F401RETX_MCU cortex-m4)
add_library(GENERIC_F401RETX INTERFACE)
target_compile_options(GENERIC_F401RETX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401RETX_MCU}
)
target_compile_definitions(GENERIC_F401RETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401RETX"
	"BOARD_NAME=\"GENERIC_F401RETX\""
	"BOARD_ID=GENERIC_F401RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F401RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F401RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401RETX_MCU}
)
target_link_libraries(GENERIC_F401RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401VBTX
# -----------------------------------------------------------------------------

set(GENERIC_F401VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401V(B-C-D-E)T")
set(GENERIC_F401VBTX_MAXSIZE 131072)
set(GENERIC_F401VBTX_MAXDATASIZE 65536)
set(GENERIC_F401VBTX_MCU cortex-m4)
add_library(GENERIC_F401VBTX INTERFACE)
target_compile_options(GENERIC_F401VBTX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401VBTX_MCU}
)
target_compile_definitions(GENERIC_F401VBTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401VBTX"
	"BOARD_NAME=\"GENERIC_F401VBTX\""
	"BOARD_ID=GENERIC_F401VBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401VBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401VBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401VBTX_MCU}
)
target_link_libraries(GENERIC_F401VBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401VCTX
# -----------------------------------------------------------------------------

set(GENERIC_F401VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401V(B-C-D-E)T")
set(GENERIC_F401VCTX_MAXSIZE 262144)
set(GENERIC_F401VCTX_MAXDATASIZE 65536)
set(GENERIC_F401VCTX_MCU cortex-m4)
add_library(GENERIC_F401VCTX INTERFACE)
target_compile_options(GENERIC_F401VCTX INTERFACE
  "SHELL:-DSTM32F401xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401VCTX_MCU}
)
target_compile_definitions(GENERIC_F401VCTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401VCTX"
	"BOARD_NAME=\"GENERIC_F401VCTX\""
	"BOARD_ID=GENERIC_F401VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401VCTX_MCU}
)
target_link_libraries(GENERIC_F401VCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401VDTX
# -----------------------------------------------------------------------------

set(GENERIC_F401VDTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401V(B-C-D-E)T")
set(GENERIC_F401VDTX_MAXSIZE 393216)
set(GENERIC_F401VDTX_MAXDATASIZE 98304)
set(GENERIC_F401VDTX_MCU cortex-m4)
add_library(GENERIC_F401VDTX INTERFACE)
target_compile_options(GENERIC_F401VDTX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401VDTX_MCU}
)
target_compile_definitions(GENERIC_F401VDTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401VDTX"
	"BOARD_NAME=\"GENERIC_F401VDTX\""
	"BOARD_ID=GENERIC_F401VDTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401VDTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401VDTX_VARIANT_PATH}
)

target_link_options(GENERIC_F401VDTX INTERFACE
  "LINKER:--default-script=${GENERIC_F401VDTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=393216"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401VDTX_MCU}
)
target_link_libraries(GENERIC_F401VDTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F401VETX
# -----------------------------------------------------------------------------

set(GENERIC_F401VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401V(B-C-D-E)T")
set(GENERIC_F401VETX_MAXSIZE 524288)
set(GENERIC_F401VETX_MAXDATASIZE 98304)
set(GENERIC_F401VETX_MCU cortex-m4)
add_library(GENERIC_F401VETX INTERFACE)
target_compile_options(GENERIC_F401VETX INTERFACE
  "SHELL:-DSTM32F401xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F401VETX_MCU}
)
target_compile_definitions(GENERIC_F401VETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F401VETX"
	"BOARD_NAME=\"GENERIC_F401VETX\""
	"BOARD_ID=GENERIC_F401VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F401VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F401VETX_VARIANT_PATH}
)

target_link_options(GENERIC_F401VETX INTERFACE
  "LINKER:--default-script=${GENERIC_F401VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F401VETX_MCU}
)
target_link_libraries(GENERIC_F401VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F405RGTX
# -----------------------------------------------------------------------------

set(GENERIC_F405RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F405RGT_F415RGT")
set(GENERIC_F405RGTX_MAXSIZE 1048576)
set(GENERIC_F405RGTX_MAXDATASIZE 131072)
set(GENERIC_F405RGTX_MCU cortex-m4)
add_library(GENERIC_F405RGTX INTERFACE)
target_compile_options(GENERIC_F405RGTX INTERFACE
  "SHELL:-DSTM32F405xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F405RGTX_MCU}
)
target_compile_definitions(GENERIC_F405RGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F405RGTX"
	"BOARD_NAME=\"GENERIC_F405RGTX\""
	"BOARD_ID=GENERIC_F405RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F405RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F405RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F405RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F405RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F405RGTX_MCU}
)
target_link_libraries(GENERIC_F405RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F407VETX
# -----------------------------------------------------------------------------

set(GENERIC_F407VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(GENERIC_F407VETX_MAXSIZE 524288)
set(GENERIC_F407VETX_MAXDATASIZE 131072)
set(GENERIC_F407VETX_MCU cortex-m4)
add_library(GENERIC_F407VETX INTERFACE)
target_compile_options(GENERIC_F407VETX INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F407VETX_MCU}
)
target_compile_definitions(GENERIC_F407VETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F407VETX"
	"BOARD_NAME=\"GENERIC_F407VETX\""
	"BOARD_ID=GENERIC_F407VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F407VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F407VETX_VARIANT_PATH}
)

target_link_options(GENERIC_F407VETX INTERFACE
  "LINKER:--default-script=${GENERIC_F407VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F407VETX_MCU}
)
target_link_libraries(GENERIC_F407VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F407VGTX
# -----------------------------------------------------------------------------

set(GENERIC_F407VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(GENERIC_F407VGTX_MAXSIZE 1048576)
set(GENERIC_F407VGTX_MAXDATASIZE 131072)
set(GENERIC_F407VGTX_MCU cortex-m4)
add_library(GENERIC_F407VGTX INTERFACE)
target_compile_options(GENERIC_F407VGTX INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F407VGTX_MCU}
)
target_compile_definitions(GENERIC_F407VGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F407VGTX"
	"BOARD_NAME=\"GENERIC_F407VGTX\""
	"BOARD_ID=GENERIC_F407VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F407VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F407VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F407VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F407VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F407VGTX_MCU}
)
target_link_libraries(GENERIC_F407VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F407ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F407ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(GENERIC_F407ZETX_MAXSIZE 524288)
set(GENERIC_F407ZETX_MAXDATASIZE 131072)
set(GENERIC_F407ZETX_MCU cortex-m4)
add_library(GENERIC_F407ZETX INTERFACE)
target_compile_options(GENERIC_F407ZETX INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F407ZETX_MCU}
)
target_compile_definitions(GENERIC_F407ZETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F407ZETX"
	"BOARD_NAME=\"GENERIC_F407ZETX\""
	"BOARD_ID=GENERIC_F407ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F407ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F407ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F407ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F407ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F407ZETX_MCU}
)
target_link_libraries(GENERIC_F407ZETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F407ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F407ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(GENERIC_F407ZGTX_MAXSIZE 1048576)
set(GENERIC_F407ZGTX_MAXDATASIZE 131072)
set(GENERIC_F407ZGTX_MCU cortex-m4)
add_library(GENERIC_F407ZGTX INTERFACE)
target_compile_options(GENERIC_F407ZGTX INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F407ZGTX_MCU}
)
target_compile_definitions(GENERIC_F407ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F407ZGTX"
	"BOARD_NAME=\"GENERIC_F407ZGTX\""
	"BOARD_ID=GENERIC_F407ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F407ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F407ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F407ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F407ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F407ZGTX_MCU}
)
target_link_libraries(GENERIC_F407ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410C8TX
# -----------------------------------------------------------------------------

set(GENERIC_F410C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410C(8-B)T")
set(GENERIC_F410C8TX_MAXSIZE 65536)
set(GENERIC_F410C8TX_MAXDATASIZE 32768)
set(GENERIC_F410C8TX_MCU cortex-m4)
add_library(GENERIC_F410C8TX INTERFACE)
target_compile_options(GENERIC_F410C8TX INTERFACE
  "SHELL:-DSTM32F410Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410C8TX_MCU}
)
target_compile_definitions(GENERIC_F410C8TX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410C8TX"
	"BOARD_NAME=\"GENERIC_F410C8TX\""
	"BOARD_ID=GENERIC_F410C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F410C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F410C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410C8TX_MCU}
)
target_link_libraries(GENERIC_F410C8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410C8UX
# -----------------------------------------------------------------------------

set(GENERIC_F410C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410C(8-B)U")
set(GENERIC_F410C8UX_MAXSIZE 65536)
set(GENERIC_F410C8UX_MAXDATASIZE 32768)
set(GENERIC_F410C8UX_MCU cortex-m4)
add_library(GENERIC_F410C8UX INTERFACE)
target_compile_options(GENERIC_F410C8UX INTERFACE
  "SHELL:-DSTM32F410Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410C8UX_MCU}
)
target_compile_definitions(GENERIC_F410C8UX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410C8UX"
	"BOARD_NAME=\"GENERIC_F410C8UX\""
	"BOARD_ID=GENERIC_F410C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_F410C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_F410C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410C8UX_MCU}
)
target_link_libraries(GENERIC_F410C8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410CBTX
# -----------------------------------------------------------------------------

set(GENERIC_F410CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410C(8-B)T")
set(GENERIC_F410CBTX_MAXSIZE 131072)
set(GENERIC_F410CBTX_MAXDATASIZE 32768)
set(GENERIC_F410CBTX_MCU cortex-m4)
add_library(GENERIC_F410CBTX INTERFACE)
target_compile_options(GENERIC_F410CBTX INTERFACE
  "SHELL:-DSTM32F410Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410CBTX_MCU}
)
target_compile_definitions(GENERIC_F410CBTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410CBTX"
	"BOARD_NAME=\"GENERIC_F410CBTX\""
	"BOARD_ID=GENERIC_F410CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F410CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F410CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410CBTX_MCU}
)
target_link_libraries(GENERIC_F410CBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410CBUX
# -----------------------------------------------------------------------------

set(GENERIC_F410CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410C(8-B)U")
set(GENERIC_F410CBUX_MAXSIZE 131072)
set(GENERIC_F410CBUX_MAXDATASIZE 32768)
set(GENERIC_F410CBUX_MCU cortex-m4)
add_library(GENERIC_F410CBUX INTERFACE)
target_compile_options(GENERIC_F410CBUX INTERFACE
  "SHELL:-DSTM32F410Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410CBUX_MCU}
)
target_compile_definitions(GENERIC_F410CBUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410CBUX"
	"BOARD_NAME=\"GENERIC_F410CBUX\""
	"BOARD_ID=GENERIC_F410CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_F410CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_F410CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410CBUX_MCU}
)
target_link_libraries(GENERIC_F410CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410R8IX
# -----------------------------------------------------------------------------

set(GENERIC_F410R8IX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410R(8-B)(I-T)")
set(GENERIC_F410R8IX_MAXSIZE 65536)
set(GENERIC_F410R8IX_MAXDATASIZE 32768)
set(GENERIC_F410R8IX_MCU cortex-m4)
add_library(GENERIC_F410R8IX INTERFACE)
target_compile_options(GENERIC_F410R8IX INTERFACE
  "SHELL:-DSTM32F410Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410R8IX_MCU}
)
target_compile_definitions(GENERIC_F410R8IX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410R8IX"
	"BOARD_NAME=\"GENERIC_F410R8IX\""
	"BOARD_ID=GENERIC_F410R8IX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410R8IX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410R8IX_VARIANT_PATH}
)

target_link_options(GENERIC_F410R8IX INTERFACE
  "LINKER:--default-script=${GENERIC_F410R8IX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410R8IX_MCU}
)
target_link_libraries(GENERIC_F410R8IX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410R8TX
# -----------------------------------------------------------------------------

set(GENERIC_F410R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410R(8-B)(I-T)")
set(GENERIC_F410R8TX_MAXSIZE 65536)
set(GENERIC_F410R8TX_MAXDATASIZE 32768)
set(GENERIC_F410R8TX_MCU cortex-m4)
add_library(GENERIC_F410R8TX INTERFACE)
target_compile_options(GENERIC_F410R8TX INTERFACE
  "SHELL:-DSTM32F410Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410R8TX_MCU}
)
target_compile_definitions(GENERIC_F410R8TX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410R8TX"
	"BOARD_NAME=\"GENERIC_F410R8TX\""
	"BOARD_ID=GENERIC_F410R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F410R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F410R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410R8TX_MCU}
)
target_link_libraries(GENERIC_F410R8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410RBIX
# -----------------------------------------------------------------------------

set(GENERIC_F410RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410R(8-B)(I-T)")
set(GENERIC_F410RBIX_MAXSIZE 131072)
set(GENERIC_F410RBIX_MAXDATASIZE 32768)
set(GENERIC_F410RBIX_MCU cortex-m4)
add_library(GENERIC_F410RBIX INTERFACE)
target_compile_options(GENERIC_F410RBIX INTERFACE
  "SHELL:-DSTM32F410Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410RBIX_MCU}
)
target_compile_definitions(GENERIC_F410RBIX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410RBIX"
	"BOARD_NAME=\"GENERIC_F410RBIX\""
	"BOARD_ID=GENERIC_F410RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_F410RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_F410RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410RBIX_MCU}
)
target_link_libraries(GENERIC_F410RBIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F410RBTX
# -----------------------------------------------------------------------------

set(GENERIC_F410RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F410R(8-B)(I-T)")
set(GENERIC_F410RBTX_MAXSIZE 131072)
set(GENERIC_F410RBTX_MAXDATASIZE 32768)
set(GENERIC_F410RBTX_MCU cortex-m4)
add_library(GENERIC_F410RBTX INTERFACE)
target_compile_options(GENERIC_F410RBTX INTERFACE
  "SHELL:-DSTM32F410Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F410RBTX_MCU}
)
target_compile_definitions(GENERIC_F410RBTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F410RBTX"
	"BOARD_NAME=\"GENERIC_F410RBTX\""
	"BOARD_ID=GENERIC_F410RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F410RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F410RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_F410RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_F410RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F410RBTX_MCU}
)
target_link_libraries(GENERIC_F410RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411CCUX
# -----------------------------------------------------------------------------

set(GENERIC_F411CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(GENERIC_F411CCUX_MAXSIZE 262144)
set(GENERIC_F411CCUX_MAXDATASIZE 131072)
set(GENERIC_F411CCUX_MCU cortex-m4)
add_library(GENERIC_F411CCUX INTERFACE)
target_compile_options(GENERIC_F411CCUX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411CCUX_MCU}
)
target_compile_definitions(GENERIC_F411CCUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411CCUX"
	"BOARD_NAME=\"GENERIC_F411CCUX\""
	"BOARD_ID=GENERIC_F411CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_F411CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_F411CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411CCUX_MCU}
)
target_link_libraries(GENERIC_F411CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411CCYX
# -----------------------------------------------------------------------------

set(GENERIC_F411CCYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(GENERIC_F411CCYX_MAXSIZE 262144)
set(GENERIC_F411CCYX_MAXDATASIZE 131072)
set(GENERIC_F411CCYX_MCU cortex-m4)
add_library(GENERIC_F411CCYX INTERFACE)
target_compile_options(GENERIC_F411CCYX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411CCYX_MCU}
)
target_compile_definitions(GENERIC_F411CCYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411CCYX"
	"BOARD_NAME=\"GENERIC_F411CCYX\""
	"BOARD_ID=GENERIC_F411CCYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411CCYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411CCYX_VARIANT_PATH}
)

target_link_options(GENERIC_F411CCYX INTERFACE
  "LINKER:--default-script=${GENERIC_F411CCYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411CCYX_MCU}
)
target_link_libraries(GENERIC_F411CCYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411CEUX
# -----------------------------------------------------------------------------

set(GENERIC_F411CEUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(GENERIC_F411CEUX_MAXSIZE 524288)
set(GENERIC_F411CEUX_MAXDATASIZE 131072)
set(GENERIC_F411CEUX_MCU cortex-m4)
add_library(GENERIC_F411CEUX INTERFACE)
target_compile_options(GENERIC_F411CEUX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411CEUX_MCU}
)
target_compile_definitions(GENERIC_F411CEUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411CEUX"
	"BOARD_NAME=\"GENERIC_F411CEUX\""
	"BOARD_ID=GENERIC_F411CEUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411CEUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411CEUX_VARIANT_PATH}
)

target_link_options(GENERIC_F411CEUX INTERFACE
  "LINKER:--default-script=${GENERIC_F411CEUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411CEUX_MCU}
)
target_link_libraries(GENERIC_F411CEUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411CEYX
# -----------------------------------------------------------------------------

set(GENERIC_F411CEYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(GENERIC_F411CEYX_MAXSIZE 524288)
set(GENERIC_F411CEYX_MAXDATASIZE 131072)
set(GENERIC_F411CEYX_MCU cortex-m4)
add_library(GENERIC_F411CEYX INTERFACE)
target_compile_options(GENERIC_F411CEYX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411CEYX_MCU}
)
target_compile_definitions(GENERIC_F411CEYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411CEYX"
	"BOARD_NAME=\"GENERIC_F411CEYX\""
	"BOARD_ID=GENERIC_F411CEYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411CEYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411CEYX_VARIANT_PATH}
)

target_link_options(GENERIC_F411CEYX INTERFACE
  "LINKER:--default-script=${GENERIC_F411CEYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411CEYX_MCU}
)
target_link_libraries(GENERIC_F411CEYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F411RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411R(C-E)T")
set(GENERIC_F411RCTX_MAXSIZE 262144)
set(GENERIC_F411RCTX_MAXDATASIZE 131072)
set(GENERIC_F411RCTX_MCU cortex-m4)
add_library(GENERIC_F411RCTX INTERFACE)
target_compile_options(GENERIC_F411RCTX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411RCTX_MCU}
)
target_compile_definitions(GENERIC_F411RCTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411RCTX"
	"BOARD_NAME=\"GENERIC_F411RCTX\""
	"BOARD_ID=GENERIC_F411RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F411RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F411RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411RCTX_MCU}
)
target_link_libraries(GENERIC_F411RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F411RETX
# -----------------------------------------------------------------------------

set(GENERIC_F411RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411R(C-E)T")
set(GENERIC_F411RETX_MAXSIZE 524288)
set(GENERIC_F411RETX_MAXDATASIZE 131072)
set(GENERIC_F411RETX_MCU cortex-m4)
add_library(GENERIC_F411RETX INTERFACE)
target_compile_options(GENERIC_F411RETX INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F411RETX_MCU}
)
target_compile_definitions(GENERIC_F411RETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F411RETX"
	"BOARD_NAME=\"GENERIC_F411RETX\""
	"BOARD_ID=GENERIC_F411RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F411RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F411RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F411RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F411RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F411RETX_MCU}
)
target_link_libraries(GENERIC_F411RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412CEUX
# -----------------------------------------------------------------------------

set(GENERIC_F412CEUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412C(E-G)U")
set(GENERIC_F412CEUX_MAXSIZE 524288)
set(GENERIC_F412CEUX_MAXDATASIZE 262144)
set(GENERIC_F412CEUX_MCU cortex-m4)
add_library(GENERIC_F412CEUX INTERFACE)
target_compile_options(GENERIC_F412CEUX INTERFACE
  "SHELL:-DSTM32F412Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412CEUX_MCU}
)
target_compile_definitions(GENERIC_F412CEUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412CEUX"
	"BOARD_NAME=\"GENERIC_F412CEUX\""
	"BOARD_ID=GENERIC_F412CEUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412CEUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412CEUX_VARIANT_PATH}
)

target_link_options(GENERIC_F412CEUX INTERFACE
  "LINKER:--default-script=${GENERIC_F412CEUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412CEUX_MCU}
)
target_link_libraries(GENERIC_F412CEUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412CGUX
# -----------------------------------------------------------------------------

set(GENERIC_F412CGUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412C(E-G)U")
set(GENERIC_F412CGUX_MAXSIZE 1048576)
set(GENERIC_F412CGUX_MAXDATASIZE 262144)
set(GENERIC_F412CGUX_MCU cortex-m4)
add_library(GENERIC_F412CGUX INTERFACE)
target_compile_options(GENERIC_F412CGUX INTERFACE
  "SHELL:-DSTM32F412Cx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412CGUX_MCU}
)
target_compile_definitions(GENERIC_F412CGUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412CGUX"
	"BOARD_NAME=\"GENERIC_F412CGUX\""
	"BOARD_ID=GENERIC_F412CGUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412CGUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412CGUX_VARIANT_PATH}
)

target_link_options(GENERIC_F412CGUX INTERFACE
  "LINKER:--default-script=${GENERIC_F412CGUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412CGUX_MCU}
)
target_link_libraries(GENERIC_F412CGUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412RETX
# -----------------------------------------------------------------------------

set(GENERIC_F412RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412RETX_MAXSIZE 524288)
set(GENERIC_F412RETX_MAXDATASIZE 262144)
set(GENERIC_F412RETX_MCU cortex-m4)
add_library(GENERIC_F412RETX INTERFACE)
target_compile_options(GENERIC_F412RETX INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412RETX_MCU}
)
target_compile_definitions(GENERIC_F412RETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412RETX"
	"BOARD_NAME=\"GENERIC_F412RETX\""
	"BOARD_ID=GENERIC_F412RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F412RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F412RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412RETX_MCU}
)
target_link_libraries(GENERIC_F412RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412REYX
# -----------------------------------------------------------------------------

set(GENERIC_F412REYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412REYX_MAXSIZE 524288)
set(GENERIC_F412REYX_MAXDATASIZE 262144)
set(GENERIC_F412REYX_MCU cortex-m4)
add_library(GENERIC_F412REYX INTERFACE)
target_compile_options(GENERIC_F412REYX INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412REYX_MCU}
)
target_compile_definitions(GENERIC_F412REYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412REYX"
	"BOARD_NAME=\"GENERIC_F412REYX\""
	"BOARD_ID=GENERIC_F412REYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412REYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412REYX_VARIANT_PATH}
)

target_link_options(GENERIC_F412REYX INTERFACE
  "LINKER:--default-script=${GENERIC_F412REYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412REYX_MCU}
)
target_link_libraries(GENERIC_F412REYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412REYXP
# -----------------------------------------------------------------------------

set(GENERIC_F412REYXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412REYXP_MAXSIZE 524288)
set(GENERIC_F412REYXP_MAXDATASIZE 262144)
set(GENERIC_F412REYXP_MCU cortex-m4)
add_library(GENERIC_F412REYXP INTERFACE)
target_compile_options(GENERIC_F412REYXP INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412REYXP_MCU}
)
target_compile_definitions(GENERIC_F412REYXP INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412REYXP"
	"BOARD_NAME=\"GENERIC_F412REYXP\""
	"BOARD_ID=GENERIC_F412REYXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412REYXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412REYXP_VARIANT_PATH}
)

target_link_options(GENERIC_F412REYXP INTERFACE
  "LINKER:--default-script=${GENERIC_F412REYXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412REYXP_MCU}
)
target_link_libraries(GENERIC_F412REYXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412RGTX
# -----------------------------------------------------------------------------

set(GENERIC_F412RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412RGTX_MAXSIZE 1048576)
set(GENERIC_F412RGTX_MAXDATASIZE 262144)
set(GENERIC_F412RGTX_MCU cortex-m4)
add_library(GENERIC_F412RGTX INTERFACE)
target_compile_options(GENERIC_F412RGTX INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412RGTX_MCU}
)
target_compile_definitions(GENERIC_F412RGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412RGTX"
	"BOARD_NAME=\"GENERIC_F412RGTX\""
	"BOARD_ID=GENERIC_F412RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F412RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F412RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412RGTX_MCU}
)
target_link_libraries(GENERIC_F412RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412RGYX
# -----------------------------------------------------------------------------

set(GENERIC_F412RGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412RGYX_MAXSIZE 1048576)
set(GENERIC_F412RGYX_MAXDATASIZE 262144)
set(GENERIC_F412RGYX_MCU cortex-m4)
add_library(GENERIC_F412RGYX INTERFACE)
target_compile_options(GENERIC_F412RGYX INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412RGYX_MCU}
)
target_compile_definitions(GENERIC_F412RGYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412RGYX"
	"BOARD_NAME=\"GENERIC_F412RGYX\""
	"BOARD_ID=GENERIC_F412RGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412RGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412RGYX_VARIANT_PATH}
)

target_link_options(GENERIC_F412RGYX INTERFACE
  "LINKER:--default-script=${GENERIC_F412RGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412RGYX_MCU}
)
target_link_libraries(GENERIC_F412RGYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F412RGYXP
# -----------------------------------------------------------------------------

set(GENERIC_F412RGYXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(GENERIC_F412RGYXP_MAXSIZE 1048576)
set(GENERIC_F412RGYXP_MAXDATASIZE 262144)
set(GENERIC_F412RGYXP_MCU cortex-m4)
add_library(GENERIC_F412RGYXP INTERFACE)
target_compile_options(GENERIC_F412RGYXP INTERFACE
  "SHELL:-DSTM32F412Rx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F412RGYXP_MCU}
)
target_compile_definitions(GENERIC_F412RGYXP INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F412RGYXP"
	"BOARD_NAME=\"GENERIC_F412RGYXP\""
	"BOARD_ID=GENERIC_F412RGYXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F412RGYXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F412RGYXP_VARIANT_PATH}
)

target_link_options(GENERIC_F412RGYXP INTERFACE
  "LINKER:--default-script=${GENERIC_F412RGYXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F412RGYXP_MCU}
)
target_link_libraries(GENERIC_F412RGYXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413CGUX
# -----------------------------------------------------------------------------

set(GENERIC_F413CGUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413C(G-H)U_F423CHU")
set(GENERIC_F413CGUX_MAXSIZE 1048576)
set(GENERIC_F413CGUX_MAXDATASIZE 327680)
set(GENERIC_F413CGUX_MCU cortex-m4)
add_library(GENERIC_F413CGUX INTERFACE)
target_compile_options(GENERIC_F413CGUX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413CGUX_MCU}
)
target_compile_definitions(GENERIC_F413CGUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413CGUX"
	"BOARD_NAME=\"GENERIC_F413CGUX\""
	"BOARD_ID=GENERIC_F413CGUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413CGUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413CGUX_VARIANT_PATH}
)

target_link_options(GENERIC_F413CGUX INTERFACE
  "LINKER:--default-script=${GENERIC_F413CGUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413CGUX_MCU}
)
target_link_libraries(GENERIC_F413CGUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413CHUX
# -----------------------------------------------------------------------------

set(GENERIC_F413CHUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413C(G-H)U_F423CHU")
set(GENERIC_F413CHUX_MAXSIZE 1572864)
set(GENERIC_F413CHUX_MAXDATASIZE 327680)
set(GENERIC_F413CHUX_MCU cortex-m4)
add_library(GENERIC_F413CHUX INTERFACE)
target_compile_options(GENERIC_F413CHUX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413CHUX_MCU}
)
target_compile_definitions(GENERIC_F413CHUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413CHUX"
	"BOARD_NAME=\"GENERIC_F413CHUX\""
	"BOARD_ID=GENERIC_F413CHUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413CHUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413CHUX_VARIANT_PATH}
)

target_link_options(GENERIC_F413CHUX INTERFACE
  "LINKER:--default-script=${GENERIC_F413CHUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413CHUX_MCU}
)
target_link_libraries(GENERIC_F413CHUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413RGTX
# -----------------------------------------------------------------------------

set(GENERIC_F413RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413R(G-H)T_F423RHT")
set(GENERIC_F413RGTX_MAXSIZE 1048576)
set(GENERIC_F413RGTX_MAXDATASIZE 327680)
set(GENERIC_F413RGTX_MCU cortex-m4)
add_library(GENERIC_F413RGTX INTERFACE)
target_compile_options(GENERIC_F413RGTX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413RGTX_MCU}
)
target_compile_definitions(GENERIC_F413RGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413RGTX"
	"BOARD_NAME=\"GENERIC_F413RGTX\""
	"BOARD_ID=GENERIC_F413RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F413RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F413RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413RGTX_MCU}
)
target_link_libraries(GENERIC_F413RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413RHTX
# -----------------------------------------------------------------------------

set(GENERIC_F413RHTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413R(G-H)T_F423RHT")
set(GENERIC_F413RHTX_MAXSIZE 1572864)
set(GENERIC_F413RHTX_MAXDATASIZE 327680)
set(GENERIC_F413RHTX_MCU cortex-m4)
add_library(GENERIC_F413RHTX INTERFACE)
target_compile_options(GENERIC_F413RHTX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413RHTX_MCU}
)
target_compile_definitions(GENERIC_F413RHTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413RHTX"
	"BOARD_NAME=\"GENERIC_F413RHTX\""
	"BOARD_ID=GENERIC_F413RHTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413RHTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413RHTX_VARIANT_PATH}
)

target_link_options(GENERIC_F413RHTX INTERFACE
  "LINKER:--default-script=${GENERIC_F413RHTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413RHTX_MCU}
)
target_link_libraries(GENERIC_F413RHTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413ZGJX
# -----------------------------------------------------------------------------

set(GENERIC_F413ZGJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F413ZGJX_MAXSIZE 1048576)
set(GENERIC_F413ZGJX_MAXDATASIZE 327680)
set(GENERIC_F413ZGJX_MCU cortex-m4)
add_library(GENERIC_F413ZGJX INTERFACE)
target_compile_options(GENERIC_F413ZGJX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413ZGJX_MCU}
)
target_compile_definitions(GENERIC_F413ZGJX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413ZGJX"
	"BOARD_NAME=\"GENERIC_F413ZGJX\""
	"BOARD_ID=GENERIC_F413ZGJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413ZGJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413ZGJX_VARIANT_PATH}
)

target_link_options(GENERIC_F413ZGJX INTERFACE
  "LINKER:--default-script=${GENERIC_F413ZGJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413ZGJX_MCU}
)
target_link_libraries(GENERIC_F413ZGJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F413ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F413ZGTX_MAXSIZE 1048576)
set(GENERIC_F413ZGTX_MAXDATASIZE 327680)
set(GENERIC_F413ZGTX_MCU cortex-m4)
add_library(GENERIC_F413ZGTX INTERFACE)
target_compile_options(GENERIC_F413ZGTX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413ZGTX_MCU}
)
target_compile_definitions(GENERIC_F413ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413ZGTX"
	"BOARD_NAME=\"GENERIC_F413ZGTX\""
	"BOARD_ID=GENERIC_F413ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F413ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F413ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413ZGTX_MCU}
)
target_link_libraries(GENERIC_F413ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413ZHJX
# -----------------------------------------------------------------------------

set(GENERIC_F413ZHJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F413ZHJX_MAXSIZE 1572864)
set(GENERIC_F413ZHJX_MAXDATASIZE 327680)
set(GENERIC_F413ZHJX_MCU cortex-m4)
add_library(GENERIC_F413ZHJX INTERFACE)
target_compile_options(GENERIC_F413ZHJX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413ZHJX_MCU}
)
target_compile_definitions(GENERIC_F413ZHJX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413ZHJX"
	"BOARD_NAME=\"GENERIC_F413ZHJX\""
	"BOARD_ID=GENERIC_F413ZHJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413ZHJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413ZHJX_VARIANT_PATH}
)

target_link_options(GENERIC_F413ZHJX INTERFACE
  "LINKER:--default-script=${GENERIC_F413ZHJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413ZHJX_MCU}
)
target_link_libraries(GENERIC_F413ZHJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F413ZHTX
# -----------------------------------------------------------------------------

set(GENERIC_F413ZHTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F413ZHTX_MAXSIZE 1572864)
set(GENERIC_F413ZHTX_MAXDATASIZE 327680)
set(GENERIC_F413ZHTX_MCU cortex-m4)
add_library(GENERIC_F413ZHTX INTERFACE)
target_compile_options(GENERIC_F413ZHTX INTERFACE
  "SHELL:-DSTM32F413xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F413ZHTX_MCU}
)
target_compile_definitions(GENERIC_F413ZHTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F413ZHTX"
	"BOARD_NAME=\"GENERIC_F413ZHTX\""
	"BOARD_ID=GENERIC_F413ZHTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F413ZHTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F413ZHTX_VARIANT_PATH}
)

target_link_options(GENERIC_F413ZHTX INTERFACE
  "LINKER:--default-script=${GENERIC_F413ZHTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F413ZHTX_MCU}
)
target_link_libraries(GENERIC_F413ZHTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F415RGTX
# -----------------------------------------------------------------------------

set(GENERIC_F415RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F405RGT_F415RGT")
set(GENERIC_F415RGTX_MAXSIZE 1048576)
set(GENERIC_F415RGTX_MAXDATASIZE 131072)
set(GENERIC_F415RGTX_MCU cortex-m4)
add_library(GENERIC_F415RGTX INTERFACE)
target_compile_options(GENERIC_F415RGTX INTERFACE
  "SHELL:-DSTM32F415xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F415RGTX_MCU}
)
target_compile_definitions(GENERIC_F415RGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F415RGTX"
	"BOARD_NAME=\"GENERIC_F415RGTX\""
	"BOARD_ID=GENERIC_F415RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F415RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F415RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F415RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F415RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F415RGTX_MCU}
)
target_link_libraries(GENERIC_F415RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F417VETX
# -----------------------------------------------------------------------------

set(GENERIC_F417VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(GENERIC_F417VETX_MAXSIZE 524288)
set(GENERIC_F417VETX_MAXDATASIZE 131072)
set(GENERIC_F417VETX_MCU cortex-m4)
add_library(GENERIC_F417VETX INTERFACE)
target_compile_options(GENERIC_F417VETX INTERFACE
  "SHELL:-DSTM32F417xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F417VETX_MCU}
)
target_compile_definitions(GENERIC_F417VETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F417VETX"
	"BOARD_NAME=\"GENERIC_F417VETX\""
	"BOARD_ID=GENERIC_F417VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F417VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F417VETX_VARIANT_PATH}
)

target_link_options(GENERIC_F417VETX INTERFACE
  "LINKER:--default-script=${GENERIC_F417VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F417VETX_MCU}
)
target_link_libraries(GENERIC_F417VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F417VGTX
# -----------------------------------------------------------------------------

set(GENERIC_F417VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(GENERIC_F417VGTX_MAXSIZE 1048576)
set(GENERIC_F417VGTX_MAXDATASIZE 131072)
set(GENERIC_F417VGTX_MCU cortex-m4)
add_library(GENERIC_F417VGTX INTERFACE)
target_compile_options(GENERIC_F417VGTX INTERFACE
  "SHELL:-DSTM32F417xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F417VGTX_MCU}
)
target_compile_definitions(GENERIC_F417VGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F417VGTX"
	"BOARD_NAME=\"GENERIC_F417VGTX\""
	"BOARD_ID=GENERIC_F417VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F417VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F417VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F417VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F417VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F417VGTX_MCU}
)
target_link_libraries(GENERIC_F417VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F417ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F417ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(GENERIC_F417ZETX_MAXSIZE 524288)
set(GENERIC_F417ZETX_MAXDATASIZE 131072)
set(GENERIC_F417ZETX_MCU cortex-m4)
add_library(GENERIC_F417ZETX INTERFACE)
target_compile_options(GENERIC_F417ZETX INTERFACE
  "SHELL:-DSTM32F417xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F417ZETX_MCU}
)
target_compile_definitions(GENERIC_F417ZETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F417ZETX"
	"BOARD_NAME=\"GENERIC_F417ZETX\""
	"BOARD_ID=GENERIC_F417ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F417ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F417ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F417ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F417ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F417ZETX_MCU}
)
target_link_libraries(GENERIC_F417ZETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F417ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F417ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(GENERIC_F417ZGTX_MAXSIZE 1048576)
set(GENERIC_F417ZGTX_MAXDATASIZE 131072)
set(GENERIC_F417ZGTX_MCU cortex-m4)
add_library(GENERIC_F417ZGTX INTERFACE)
target_compile_options(GENERIC_F417ZGTX INTERFACE
  "SHELL:-DSTM32F417xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F417ZGTX_MCU}
)
target_compile_definitions(GENERIC_F417ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F417ZGTX"
	"BOARD_NAME=\"GENERIC_F417ZGTX\""
	"BOARD_ID=GENERIC_F417ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F417ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F417ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F417ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F417ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F417ZGTX_MCU}
)
target_link_libraries(GENERIC_F417ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F423CHUX
# -----------------------------------------------------------------------------

set(GENERIC_F423CHUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413C(G-H)U_F423CHU")
set(GENERIC_F423CHUX_MAXSIZE 1572864)
set(GENERIC_F423CHUX_MAXDATASIZE 327680)
set(GENERIC_F423CHUX_MCU cortex-m4)
add_library(GENERIC_F423CHUX INTERFACE)
target_compile_options(GENERIC_F423CHUX INTERFACE
  "SHELL:-DSTM32F423xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F423CHUX_MCU}
)
target_compile_definitions(GENERIC_F423CHUX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F423CHUX"
	"BOARD_NAME=\"GENERIC_F423CHUX\""
	"BOARD_ID=GENERIC_F423CHUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F423CHUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F423CHUX_VARIANT_PATH}
)

target_link_options(GENERIC_F423CHUX INTERFACE
  "LINKER:--default-script=${GENERIC_F423CHUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F423CHUX_MCU}
)
target_link_libraries(GENERIC_F423CHUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F423RHTX
# -----------------------------------------------------------------------------

set(GENERIC_F423RHTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413R(G-H)T_F423RHT")
set(GENERIC_F423RHTX_MAXSIZE 1572864)
set(GENERIC_F423RHTX_MAXDATASIZE 327680)
set(GENERIC_F423RHTX_MCU cortex-m4)
add_library(GENERIC_F423RHTX INTERFACE)
target_compile_options(GENERIC_F423RHTX INTERFACE
  "SHELL:-DSTM32F423xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F423RHTX_MCU}
)
target_compile_definitions(GENERIC_F423RHTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F423RHTX"
	"BOARD_NAME=\"GENERIC_F423RHTX\""
	"BOARD_ID=GENERIC_F423RHTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F423RHTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F423RHTX_VARIANT_PATH}
)

target_link_options(GENERIC_F423RHTX INTERFACE
  "LINKER:--default-script=${GENERIC_F423RHTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F423RHTX_MCU}
)
target_link_libraries(GENERIC_F423RHTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F423ZHJX
# -----------------------------------------------------------------------------

set(GENERIC_F423ZHJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F423ZHJX_MAXSIZE 1572864)
set(GENERIC_F423ZHJX_MAXDATASIZE 327680)
set(GENERIC_F423ZHJX_MCU cortex-m4)
add_library(GENERIC_F423ZHJX INTERFACE)
target_compile_options(GENERIC_F423ZHJX INTERFACE
  "SHELL:-DSTM32F423xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F423ZHJX_MCU}
)
target_compile_definitions(GENERIC_F423ZHJX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F423ZHJX"
	"BOARD_NAME=\"GENERIC_F423ZHJX\""
	"BOARD_ID=GENERIC_F423ZHJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F423ZHJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F423ZHJX_VARIANT_PATH}
)

target_link_options(GENERIC_F423ZHJX INTERFACE
  "LINKER:--default-script=${GENERIC_F423ZHJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F423ZHJX_MCU}
)
target_link_libraries(GENERIC_F423ZHJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F423ZHTX
# -----------------------------------------------------------------------------

set(GENERIC_F423ZHTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F413Z(G-H)(J-T)_F423ZH(J-T)")
set(GENERIC_F423ZHTX_MAXSIZE 1572864)
set(GENERIC_F423ZHTX_MAXDATASIZE 327680)
set(GENERIC_F423ZHTX_MCU cortex-m4)
add_library(GENERIC_F423ZHTX INTERFACE)
target_compile_options(GENERIC_F423ZHTX INTERFACE
  "SHELL:-DSTM32F423xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F423ZHTX_MCU}
)
target_compile_definitions(GENERIC_F423ZHTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F423ZHTX"
	"BOARD_NAME=\"GENERIC_F423ZHTX\""
	"BOARD_ID=GENERIC_F423ZHTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F423ZHTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F423ZHTX_VARIANT_PATH}
)

target_link_options(GENERIC_F423ZHTX INTERFACE
  "LINKER:--default-script=${GENERIC_F423ZHTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1572864"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F423ZHTX_MCU}
)
target_link_libraries(GENERIC_F423ZHTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F427ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F427ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F427ZGTX_MAXSIZE 1048576)
set(GENERIC_F427ZGTX_MAXDATASIZE 196608)
set(GENERIC_F427ZGTX_MCU cortex-m4)
add_library(GENERIC_F427ZGTX INTERFACE)
target_compile_options(GENERIC_F427ZGTX INTERFACE
  "SHELL:-DSTM32F427xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F427ZGTX_MCU}
)
target_compile_definitions(GENERIC_F427ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F427ZGTX"
	"BOARD_NAME=\"GENERIC_F427ZGTX\""
	"BOARD_ID=GENERIC_F427ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F427ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F427ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F427ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F427ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F427ZGTX_MCU}
)
target_link_libraries(GENERIC_F427ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F427ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F427ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F427ZITX_MAXSIZE 2097152)
set(GENERIC_F427ZITX_MAXDATASIZE 196608)
set(GENERIC_F427ZITX_MCU cortex-m4)
add_library(GENERIC_F427ZITX INTERFACE)
target_compile_options(GENERIC_F427ZITX INTERFACE
  "SHELL:-DSTM32F427xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F427ZITX_MCU}
)
target_compile_definitions(GENERIC_F427ZITX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F427ZITX"
	"BOARD_NAME=\"GENERIC_F427ZITX\""
	"BOARD_ID=GENERIC_F427ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F427ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F427ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F427ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F427ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F427ZITX_MCU}
)
target_link_libraries(GENERIC_F427ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F429ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F429ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F429ZETX_MAXSIZE 524288)
set(GENERIC_F429ZETX_MAXDATASIZE 196608)
set(GENERIC_F429ZETX_MCU cortex-m4)
add_library(GENERIC_F429ZETX INTERFACE)
target_compile_options(GENERIC_F429ZETX INTERFACE
  "SHELL:-DSTM32F429xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F429ZETX_MCU}
)
target_compile_definitions(GENERIC_F429ZETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F429ZETX"
	"BOARD_NAME=\"GENERIC_F429ZETX\""
	"BOARD_ID=GENERIC_F429ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F429ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F429ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F429ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F429ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F429ZETX_MCU}
)
target_link_libraries(GENERIC_F429ZETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F429ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F429ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F429ZGTX_MAXSIZE 1048576)
set(GENERIC_F429ZGTX_MAXDATASIZE 196608)
set(GENERIC_F429ZGTX_MCU cortex-m4)
add_library(GENERIC_F429ZGTX INTERFACE)
target_compile_options(GENERIC_F429ZGTX INTERFACE
  "SHELL:-DSTM32F429xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F429ZGTX_MCU}
)
target_compile_definitions(GENERIC_F429ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F429ZGTX"
	"BOARD_NAME=\"GENERIC_F429ZGTX\""
	"BOARD_ID=GENERIC_F429ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F429ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F429ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F429ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F429ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F429ZGTX_MCU}
)
target_link_libraries(GENERIC_F429ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F429ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_F429ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F429ZGYX_MAXSIZE 1048576)
set(GENERIC_F429ZGYX_MAXDATASIZE 196608)
set(GENERIC_F429ZGYX_MCU cortex-m4)
add_library(GENERIC_F429ZGYX INTERFACE)
target_compile_options(GENERIC_F429ZGYX INTERFACE
  "SHELL:-DSTM32F429xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F429ZGYX_MCU}
)
target_compile_definitions(GENERIC_F429ZGYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F429ZGYX"
	"BOARD_NAME=\"GENERIC_F429ZGYX\""
	"BOARD_ID=GENERIC_F429ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F429ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F429ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_F429ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_F429ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F429ZGYX_MCU}
)
target_link_libraries(GENERIC_F429ZGYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F429ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F429ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F429ZITX_MAXSIZE 2097152)
set(GENERIC_F429ZITX_MAXDATASIZE 196608)
set(GENERIC_F429ZITX_MCU cortex-m4)
add_library(GENERIC_F429ZITX INTERFACE)
target_compile_options(GENERIC_F429ZITX INTERFACE
  "SHELL:-DSTM32F429xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F429ZITX_MCU}
)
target_compile_definitions(GENERIC_F429ZITX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F429ZITX"
	"BOARD_NAME=\"GENERIC_F429ZITX\""
	"BOARD_ID=GENERIC_F429ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F429ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F429ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F429ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F429ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F429ZITX_MCU}
)
target_link_libraries(GENERIC_F429ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F429ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_F429ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F429ZIYX_MAXSIZE 2097152)
set(GENERIC_F429ZIYX_MAXDATASIZE 196608)
set(GENERIC_F429ZIYX_MCU cortex-m4)
add_library(GENERIC_F429ZIYX INTERFACE)
target_compile_options(GENERIC_F429ZIYX INTERFACE
  "SHELL:-DSTM32F429xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F429ZIYX_MCU}
)
target_compile_definitions(GENERIC_F429ZIYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F429ZIYX"
	"BOARD_NAME=\"GENERIC_F429ZIYX\""
	"BOARD_ID=GENERIC_F429ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F429ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F429ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_F429ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_F429ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F429ZIYX_MCU}
)
target_link_libraries(GENERIC_F429ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F437ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F437ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F437ZGTX_MAXSIZE 1048576)
set(GENERIC_F437ZGTX_MAXDATASIZE 196608)
set(GENERIC_F437ZGTX_MCU cortex-m4)
add_library(GENERIC_F437ZGTX INTERFACE)
target_compile_options(GENERIC_F437ZGTX INTERFACE
  "SHELL:-DSTM32F437xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F437ZGTX_MCU}
)
target_compile_definitions(GENERIC_F437ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F437ZGTX"
	"BOARD_NAME=\"GENERIC_F437ZGTX\""
	"BOARD_ID=GENERIC_F437ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F437ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F437ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F437ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F437ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F437ZGTX_MCU}
)
target_link_libraries(GENERIC_F437ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F437ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F437ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F437ZITX_MAXSIZE 2097152)
set(GENERIC_F437ZITX_MAXDATASIZE 196608)
set(GENERIC_F437ZITX_MCU cortex-m4)
add_library(GENERIC_F437ZITX INTERFACE)
target_compile_options(GENERIC_F437ZITX INTERFACE
  "SHELL:-DSTM32F437xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F437ZITX_MCU}
)
target_compile_definitions(GENERIC_F437ZITX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F437ZITX"
	"BOARD_NAME=\"GENERIC_F437ZITX\""
	"BOARD_ID=GENERIC_F437ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F437ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F437ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F437ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F437ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F437ZITX_MCU}
)
target_link_libraries(GENERIC_F437ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F439ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F439ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F439ZGTX_MAXSIZE 1048576)
set(GENERIC_F439ZGTX_MAXDATASIZE 196608)
set(GENERIC_F439ZGTX_MCU cortex-m4)
add_library(GENERIC_F439ZGTX INTERFACE)
target_compile_options(GENERIC_F439ZGTX INTERFACE
  "SHELL:-DSTM32F439xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F439ZGTX_MCU}
)
target_compile_definitions(GENERIC_F439ZGTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F439ZGTX"
	"BOARD_NAME=\"GENERIC_F439ZGTX\""
	"BOARD_ID=GENERIC_F439ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F439ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F439ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F439ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F439ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F439ZGTX_MCU}
)
target_link_libraries(GENERIC_F439ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F439ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_F439ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F439ZGYX_MAXSIZE 1048576)
set(GENERIC_F439ZGYX_MAXDATASIZE 196608)
set(GENERIC_F439ZGYX_MCU cortex-m4)
add_library(GENERIC_F439ZGYX INTERFACE)
target_compile_options(GENERIC_F439ZGYX INTERFACE
  "SHELL:-DSTM32F439xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F439ZGYX_MCU}
)
target_compile_definitions(GENERIC_F439ZGYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F439ZGYX"
	"BOARD_NAME=\"GENERIC_F439ZGYX\""
	"BOARD_ID=GENERIC_F439ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F439ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F439ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_F439ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_F439ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F439ZGYX_MCU}
)
target_link_libraries(GENERIC_F439ZGYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F439ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F439ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F439ZITX_MAXSIZE 2097152)
set(GENERIC_F439ZITX_MAXDATASIZE 196608)
set(GENERIC_F439ZITX_MCU cortex-m4)
add_library(GENERIC_F439ZITX INTERFACE)
target_compile_options(GENERIC_F439ZITX INTERFACE
  "SHELL:-DSTM32F439xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F439ZITX_MCU}
)
target_compile_definitions(GENERIC_F439ZITX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F439ZITX"
	"BOARD_NAME=\"GENERIC_F439ZITX\""
	"BOARD_ID=GENERIC_F439ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F439ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F439ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F439ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F439ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F439ZITX_MCU}
)
target_link_libraries(GENERIC_F439ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F439ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_F439ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(GENERIC_F439ZIYX_MAXSIZE 2097152)
set(GENERIC_F439ZIYX_MAXDATASIZE 196608)
set(GENERIC_F439ZIYX_MCU cortex-m4)
add_library(GENERIC_F439ZIYX INTERFACE)
target_compile_options(GENERIC_F439ZIYX INTERFACE
  "SHELL:-DSTM32F439xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F439ZIYX_MCU}
)
target_compile_definitions(GENERIC_F439ZIYX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F439ZIYX"
	"BOARD_NAME=\"GENERIC_F439ZIYX\""
	"BOARD_ID=GENERIC_F439ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F439ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F439ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_F439ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_F439ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F439ZIYX_MCU}
)
target_link_libraries(GENERIC_F439ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F446RCTX
# -----------------------------------------------------------------------------

set(GENERIC_F446RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446R(C-E)T")
set(GENERIC_F446RCTX_MAXSIZE 262144)
set(GENERIC_F446RCTX_MAXDATASIZE 131072)
set(GENERIC_F446RCTX_MCU cortex-m4)
add_library(GENERIC_F446RCTX INTERFACE)
target_compile_options(GENERIC_F446RCTX INTERFACE
  "SHELL:-DSTM32F446xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F446RCTX_MCU}
)
target_compile_definitions(GENERIC_F446RCTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F446RCTX"
	"BOARD_NAME=\"GENERIC_F446RCTX\""
	"BOARD_ID=GENERIC_F446RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F446RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F446RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F446RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F446RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F446RCTX_MCU}
)
target_link_libraries(GENERIC_F446RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F446RETX
# -----------------------------------------------------------------------------

set(GENERIC_F446RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446R(C-E)T")
set(GENERIC_F446RETX_MAXSIZE 524288)
set(GENERIC_F446RETX_MAXDATASIZE 131072)
set(GENERIC_F446RETX_MCU cortex-m4)
add_library(GENERIC_F446RETX INTERFACE)
target_compile_options(GENERIC_F446RETX INTERFACE
  "SHELL:-DSTM32F446xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F446RETX_MCU}
)
target_compile_definitions(GENERIC_F446RETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F446RETX"
	"BOARD_NAME=\"GENERIC_F446RETX\""
	"BOARD_ID=GENERIC_F446RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F446RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F446RETX_VARIANT_PATH}
)

target_link_options(GENERIC_F446RETX INTERFACE
  "LINKER:--default-script=${GENERIC_F446RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F446RETX_MCU}
)
target_link_libraries(GENERIC_F446RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F446VCTX
# -----------------------------------------------------------------------------

set(GENERIC_F446VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446V(C-E)T")
set(GENERIC_F446VCTX_MAXSIZE 262144)
set(GENERIC_F446VCTX_MAXDATASIZE 131072)
set(GENERIC_F446VCTX_MCU cortex-m4)
add_library(GENERIC_F446VCTX INTERFACE)
target_compile_options(GENERIC_F446VCTX INTERFACE
  "SHELL:-DSTM32F446xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F446VCTX_MCU}
)
target_compile_definitions(GENERIC_F446VCTX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F446VCTX"
	"BOARD_NAME=\"GENERIC_F446VCTX\""
	"BOARD_ID=GENERIC_F446VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F446VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F446VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_F446VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_F446VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F446VCTX_MCU}
)
target_link_libraries(GENERIC_F446VCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F446VETX
# -----------------------------------------------------------------------------

set(GENERIC_F446VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446V(C-E)T")
set(GENERIC_F446VETX_MAXSIZE 524288)
set(GENERIC_F446VETX_MAXDATASIZE 131072)
set(GENERIC_F446VETX_MCU cortex-m4)
add_library(GENERIC_F446VETX INTERFACE)
target_compile_options(GENERIC_F446VETX INTERFACE
  "SHELL:-DSTM32F446xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F446VETX_MCU}
)
target_compile_definitions(GENERIC_F446VETX INTERFACE
  "STM32F4xx"
	"ARDUINO_GENERIC_F446VETX"
	"BOARD_NAME=\"GENERIC_F446VETX\""
	"BOARD_ID=GENERIC_F446VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F446VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${GENERIC_F446VETX_VARIANT_PATH}
)

target_link_options(GENERIC_F446VETX INTERFACE
  "LINKER:--default-script=${GENERIC_F446VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F446VETX_MCU}
)
target_link_libraries(GENERIC_F446VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_F745ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F745ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F745ZETX_MAXSIZE 524288)
set(GENERIC_F745ZETX_MAXDATASIZE 327680)
set(GENERIC_F745ZETX_MCU cortex-m7)
add_library(GENERIC_F745ZETX INTERFACE)
target_compile_options(GENERIC_F745ZETX INTERFACE
  "SHELL:-DSTM32F745xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F745ZETX_MCU}
)
target_compile_definitions(GENERIC_F745ZETX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F745ZETX"
	"BOARD_NAME=\"GENERIC_F745ZETX\""
	"BOARD_ID=GENERIC_F745ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F745ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F745ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F745ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F745ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F745ZETX_MCU}
)
target_link_libraries(GENERIC_F745ZETX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F745ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F745ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F745ZGTX_MAXSIZE 1048576)
set(GENERIC_F745ZGTX_MAXDATASIZE 327680)
set(GENERIC_F745ZGTX_MCU cortex-m7)
add_library(GENERIC_F745ZGTX INTERFACE)
target_compile_options(GENERIC_F745ZGTX INTERFACE
  "SHELL:-DSTM32F745xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F745ZGTX_MCU}
)
target_compile_definitions(GENERIC_F745ZGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F745ZGTX"
	"BOARD_NAME=\"GENERIC_F745ZGTX\""
	"BOARD_ID=GENERIC_F745ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F745ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F745ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F745ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F745ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F745ZGTX_MCU}
)
target_link_libraries(GENERIC_F745ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746BETX
# -----------------------------------------------------------------------------

set(GENERIC_F746BETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F746BETX_MAXSIZE 524288)
set(GENERIC_F746BETX_MAXDATASIZE 327680)
set(GENERIC_F746BETX_MCU cortex-m7)
add_library(GENERIC_F746BETX INTERFACE)
target_compile_options(GENERIC_F746BETX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746BETX_MCU}
)
target_compile_definitions(GENERIC_F746BETX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746BETX"
	"BOARD_NAME=\"GENERIC_F746BETX\""
	"BOARD_ID=GENERIC_F746BETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746BETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746BETX_VARIANT_PATH}
)

target_link_options(GENERIC_F746BETX INTERFACE
  "LINKER:--default-script=${GENERIC_F746BETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746BETX_MCU}
)
target_link_libraries(GENERIC_F746BETX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746BGTX
# -----------------------------------------------------------------------------

set(GENERIC_F746BGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F746BGTX_MAXSIZE 1048576)
set(GENERIC_F746BGTX_MAXDATASIZE 327680)
set(GENERIC_F746BGTX_MCU cortex-m7)
add_library(GENERIC_F746BGTX INTERFACE)
target_compile_options(GENERIC_F746BGTX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746BGTX_MCU}
)
target_compile_definitions(GENERIC_F746BGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746BGTX"
	"BOARD_NAME=\"GENERIC_F746BGTX\""
	"BOARD_ID=GENERIC_F746BGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746BGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746BGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F746BGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F746BGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746BGTX_MCU}
)
target_link_libraries(GENERIC_F746BGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746NEHX
# -----------------------------------------------------------------------------

set(GENERIC_F746NEHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F746NEHX_MAXSIZE 524288)
set(GENERIC_F746NEHX_MAXDATASIZE 327680)
set(GENERIC_F746NEHX_MCU cortex-m7)
add_library(GENERIC_F746NEHX INTERFACE)
target_compile_options(GENERIC_F746NEHX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746NEHX_MCU}
)
target_compile_definitions(GENERIC_F746NEHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746NEHX"
	"BOARD_NAME=\"GENERIC_F746NEHX\""
	"BOARD_ID=GENERIC_F746NEHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746NEHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746NEHX_VARIANT_PATH}
)

target_link_options(GENERIC_F746NEHX INTERFACE
  "LINKER:--default-script=${GENERIC_F746NEHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746NEHX_MCU}
)
target_link_libraries(GENERIC_F746NEHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746NGHX
# -----------------------------------------------------------------------------

set(GENERIC_F746NGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F746NGHX_MAXSIZE 1048576)
set(GENERIC_F746NGHX_MAXDATASIZE 327680)
set(GENERIC_F746NGHX_MCU cortex-m7)
add_library(GENERIC_F746NGHX INTERFACE)
target_compile_options(GENERIC_F746NGHX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746NGHX_MCU}
)
target_compile_definitions(GENERIC_F746NGHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746NGHX"
	"BOARD_NAME=\"GENERIC_F746NGHX\""
	"BOARD_ID=GENERIC_F746NGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746NGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746NGHX_VARIANT_PATH}
)

target_link_options(GENERIC_F746NGHX INTERFACE
  "LINKER:--default-script=${GENERIC_F746NGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746NGHX_MCU}
)
target_link_libraries(GENERIC_F746NGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746ZETX
# -----------------------------------------------------------------------------

set(GENERIC_F746ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F746ZETX_MAXSIZE 524288)
set(GENERIC_F746ZETX_MAXDATASIZE 327680)
set(GENERIC_F746ZETX_MCU cortex-m7)
add_library(GENERIC_F746ZETX INTERFACE)
target_compile_options(GENERIC_F746ZETX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746ZETX_MCU}
)
target_compile_definitions(GENERIC_F746ZETX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746ZETX"
	"BOARD_NAME=\"GENERIC_F746ZETX\""
	"BOARD_ID=GENERIC_F746ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_F746ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_F746ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746ZETX_MCU}
)
target_link_libraries(GENERIC_F746ZETX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746ZEYX
# -----------------------------------------------------------------------------

set(GENERIC_F746ZEYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F746ZEYX_MAXSIZE 524288)
set(GENERIC_F746ZEYX_MAXDATASIZE 327680)
set(GENERIC_F746ZEYX_MCU cortex-m7)
add_library(GENERIC_F746ZEYX INTERFACE)
target_compile_options(GENERIC_F746ZEYX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746ZEYX_MCU}
)
target_compile_definitions(GENERIC_F746ZEYX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746ZEYX"
	"BOARD_NAME=\"GENERIC_F746ZEYX\""
	"BOARD_ID=GENERIC_F746ZEYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746ZEYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746ZEYX_VARIANT_PATH}
)

target_link_options(GENERIC_F746ZEYX INTERFACE
  "LINKER:--default-script=${GENERIC_F746ZEYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746ZEYX_MCU}
)
target_link_libraries(GENERIC_F746ZEYX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F746ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F746ZGTX_MAXSIZE 1048576)
set(GENERIC_F746ZGTX_MAXDATASIZE 327680)
set(GENERIC_F746ZGTX_MCU cortex-m7)
add_library(GENERIC_F746ZGTX INTERFACE)
target_compile_options(GENERIC_F746ZGTX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746ZGTX_MCU}
)
target_compile_definitions(GENERIC_F746ZGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746ZGTX"
	"BOARD_NAME=\"GENERIC_F746ZGTX\""
	"BOARD_ID=GENERIC_F746ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F746ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F746ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746ZGTX_MCU}
)
target_link_libraries(GENERIC_F746ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F746ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_F746ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F746ZGYX_MAXSIZE 1048576)
set(GENERIC_F746ZGYX_MAXDATASIZE 327680)
set(GENERIC_F746ZGYX_MCU cortex-m7)
add_library(GENERIC_F746ZGYX INTERFACE)
target_compile_options(GENERIC_F746ZGYX INTERFACE
  "SHELL:-DSTM32F746xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F746ZGYX_MCU}
)
target_compile_definitions(GENERIC_F746ZGYX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F746ZGYX"
	"BOARD_NAME=\"GENERIC_F746ZGYX\""
	"BOARD_ID=GENERIC_F746ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F746ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F746ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_F746ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_F746ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F746ZGYX_MCU}
)
target_link_libraries(GENERIC_F746ZGYX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F750N8HX
# -----------------------------------------------------------------------------

set(GENERIC_F750N8HX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F750N8HX_MAXSIZE 65536)
set(GENERIC_F750N8HX_MAXDATASIZE 327680)
set(GENERIC_F750N8HX_MCU cortex-m7)
add_library(GENERIC_F750N8HX INTERFACE)
target_compile_options(GENERIC_F750N8HX INTERFACE
  "SHELL:-DSTM32F750xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F750N8HX_MCU}
)
target_compile_definitions(GENERIC_F750N8HX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F750N8HX"
	"BOARD_NAME=\"GENERIC_F750N8HX\""
	"BOARD_ID=GENERIC_F750N8HX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F750N8HX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F750N8HX_VARIANT_PATH}
)

target_link_options(GENERIC_F750N8HX INTERFACE
  "LINKER:--default-script=${GENERIC_F750N8HX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F750N8HX_MCU}
)
target_link_libraries(GENERIC_F750N8HX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F750Z8TX
# -----------------------------------------------------------------------------

set(GENERIC_F750Z8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F750Z8TX_MAXSIZE 65536)
set(GENERIC_F750Z8TX_MAXDATASIZE 327680)
set(GENERIC_F750Z8TX_MCU cortex-m7)
add_library(GENERIC_F750Z8TX INTERFACE)
target_compile_options(GENERIC_F750Z8TX INTERFACE
  "SHELL:-DSTM32F750xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F750Z8TX_MCU}
)
target_compile_definitions(GENERIC_F750Z8TX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F750Z8TX"
	"BOARD_NAME=\"GENERIC_F750Z8TX\""
	"BOARD_ID=GENERIC_F750Z8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F750Z8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F750Z8TX_VARIANT_PATH}
)

target_link_options(GENERIC_F750Z8TX INTERFACE
  "LINKER:--default-script=${GENERIC_F750Z8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F750Z8TX_MCU}
)
target_link_libraries(GENERIC_F750Z8TX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F756BGTX
# -----------------------------------------------------------------------------

set(GENERIC_F756BGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F756BGTX_MAXSIZE 1048576)
set(GENERIC_F756BGTX_MAXDATASIZE 327680)
set(GENERIC_F756BGTX_MCU cortex-m7)
add_library(GENERIC_F756BGTX INTERFACE)
target_compile_options(GENERIC_F756BGTX INTERFACE
  "SHELL:-DSTM32F756xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F756BGTX_MCU}
)
target_compile_definitions(GENERIC_F756BGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F756BGTX"
	"BOARD_NAME=\"GENERIC_F756BGTX\""
	"BOARD_ID=GENERIC_F756BGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F756BGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F756BGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F756BGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F756BGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F756BGTX_MCU}
)
target_link_libraries(GENERIC_F756BGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F756NGHX
# -----------------------------------------------------------------------------

set(GENERIC_F756NGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F746B(E-G)T_F746N(E-G)H_F750N8H_F756BGT_F756NGH")
set(GENERIC_F756NGHX_MAXSIZE 1048576)
set(GENERIC_F756NGHX_MAXDATASIZE 327680)
set(GENERIC_F756NGHX_MCU cortex-m7)
add_library(GENERIC_F756NGHX INTERFACE)
target_compile_options(GENERIC_F756NGHX INTERFACE
  "SHELL:-DSTM32F756xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F756NGHX_MCU}
)
target_compile_definitions(GENERIC_F756NGHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F756NGHX"
	"BOARD_NAME=\"GENERIC_F756NGHX\""
	"BOARD_ID=GENERIC_F756NGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F756NGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F756NGHX_VARIANT_PATH}
)

target_link_options(GENERIC_F756NGHX INTERFACE
  "LINKER:--default-script=${GENERIC_F756NGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F756NGHX_MCU}
)
target_link_libraries(GENERIC_F756NGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F756ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F756ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F756ZGTX_MAXSIZE 1048576)
set(GENERIC_F756ZGTX_MAXDATASIZE 327680)
set(GENERIC_F756ZGTX_MCU cortex-m7)
add_library(GENERIC_F756ZGTX INTERFACE)
target_compile_options(GENERIC_F756ZGTX INTERFACE
  "SHELL:-DSTM32F756xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F756ZGTX_MCU}
)
target_compile_definitions(GENERIC_F756ZGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F756ZGTX"
	"BOARD_NAME=\"GENERIC_F756ZGTX\""
	"BOARD_ID=GENERIC_F756ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F756ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F756ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F756ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F756ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F756ZGTX_MCU}
)
target_link_libraries(GENERIC_F756ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F756ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_F756ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(GENERIC_F756ZGYX_MAXSIZE 1048576)
set(GENERIC_F756ZGYX_MAXDATASIZE 327680)
set(GENERIC_F756ZGYX_MCU cortex-m7)
add_library(GENERIC_F756ZGYX INTERFACE)
target_compile_options(GENERIC_F756ZGYX INTERFACE
  "SHELL:-DSTM32F756xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F756ZGYX_MCU}
)
target_compile_definitions(GENERIC_F756ZGYX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F756ZGYX"
	"BOARD_NAME=\"GENERIC_F756ZGYX\""
	"BOARD_ID=GENERIC_F756ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F756ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F756ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_F756ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_F756ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F756ZGYX_MCU}
)
target_link_libraries(GENERIC_F756ZGYX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765VGHX
# -----------------------------------------------------------------------------

set(GENERIC_F765VGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F765VGHX_MAXSIZE 1048576)
set(GENERIC_F765VGHX_MAXDATASIZE 393216)
set(GENERIC_F765VGHX_MCU cortex-m7)
add_library(GENERIC_F765VGHX INTERFACE)
target_compile_options(GENERIC_F765VGHX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765VGHX_MCU}
)
target_compile_definitions(GENERIC_F765VGHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765VGHX"
	"BOARD_NAME=\"GENERIC_F765VGHX\""
	"BOARD_ID=GENERIC_F765VGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765VGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765VGHX_VARIANT_PATH}
)

target_link_options(GENERIC_F765VGHX INTERFACE
  "LINKER:--default-script=${GENERIC_F765VGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765VGHX_MCU}
)
target_link_libraries(GENERIC_F765VGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765VGTX
# -----------------------------------------------------------------------------

set(GENERIC_F765VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F765VGTX_MAXSIZE 1048576)
set(GENERIC_F765VGTX_MAXDATASIZE 393216)
set(GENERIC_F765VGTX_MCU cortex-m7)
add_library(GENERIC_F765VGTX INTERFACE)
target_compile_options(GENERIC_F765VGTX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765VGTX_MCU}
)
target_compile_definitions(GENERIC_F765VGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765VGTX"
	"BOARD_NAME=\"GENERIC_F765VGTX\""
	"BOARD_ID=GENERIC_F765VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F765VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F765VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765VGTX_MCU}
)
target_link_libraries(GENERIC_F765VGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765VIHX
# -----------------------------------------------------------------------------

set(GENERIC_F765VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F765VIHX_MAXSIZE 2097152)
set(GENERIC_F765VIHX_MAXDATASIZE 393216)
set(GENERIC_F765VIHX_MCU cortex-m7)
add_library(GENERIC_F765VIHX INTERFACE)
target_compile_options(GENERIC_F765VIHX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765VIHX_MCU}
)
target_compile_definitions(GENERIC_F765VIHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765VIHX"
	"BOARD_NAME=\"GENERIC_F765VIHX\""
	"BOARD_ID=GENERIC_F765VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_F765VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_F765VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765VIHX_MCU}
)
target_link_libraries(GENERIC_F765VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765VITX
# -----------------------------------------------------------------------------

set(GENERIC_F765VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F765VITX_MAXSIZE 2097152)
set(GENERIC_F765VITX_MAXDATASIZE 393216)
set(GENERIC_F765VITX_MCU cortex-m7)
add_library(GENERIC_F765VITX INTERFACE)
target_compile_options(GENERIC_F765VITX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765VITX_MCU}
)
target_compile_definitions(GENERIC_F765VITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765VITX"
	"BOARD_NAME=\"GENERIC_F765VITX\""
	"BOARD_ID=GENERIC_F765VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765VITX_VARIANT_PATH}
)

target_link_options(GENERIC_F765VITX INTERFACE
  "LINKER:--default-script=${GENERIC_F765VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765VITX_MCU}
)
target_link_libraries(GENERIC_F765VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F765ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(GENERIC_F765ZGTX_MAXSIZE 1048576)
set(GENERIC_F765ZGTX_MAXDATASIZE 393216)
set(GENERIC_F765ZGTX_MCU cortex-m7)
add_library(GENERIC_F765ZGTX INTERFACE)
target_compile_options(GENERIC_F765ZGTX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765ZGTX_MCU}
)
target_compile_definitions(GENERIC_F765ZGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765ZGTX"
	"BOARD_NAME=\"GENERIC_F765ZGTX\""
	"BOARD_ID=GENERIC_F765ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F765ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F765ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765ZGTX_MCU}
)
target_link_libraries(GENERIC_F765ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F765ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F765ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(GENERIC_F765ZITX_MAXSIZE 2097152)
set(GENERIC_F765ZITX_MAXDATASIZE 393216)
set(GENERIC_F765ZITX_MCU cortex-m7)
add_library(GENERIC_F765ZITX INTERFACE)
target_compile_options(GENERIC_F765ZITX INTERFACE
  "SHELL:-DSTM32F765xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F765ZITX_MCU}
)
target_compile_definitions(GENERIC_F765ZITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F765ZITX"
	"BOARD_NAME=\"GENERIC_F765ZITX\""
	"BOARD_ID=GENERIC_F765ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F765ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F765ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F765ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F765ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F765ZITX_MCU}
)
target_link_libraries(GENERIC_F765ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767VGHX
# -----------------------------------------------------------------------------

set(GENERIC_F767VGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F767VGHX_MAXSIZE 1048576)
set(GENERIC_F767VGHX_MAXDATASIZE 393216)
set(GENERIC_F767VGHX_MCU cortex-m7)
add_library(GENERIC_F767VGHX INTERFACE)
target_compile_options(GENERIC_F767VGHX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767VGHX_MCU}
)
target_compile_definitions(GENERIC_F767VGHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767VGHX"
	"BOARD_NAME=\"GENERIC_F767VGHX\""
	"BOARD_ID=GENERIC_F767VGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767VGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767VGHX_VARIANT_PATH}
)

target_link_options(GENERIC_F767VGHX INTERFACE
  "LINKER:--default-script=${GENERIC_F767VGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767VGHX_MCU}
)
target_link_libraries(GENERIC_F767VGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767VGTX
# -----------------------------------------------------------------------------

set(GENERIC_F767VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F767VGTX_MAXSIZE 1048576)
set(GENERIC_F767VGTX_MAXDATASIZE 393216)
set(GENERIC_F767VGTX_MCU cortex-m7)
add_library(GENERIC_F767VGTX INTERFACE)
target_compile_options(GENERIC_F767VGTX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767VGTX_MCU}
)
target_compile_definitions(GENERIC_F767VGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767VGTX"
	"BOARD_NAME=\"GENERIC_F767VGTX\""
	"BOARD_ID=GENERIC_F767VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F767VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F767VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767VGTX_MCU}
)
target_link_libraries(GENERIC_F767VGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767VIHX
# -----------------------------------------------------------------------------

set(GENERIC_F767VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F767VIHX_MAXSIZE 2097152)
set(GENERIC_F767VIHX_MAXDATASIZE 393216)
set(GENERIC_F767VIHX_MCU cortex-m7)
add_library(GENERIC_F767VIHX INTERFACE)
target_compile_options(GENERIC_F767VIHX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767VIHX_MCU}
)
target_compile_definitions(GENERIC_F767VIHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767VIHX"
	"BOARD_NAME=\"GENERIC_F767VIHX\""
	"BOARD_ID=GENERIC_F767VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_F767VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_F767VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767VIHX_MCU}
)
target_link_libraries(GENERIC_F767VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767VITX
# -----------------------------------------------------------------------------

set(GENERIC_F767VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F767VITX_MAXSIZE 2097152)
set(GENERIC_F767VITX_MAXDATASIZE 393216)
set(GENERIC_F767VITX_MCU cortex-m7)
add_library(GENERIC_F767VITX INTERFACE)
target_compile_options(GENERIC_F767VITX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767VITX_MCU}
)
target_compile_definitions(GENERIC_F767VITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767VITX"
	"BOARD_NAME=\"GENERIC_F767VITX\""
	"BOARD_ID=GENERIC_F767VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767VITX_VARIANT_PATH}
)

target_link_options(GENERIC_F767VITX INTERFACE
  "LINKER:--default-script=${GENERIC_F767VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767VITX_MCU}
)
target_link_libraries(GENERIC_F767VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_F767ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(GENERIC_F767ZGTX_MAXSIZE 1048576)
set(GENERIC_F767ZGTX_MAXDATASIZE 393216)
set(GENERIC_F767ZGTX_MCU cortex-m7)
add_library(GENERIC_F767ZGTX INTERFACE)
target_compile_options(GENERIC_F767ZGTX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767ZGTX_MCU}
)
target_compile_definitions(GENERIC_F767ZGTX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767ZGTX"
	"BOARD_NAME=\"GENERIC_F767ZGTX\""
	"BOARD_ID=GENERIC_F767ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_F767ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_F767ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767ZGTX_MCU}
)
target_link_libraries(GENERIC_F767ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F767ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F767ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(GENERIC_F767ZITX_MAXSIZE 2097152)
set(GENERIC_F767ZITX_MAXDATASIZE 393216)
set(GENERIC_F767ZITX_MCU cortex-m7)
add_library(GENERIC_F767ZITX INTERFACE)
target_compile_options(GENERIC_F767ZITX INTERFACE
  "SHELL:-DSTM32F767xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F767ZITX_MCU}
)
target_compile_definitions(GENERIC_F767ZITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F767ZITX"
	"BOARD_NAME=\"GENERIC_F767ZITX\""
	"BOARD_ID=GENERIC_F767ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F767ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F767ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F767ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F767ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F767ZITX_MCU}
)
target_link_libraries(GENERIC_F767ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F777VIHX
# -----------------------------------------------------------------------------

set(GENERIC_F777VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F777VIHX_MAXSIZE 2097152)
set(GENERIC_F777VIHX_MAXDATASIZE 393216)
set(GENERIC_F777VIHX_MCU cortex-m7)
add_library(GENERIC_F777VIHX INTERFACE)
target_compile_options(GENERIC_F777VIHX INTERFACE
  "SHELL:-DSTM32F777xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F777VIHX_MCU}
)
target_compile_definitions(GENERIC_F777VIHX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F777VIHX"
	"BOARD_NAME=\"GENERIC_F777VIHX\""
	"BOARD_ID=GENERIC_F777VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F777VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F777VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_F777VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_F777VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F777VIHX_MCU}
)
target_link_libraries(GENERIC_F777VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F777VITX
# -----------------------------------------------------------------------------

set(GENERIC_F777VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(GENERIC_F777VITX_MAXSIZE 2097152)
set(GENERIC_F777VITX_MAXDATASIZE 393216)
set(GENERIC_F777VITX_MCU cortex-m7)
add_library(GENERIC_F777VITX INTERFACE)
target_compile_options(GENERIC_F777VITX INTERFACE
  "SHELL:-DSTM32F777xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F777VITX_MCU}
)
target_compile_definitions(GENERIC_F777VITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F777VITX"
	"BOARD_NAME=\"GENERIC_F777VITX\""
	"BOARD_ID=GENERIC_F777VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F777VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F777VITX_VARIANT_PATH}
)

target_link_options(GENERIC_F777VITX INTERFACE
  "LINKER:--default-script=${GENERIC_F777VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F777VITX_MCU}
)
target_link_libraries(GENERIC_F777VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_F777ZITX
# -----------------------------------------------------------------------------

set(GENERIC_F777ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(GENERIC_F777ZITX_MAXSIZE 2097152)
set(GENERIC_F777ZITX_MAXDATASIZE 393216)
set(GENERIC_F777ZITX_MCU cortex-m7)
add_library(GENERIC_F777ZITX INTERFACE)
target_compile_options(GENERIC_F777ZITX INTERFACE
  "SHELL:-DSTM32F777xx   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_F777ZITX_MCU}
)
target_compile_definitions(GENERIC_F777ZITX INTERFACE
  "STM32F7xx"
	"ARDUINO_GENERIC_F777ZITX"
	"BOARD_NAME=\"GENERIC_F777ZITX\""
	"BOARD_ID=GENERIC_F777ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_F777ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${GENERIC_F777ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_F777ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_F777ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=393216"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_F777ZITX_MCU}
)
target_link_libraries(GENERIC_F777ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_G030C6TX
# -----------------------------------------------------------------------------

set(GENERIC_G030C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030C(6-8)T")
set(GENERIC_G030C6TX_MAXSIZE 32768)
set(GENERIC_G030C6TX_MAXDATASIZE 8192)
set(GENERIC_G030C6TX_MCU cortex-m0plus)
add_library(GENERIC_G030C6TX INTERFACE)
target_compile_options(GENERIC_G030C6TX INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G030C6TX_MCU}
)
target_compile_definitions(GENERIC_G030C6TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G030C6TX"
	"BOARD_NAME=\"GENERIC_G030C6TX\""
	"BOARD_ID=GENERIC_G030C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G030C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G030C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G030C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G030C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G030C6TX_MCU}
)
target_link_libraries(GENERIC_G030C6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G030C8TX
# -----------------------------------------------------------------------------

set(GENERIC_G030C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030C(6-8)T")
set(GENERIC_G030C8TX_MAXSIZE 65536)
set(GENERIC_G030C8TX_MAXDATASIZE 8192)
set(GENERIC_G030C8TX_MCU cortex-m0plus)
add_library(GENERIC_G030C8TX INTERFACE)
target_compile_options(GENERIC_G030C8TX INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G030C8TX_MCU}
)
target_compile_definitions(GENERIC_G030C8TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G030C8TX"
	"BOARD_NAME=\"GENERIC_G030C8TX\""
	"BOARD_ID=GENERIC_G030C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G030C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G030C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G030C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G030C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G030C8TX_MCU}
)
target_link_libraries(GENERIC_G030C8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G030F6PX
# -----------------------------------------------------------------------------

set(GENERIC_G030F6PX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030F6P")
set(GENERIC_G030F6PX_MAXSIZE 32768)
set(GENERIC_G030F6PX_MAXDATASIZE 8192)
set(GENERIC_G030F6PX_MCU cortex-m0plus)
add_library(GENERIC_G030F6PX INTERFACE)
target_compile_options(GENERIC_G030F6PX INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G030F6PX_MCU}
)
target_compile_definitions(GENERIC_G030F6PX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G030F6PX"
	"BOARD_NAME=\"GENERIC_G030F6PX\""
	"BOARD_ID=GENERIC_G030F6PX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G030F6PX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G030F6PX_VARIANT_PATH}
)

target_link_options(GENERIC_G030F6PX INTERFACE
  "LINKER:--default-script=${GENERIC_G030F6PX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G030F6PX_MCU}
)
target_link_libraries(GENERIC_G030F6PX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G030K6TX
# -----------------------------------------------------------------------------

set(GENERIC_G030K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030K(6-8)T")
set(GENERIC_G030K6TX_MAXSIZE 32768)
set(GENERIC_G030K6TX_MAXDATASIZE 8192)
set(GENERIC_G030K6TX_MCU cortex-m0plus)
add_library(GENERIC_G030K6TX INTERFACE)
target_compile_options(GENERIC_G030K6TX INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G030K6TX_MCU}
)
target_compile_definitions(GENERIC_G030K6TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G030K6TX"
	"BOARD_NAME=\"GENERIC_G030K6TX\""
	"BOARD_ID=GENERIC_G030K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G030K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G030K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G030K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G030K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G030K6TX_MCU}
)
target_link_libraries(GENERIC_G030K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G030K8TX
# -----------------------------------------------------------------------------

set(GENERIC_G030K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G030K(6-8)T")
set(GENERIC_G030K8TX_MAXSIZE 65536)
set(GENERIC_G030K8TX_MAXDATASIZE 8192)
set(GENERIC_G030K8TX_MCU cortex-m0plus)
add_library(GENERIC_G030K8TX INTERFACE)
target_compile_options(GENERIC_G030K8TX INTERFACE
  "SHELL:-DSTM32G030xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G030K8TX_MCU}
)
target_compile_definitions(GENERIC_G030K8TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G030K8TX"
	"BOARD_NAME=\"GENERIC_G030K8TX\""
	"BOARD_ID=GENERIC_G030K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G030K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G030K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G030K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G030K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G030K8TX_MCU}
)
target_link_libraries(GENERIC_G030K8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031J4MX
# -----------------------------------------------------------------------------

set(GENERIC_G031J4MX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031J(4-6)M_G041J6M")
set(GENERIC_G031J4MX_MAXSIZE 16384)
set(GENERIC_G031J4MX_MAXDATASIZE 8192)
set(GENERIC_G031J4MX_MCU cortex-m0plus)
add_library(GENERIC_G031J4MX INTERFACE)
target_compile_options(GENERIC_G031J4MX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031J4MX_MCU}
)
target_compile_definitions(GENERIC_G031J4MX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031J4MX"
	"BOARD_NAME=\"GENERIC_G031J4MX\""
	"BOARD_ID=GENERIC_G031J4MX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031J4MX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031J4MX_VARIANT_PATH}
)

target_link_options(GENERIC_G031J4MX INTERFACE
  "LINKER:--default-script=${GENERIC_G031J4MX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031J4MX_MCU}
)
target_link_libraries(GENERIC_G031J4MX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031J6MX
# -----------------------------------------------------------------------------

set(GENERIC_G031J6MX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031J(4-6)M_G041J6M")
set(GENERIC_G031J6MX_MAXSIZE 32768)
set(GENERIC_G031J6MX_MAXDATASIZE 8192)
set(GENERIC_G031J6MX_MCU cortex-m0plus)
add_library(GENERIC_G031J6MX INTERFACE)
target_compile_options(GENERIC_G031J6MX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031J6MX_MCU}
)
target_compile_definitions(GENERIC_G031J6MX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031J6MX"
	"BOARD_NAME=\"GENERIC_G031J6MX\""
	"BOARD_ID=GENERIC_G031J6MX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031J6MX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031J6MX_VARIANT_PATH}
)

target_link_options(GENERIC_G031J6MX INTERFACE
  "LINKER:--default-script=${GENERIC_G031J6MX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031J6MX_MCU}
)
target_link_libraries(GENERIC_G031J6MX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K4TX
# -----------------------------------------------------------------------------

set(GENERIC_G031K4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K4TX_MAXSIZE 16384)
set(GENERIC_G031K4TX_MAXDATASIZE 8192)
set(GENERIC_G031K4TX_MCU cortex-m0plus)
add_library(GENERIC_G031K4TX INTERFACE)
target_compile_options(GENERIC_G031K4TX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K4TX_MCU}
)
target_compile_definitions(GENERIC_G031K4TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K4TX"
	"BOARD_NAME=\"GENERIC_G031K4TX\""
	"BOARD_ID=GENERIC_G031K4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K4TX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K4TX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K4TX_MCU}
)
target_link_libraries(GENERIC_G031K4TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K4UX
# -----------------------------------------------------------------------------

set(GENERIC_G031K4UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K4UX_MAXSIZE 16384)
set(GENERIC_G031K4UX_MAXDATASIZE 8192)
set(GENERIC_G031K4UX_MCU cortex-m0plus)
add_library(GENERIC_G031K4UX INTERFACE)
target_compile_options(GENERIC_G031K4UX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K4UX_MCU}
)
target_compile_definitions(GENERIC_G031K4UX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K4UX"
	"BOARD_NAME=\"GENERIC_G031K4UX\""
	"BOARD_ID=GENERIC_G031K4UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K4UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K4UX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K4UX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K4UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K4UX_MCU}
)
target_link_libraries(GENERIC_G031K4UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K6TX
# -----------------------------------------------------------------------------

set(GENERIC_G031K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K6TX_MAXSIZE 32768)
set(GENERIC_G031K6TX_MAXDATASIZE 8192)
set(GENERIC_G031K6TX_MCU cortex-m0plus)
add_library(GENERIC_G031K6TX INTERFACE)
target_compile_options(GENERIC_G031K6TX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K6TX_MCU}
)
target_compile_definitions(GENERIC_G031K6TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K6TX"
	"BOARD_NAME=\"GENERIC_G031K6TX\""
	"BOARD_ID=GENERIC_G031K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K6TX_MCU}
)
target_link_libraries(GENERIC_G031K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K6UX
# -----------------------------------------------------------------------------

set(GENERIC_G031K6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K6UX_MAXSIZE 32768)
set(GENERIC_G031K6UX_MAXDATASIZE 8192)
set(GENERIC_G031K6UX_MCU cortex-m0plus)
add_library(GENERIC_G031K6UX INTERFACE)
target_compile_options(GENERIC_G031K6UX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K6UX_MCU}
)
target_compile_definitions(GENERIC_G031K6UX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K6UX"
	"BOARD_NAME=\"GENERIC_G031K6UX\""
	"BOARD_ID=GENERIC_G031K6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K6UX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K6UX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K6UX_MCU}
)
target_link_libraries(GENERIC_G031K6UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K8TX
# -----------------------------------------------------------------------------

set(GENERIC_G031K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K8TX_MAXSIZE 65536)
set(GENERIC_G031K8TX_MAXDATASIZE 8192)
set(GENERIC_G031K8TX_MCU cortex-m0plus)
add_library(GENERIC_G031K8TX INTERFACE)
target_compile_options(GENERIC_G031K8TX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K8TX_MCU}
)
target_compile_definitions(GENERIC_G031K8TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K8TX"
	"BOARD_NAME=\"GENERIC_G031K8TX\""
	"BOARD_ID=GENERIC_G031K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K8TX_MCU}
)
target_link_libraries(GENERIC_G031K8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G031K8UX
# -----------------------------------------------------------------------------

set(GENERIC_G031K8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G031K8UX_MAXSIZE 65536)
set(GENERIC_G031K8UX_MAXDATASIZE 8192)
set(GENERIC_G031K8UX_MCU cortex-m0plus)
add_library(GENERIC_G031K8UX INTERFACE)
target_compile_options(GENERIC_G031K8UX INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G031K8UX_MCU}
)
target_compile_definitions(GENERIC_G031K8UX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G031K8UX"
	"BOARD_NAME=\"GENERIC_G031K8UX\""
	"BOARD_ID=GENERIC_G031K8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G031K8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G031K8UX_VARIANT_PATH}
)

target_link_options(GENERIC_G031K8UX INTERFACE
  "LINKER:--default-script=${GENERIC_G031K8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G031K8UX_MCU}
)
target_link_libraries(GENERIC_G031K8UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G041J6MX
# -----------------------------------------------------------------------------

set(GENERIC_G041J6MX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031J(4-6)M_G041J6M")
set(GENERIC_G041J6MX_MAXSIZE 32768)
set(GENERIC_G041J6MX_MAXDATASIZE 8192)
set(GENERIC_G041J6MX_MCU cortex-m0plus)
add_library(GENERIC_G041J6MX INTERFACE)
target_compile_options(GENERIC_G041J6MX INTERFACE
  "SHELL:-DSTM32G041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G041J6MX_MCU}
)
target_compile_definitions(GENERIC_G041J6MX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G041J6MX"
	"BOARD_NAME=\"GENERIC_G041J6MX\""
	"BOARD_ID=GENERIC_G041J6MX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G041J6MX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G041J6MX_VARIANT_PATH}
)

target_link_options(GENERIC_G041J6MX INTERFACE
  "LINKER:--default-script=${GENERIC_G041J6MX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G041J6MX_MCU}
)
target_link_libraries(GENERIC_G041J6MX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G041K6TX
# -----------------------------------------------------------------------------

set(GENERIC_G041K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G041K6TX_MAXSIZE 32768)
set(GENERIC_G041K6TX_MAXDATASIZE 8192)
set(GENERIC_G041K6TX_MCU cortex-m0plus)
add_library(GENERIC_G041K6TX INTERFACE)
target_compile_options(GENERIC_G041K6TX INTERFACE
  "SHELL:-DSTM32G041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G041K6TX_MCU}
)
target_compile_definitions(GENERIC_G041K6TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G041K6TX"
	"BOARD_NAME=\"GENERIC_G041K6TX\""
	"BOARD_ID=GENERIC_G041K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G041K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G041K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G041K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G041K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G041K6TX_MCU}
)
target_link_libraries(GENERIC_G041K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G041K6UX
# -----------------------------------------------------------------------------

set(GENERIC_G041K6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G041K6UX_MAXSIZE 32768)
set(GENERIC_G041K6UX_MAXDATASIZE 8192)
set(GENERIC_G041K6UX_MCU cortex-m0plus)
add_library(GENERIC_G041K6UX INTERFACE)
target_compile_options(GENERIC_G041K6UX INTERFACE
  "SHELL:-DSTM32G041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G041K6UX_MCU}
)
target_compile_definitions(GENERIC_G041K6UX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G041K6UX"
	"BOARD_NAME=\"GENERIC_G041K6UX\""
	"BOARD_ID=GENERIC_G041K6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G041K6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G041K6UX_VARIANT_PATH}
)

target_link_options(GENERIC_G041K6UX INTERFACE
  "LINKER:--default-script=${GENERIC_G041K6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G041K6UX_MCU}
)
target_link_libraries(GENERIC_G041K6UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G041K8TX
# -----------------------------------------------------------------------------

set(GENERIC_G041K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G041K8TX_MAXSIZE 65536)
set(GENERIC_G041K8TX_MAXDATASIZE 8192)
set(GENERIC_G041K8TX_MCU cortex-m0plus)
add_library(GENERIC_G041K8TX INTERFACE)
target_compile_options(GENERIC_G041K8TX INTERFACE
  "SHELL:-DSTM32G041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G041K8TX_MCU}
)
target_compile_definitions(GENERIC_G041K8TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G041K8TX"
	"BOARD_NAME=\"GENERIC_G041K8TX\""
	"BOARD_ID=GENERIC_G041K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G041K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G041K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G041K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G041K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G041K8TX_MCU}
)
target_link_libraries(GENERIC_G041K8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G041K8UX
# -----------------------------------------------------------------------------

set(GENERIC_G041K8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(GENERIC_G041K8UX_MAXSIZE 65536)
set(GENERIC_G041K8UX_MAXDATASIZE 8192)
set(GENERIC_G041K8UX_MCU cortex-m0plus)
add_library(GENERIC_G041K8UX INTERFACE)
target_compile_options(GENERIC_G041K8UX INTERFACE
  "SHELL:-DSTM32G041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G041K8UX_MCU}
)
target_compile_definitions(GENERIC_G041K8UX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G041K8UX"
	"BOARD_NAME=\"GENERIC_G041K8UX\""
	"BOARD_ID=GENERIC_G041K8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G041K8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G041K8UX_VARIANT_PATH}
)

target_link_options(GENERIC_G041K8UX INTERFACE
  "LINKER:--default-script=${GENERIC_G041K8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_G041K8UX_MCU}
)
target_link_libraries(GENERIC_G041K8UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G071R6TX
# -----------------------------------------------------------------------------

set(GENERIC_G071R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G071R6TX_MAXSIZE 32768)
set(GENERIC_G071R6TX_MAXDATASIZE 36864)
set(GENERIC_G071R6TX_MCU cortex-m0plus)
add_library(GENERIC_G071R6TX INTERFACE)
target_compile_options(GENERIC_G071R6TX INTERFACE
  "SHELL:-DSTM32G071xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G071R6TX_MCU}
)
target_compile_definitions(GENERIC_G071R6TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G071R6TX"
	"BOARD_NAME=\"GENERIC_G071R6TX\""
	"BOARD_ID=GENERIC_G071R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G071R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G071R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G071R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G071R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G071R6TX_MCU}
)
target_link_libraries(GENERIC_G071R6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G071R8TX
# -----------------------------------------------------------------------------

set(GENERIC_G071R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G071R8TX_MAXSIZE 65536)
set(GENERIC_G071R8TX_MAXDATASIZE 36864)
set(GENERIC_G071R8TX_MCU cortex-m0plus)
add_library(GENERIC_G071R8TX INTERFACE)
target_compile_options(GENERIC_G071R8TX INTERFACE
  "SHELL:-DSTM32G071xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G071R8TX_MCU}
)
target_compile_definitions(GENERIC_G071R8TX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G071R8TX"
	"BOARD_NAME=\"GENERIC_G071R8TX\""
	"BOARD_ID=GENERIC_G071R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G071R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G071R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G071R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G071R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G071R8TX_MCU}
)
target_link_libraries(GENERIC_G071R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G071RBIX
# -----------------------------------------------------------------------------

set(GENERIC_G071RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G071RBIX_MAXSIZE 131072)
set(GENERIC_G071RBIX_MAXDATASIZE 36864)
set(GENERIC_G071RBIX_MCU cortex-m0plus)
add_library(GENERIC_G071RBIX INTERFACE)
target_compile_options(GENERIC_G071RBIX INTERFACE
  "SHELL:-DSTM32G071xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G071RBIX_MCU}
)
target_compile_definitions(GENERIC_G071RBIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G071RBIX"
	"BOARD_NAME=\"GENERIC_G071RBIX\""
	"BOARD_ID=GENERIC_G071RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G071RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G071RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_G071RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_G071RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G071RBIX_MCU}
)
target_link_libraries(GENERIC_G071RBIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G071RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G071RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G071RBTX_MAXSIZE 131072)
set(GENERIC_G071RBTX_MAXDATASIZE 36864)
set(GENERIC_G071RBTX_MCU cortex-m0plus)
add_library(GENERIC_G071RBTX INTERFACE)
target_compile_options(GENERIC_G071RBTX INTERFACE
  "SHELL:-DSTM32G071xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G071RBTX_MCU}
)
target_compile_definitions(GENERIC_G071RBTX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G071RBTX"
	"BOARD_NAME=\"GENERIC_G071RBTX\""
	"BOARD_ID=GENERIC_G071RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G071RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G071RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G071RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G071RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G071RBTX_MCU}
)
target_link_libraries(GENERIC_G071RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G081RBIX
# -----------------------------------------------------------------------------

set(GENERIC_G081RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G081RBIX_MAXSIZE 131072)
set(GENERIC_G081RBIX_MAXDATASIZE 36864)
set(GENERIC_G081RBIX_MCU cortex-m0plus)
add_library(GENERIC_G081RBIX INTERFACE)
target_compile_options(GENERIC_G081RBIX INTERFACE
  "SHELL:-DSTM32G081xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G081RBIX_MCU}
)
target_compile_definitions(GENERIC_G081RBIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G081RBIX"
	"BOARD_NAME=\"GENERIC_G081RBIX\""
	"BOARD_ID=GENERIC_G081RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G081RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G081RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_G081RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_G081RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G081RBIX_MCU}
)
target_link_libraries(GENERIC_G081RBIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G081RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G081RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(GENERIC_G081RBTX_MAXSIZE 131072)
set(GENERIC_G081RBTX_MAXDATASIZE 36864)
set(GENERIC_G081RBTX_MCU cortex-m0plus)
add_library(GENERIC_G081RBTX INTERFACE)
target_compile_options(GENERIC_G081RBTX INTERFACE
  "SHELL:-DSTM32G081xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G081RBTX_MCU}
)
target_compile_definitions(GENERIC_G081RBTX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G081RBTX"
	"BOARD_NAME=\"GENERIC_G081RBTX\""
	"BOARD_ID=GENERIC_G081RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G081RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G081RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G081RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G081RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=36864"
  "SHELL:"
  -mcpu=${GENERIC_G081RBTX_MCU}
)
target_link_libraries(GENERIC_G081RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0B1RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G0B1RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0B1RBTX_MAXSIZE 131072)
set(GENERIC_G0B1RBTX_MAXDATASIZE 147456)
set(GENERIC_G0B1RBTX_MCU cortex-m0plus)
add_library(GENERIC_G0B1RBTX INTERFACE)
target_compile_options(GENERIC_G0B1RBTX INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RBTX_MCU}
)
target_compile_definitions(GENERIC_G0B1RBTX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0B1RBTX"
	"BOARD_NAME=\"GENERIC_G0B1RBTX\""
	"BOARD_ID=GENERIC_G0B1RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0B1RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0B1RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G0B1RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G0B1RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RBTX_MCU}
)
target_link_libraries(GENERIC_G0B1RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0B1RCIX
# -----------------------------------------------------------------------------

set(GENERIC_G0B1RCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0B1RCIX_MAXSIZE 262144)
set(GENERIC_G0B1RCIX_MAXDATASIZE 147456)
set(GENERIC_G0B1RCIX_MCU cortex-m0plus)
add_library(GENERIC_G0B1RCIX INTERFACE)
target_compile_options(GENERIC_G0B1RCIX INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RCIX_MCU}
)
target_compile_definitions(GENERIC_G0B1RCIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0B1RCIX"
	"BOARD_NAME=\"GENERIC_G0B1RCIX\""
	"BOARD_ID=GENERIC_G0B1RCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0B1RCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0B1RCIX_VARIANT_PATH}
)

target_link_options(GENERIC_G0B1RCIX INTERFACE
  "LINKER:--default-script=${GENERIC_G0B1RCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RCIX_MCU}
)
target_link_libraries(GENERIC_G0B1RCIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0B1RCTX
# -----------------------------------------------------------------------------

set(GENERIC_G0B1RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0B1RCTX_MAXSIZE 262144)
set(GENERIC_G0B1RCTX_MAXDATASIZE 147456)
set(GENERIC_G0B1RCTX_MCU cortex-m0plus)
add_library(GENERIC_G0B1RCTX INTERFACE)
target_compile_options(GENERIC_G0B1RCTX INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RCTX_MCU}
)
target_compile_definitions(GENERIC_G0B1RCTX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0B1RCTX"
	"BOARD_NAME=\"GENERIC_G0B1RCTX\""
	"BOARD_ID=GENERIC_G0B1RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0B1RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0B1RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_G0B1RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_G0B1RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RCTX_MCU}
)
target_link_libraries(GENERIC_G0B1RCTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0B1REIX
# -----------------------------------------------------------------------------

set(GENERIC_G0B1REIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0B1REIX_MAXSIZE 524288)
set(GENERIC_G0B1REIX_MAXDATASIZE 147456)
set(GENERIC_G0B1REIX_MCU cortex-m0plus)
add_library(GENERIC_G0B1REIX INTERFACE)
target_compile_options(GENERIC_G0B1REIX INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0B1REIX_MCU}
)
target_compile_definitions(GENERIC_G0B1REIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0B1REIX"
	"BOARD_NAME=\"GENERIC_G0B1REIX\""
	"BOARD_ID=GENERIC_G0B1REIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0B1REIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0B1REIX_VARIANT_PATH}
)

target_link_options(GENERIC_G0B1REIX INTERFACE
  "LINKER:--default-script=${GENERIC_G0B1REIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0B1REIX_MCU}
)
target_link_libraries(GENERIC_G0B1REIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0B1RETX
# -----------------------------------------------------------------------------

set(GENERIC_G0B1RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0B1RETX_MAXSIZE 524288)
set(GENERIC_G0B1RETX_MAXDATASIZE 147456)
set(GENERIC_G0B1RETX_MCU cortex-m0plus)
add_library(GENERIC_G0B1RETX INTERFACE)
target_compile_options(GENERIC_G0B1RETX INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RETX_MCU}
)
target_compile_definitions(GENERIC_G0B1RETX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0B1RETX"
	"BOARD_NAME=\"GENERIC_G0B1RETX\""
	"BOARD_ID=GENERIC_G0B1RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0B1RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0B1RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G0B1RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G0B1RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0B1RETX_MCU}
)
target_link_libraries(GENERIC_G0B1RETX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0C1RCIX
# -----------------------------------------------------------------------------

set(GENERIC_G0C1RCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0C1RCIX_MAXSIZE 262144)
set(GENERIC_G0C1RCIX_MAXDATASIZE 147456)
set(GENERIC_G0C1RCIX_MCU cortex-m0plus)
add_library(GENERIC_G0C1RCIX INTERFACE)
target_compile_options(GENERIC_G0C1RCIX INTERFACE
  "SHELL:-DSTM32G0C1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RCIX_MCU}
)
target_compile_definitions(GENERIC_G0C1RCIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0C1RCIX"
	"BOARD_NAME=\"GENERIC_G0C1RCIX\""
	"BOARD_ID=GENERIC_G0C1RCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0C1RCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0C1RCIX_VARIANT_PATH}
)

target_link_options(GENERIC_G0C1RCIX INTERFACE
  "LINKER:--default-script=${GENERIC_G0C1RCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RCIX_MCU}
)
target_link_libraries(GENERIC_G0C1RCIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0C1RCTX
# -----------------------------------------------------------------------------

set(GENERIC_G0C1RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0C1RCTX_MAXSIZE 262144)
set(GENERIC_G0C1RCTX_MAXDATASIZE 147456)
set(GENERIC_G0C1RCTX_MCU cortex-m0plus)
add_library(GENERIC_G0C1RCTX INTERFACE)
target_compile_options(GENERIC_G0C1RCTX INTERFACE
  "SHELL:-DSTM32G0C1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RCTX_MCU}
)
target_compile_definitions(GENERIC_G0C1RCTX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0C1RCTX"
	"BOARD_NAME=\"GENERIC_G0C1RCTX\""
	"BOARD_ID=GENERIC_G0C1RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0C1RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0C1RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_G0C1RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_G0C1RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RCTX_MCU}
)
target_link_libraries(GENERIC_G0C1RCTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0C1REIX
# -----------------------------------------------------------------------------

set(GENERIC_G0C1REIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0C1REIX_MAXSIZE 524288)
set(GENERIC_G0C1REIX_MAXDATASIZE 147456)
set(GENERIC_G0C1REIX_MCU cortex-m0plus)
add_library(GENERIC_G0C1REIX INTERFACE)
target_compile_options(GENERIC_G0C1REIX INTERFACE
  "SHELL:-DSTM32G0C1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0C1REIX_MCU}
)
target_compile_definitions(GENERIC_G0C1REIX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0C1REIX"
	"BOARD_NAME=\"GENERIC_G0C1REIX\""
	"BOARD_ID=GENERIC_G0C1REIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0C1REIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0C1REIX_VARIANT_PATH}
)

target_link_options(GENERIC_G0C1REIX INTERFACE
  "LINKER:--default-script=${GENERIC_G0C1REIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0C1REIX_MCU}
)
target_link_libraries(GENERIC_G0C1REIX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G0C1RETX
# -----------------------------------------------------------------------------

set(GENERIC_G0C1RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(GENERIC_G0C1RETX_MAXSIZE 524288)
set(GENERIC_G0C1RETX_MAXDATASIZE 147456)
set(GENERIC_G0C1RETX_MCU cortex-m0plus)
add_library(GENERIC_G0C1RETX INTERFACE)
target_compile_options(GENERIC_G0C1RETX INTERFACE
  "SHELL:-DSTM32G0C1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RETX_MCU}
)
target_compile_definitions(GENERIC_G0C1RETX INTERFACE
  "STM32G0xx"
	"ARDUINO_GENERIC_G0C1RETX"
	"BOARD_NAME=\"GENERIC_G0C1RETX\""
	"BOARD_ID=GENERIC_G0C1RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G0C1RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${GENERIC_G0C1RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G0C1RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G0C1RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${GENERIC_G0C1RETX_MCU}
)
target_link_libraries(GENERIC_G0C1RETX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_G431C6UX
# -----------------------------------------------------------------------------

set(GENERIC_G431C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431C(6-8-B)U_G441CBU")
set(GENERIC_G431C6UX_MAXSIZE 32768)
set(GENERIC_G431C6UX_MAXDATASIZE 32768)
set(GENERIC_G431C6UX_MCU cortex-m4)
add_library(GENERIC_G431C6UX INTERFACE)
target_compile_options(GENERIC_G431C6UX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431C6UX_MCU}
)
target_compile_definitions(GENERIC_G431C6UX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431C6UX"
	"BOARD_NAME=\"GENERIC_G431C6UX\""
	"BOARD_ID=GENERIC_G431C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_G431C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_G431C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431C6UX_MCU}
)
target_link_libraries(GENERIC_G431C6UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431C8UX
# -----------------------------------------------------------------------------

set(GENERIC_G431C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431C(6-8-B)U_G441CBU")
set(GENERIC_G431C8UX_MAXSIZE 65536)
set(GENERIC_G431C8UX_MAXDATASIZE 32768)
set(GENERIC_G431C8UX_MCU cortex-m4)
add_library(GENERIC_G431C8UX INTERFACE)
target_compile_options(GENERIC_G431C8UX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431C8UX_MCU}
)
target_compile_definitions(GENERIC_G431C8UX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431C8UX"
	"BOARD_NAME=\"GENERIC_G431C8UX\""
	"BOARD_ID=GENERIC_G431C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_G431C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_G431C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431C8UX_MCU}
)
target_link_libraries(GENERIC_G431C8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431CBUX
# -----------------------------------------------------------------------------

set(GENERIC_G431CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431C(6-8-B)U_G441CBU")
set(GENERIC_G431CBUX_MAXSIZE 131072)
set(GENERIC_G431CBUX_MAXDATASIZE 32768)
set(GENERIC_G431CBUX_MCU cortex-m4)
add_library(GENERIC_G431CBUX INTERFACE)
target_compile_options(GENERIC_G431CBUX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431CBUX_MCU}
)
target_compile_definitions(GENERIC_G431CBUX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431CBUX"
	"BOARD_NAME=\"GENERIC_G431CBUX\""
	"BOARD_ID=GENERIC_G431CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_G431CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_G431CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431CBUX_MCU}
)
target_link_libraries(GENERIC_G431CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431K6TX
# -----------------------------------------------------------------------------

set(GENERIC_G431K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431K6TX_MAXSIZE 32768)
set(GENERIC_G431K6TX_MAXDATASIZE 32768)
set(GENERIC_G431K6TX_MCU cortex-m4)
add_library(GENERIC_G431K6TX INTERFACE)
target_compile_options(GENERIC_G431K6TX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431K6TX_MCU}
)
target_compile_definitions(GENERIC_G431K6TX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431K6TX"
	"BOARD_NAME=\"GENERIC_G431K6TX\""
	"BOARD_ID=GENERIC_G431K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G431K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G431K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431K6TX_MCU}
)
target_link_libraries(GENERIC_G431K6TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431K6UX
# -----------------------------------------------------------------------------

set(GENERIC_G431K6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431K6UX_MAXSIZE 32768)
set(GENERIC_G431K6UX_MAXDATASIZE 32768)
set(GENERIC_G431K6UX_MCU cortex-m4)
add_library(GENERIC_G431K6UX INTERFACE)
target_compile_options(GENERIC_G431K6UX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431K6UX_MCU}
)
target_compile_definitions(GENERIC_G431K6UX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431K6UX"
	"BOARD_NAME=\"GENERIC_G431K6UX\""
	"BOARD_ID=GENERIC_G431K6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431K6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431K6UX_VARIANT_PATH}
)

target_link_options(GENERIC_G431K6UX INTERFACE
  "LINKER:--default-script=${GENERIC_G431K6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431K6UX_MCU}
)
target_link_libraries(GENERIC_G431K6UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431K8TX
# -----------------------------------------------------------------------------

set(GENERIC_G431K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431K8TX_MAXSIZE 65536)
set(GENERIC_G431K8TX_MAXDATASIZE 32768)
set(GENERIC_G431K8TX_MCU cortex-m4)
add_library(GENERIC_G431K8TX INTERFACE)
target_compile_options(GENERIC_G431K8TX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431K8TX_MCU}
)
target_compile_definitions(GENERIC_G431K8TX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431K8TX"
	"BOARD_NAME=\"GENERIC_G431K8TX\""
	"BOARD_ID=GENERIC_G431K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G431K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G431K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431K8TX_MCU}
)
target_link_libraries(GENERIC_G431K8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431K8UX
# -----------------------------------------------------------------------------

set(GENERIC_G431K8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431K8UX_MAXSIZE 65536)
set(GENERIC_G431K8UX_MAXDATASIZE 32768)
set(GENERIC_G431K8UX_MCU cortex-m4)
add_library(GENERIC_G431K8UX INTERFACE)
target_compile_options(GENERIC_G431K8UX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431K8UX_MCU}
)
target_compile_definitions(GENERIC_G431K8UX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431K8UX"
	"BOARD_NAME=\"GENERIC_G431K8UX\""
	"BOARD_ID=GENERIC_G431K8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431K8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431K8UX_VARIANT_PATH}
)

target_link_options(GENERIC_G431K8UX INTERFACE
  "LINKER:--default-script=${GENERIC_G431K8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431K8UX_MCU}
)
target_link_libraries(GENERIC_G431K8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431KBTX
# -----------------------------------------------------------------------------

set(GENERIC_G431KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431KBTX_MAXSIZE 131072)
set(GENERIC_G431KBTX_MAXDATASIZE 32768)
set(GENERIC_G431KBTX_MCU cortex-m4)
add_library(GENERIC_G431KBTX INTERFACE)
target_compile_options(GENERIC_G431KBTX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431KBTX_MCU}
)
target_compile_definitions(GENERIC_G431KBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431KBTX"
	"BOARD_NAME=\"GENERIC_G431KBTX\""
	"BOARD_ID=GENERIC_G431KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G431KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G431KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431KBTX_MCU}
)
target_link_libraries(GENERIC_G431KBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431KBUX
# -----------------------------------------------------------------------------

set(GENERIC_G431KBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G431KBUX_MAXSIZE 131072)
set(GENERIC_G431KBUX_MAXDATASIZE 32768)
set(GENERIC_G431KBUX_MCU cortex-m4)
add_library(GENERIC_G431KBUX INTERFACE)
target_compile_options(GENERIC_G431KBUX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431KBUX_MCU}
)
target_compile_definitions(GENERIC_G431KBUX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431KBUX"
	"BOARD_NAME=\"GENERIC_G431KBUX\""
	"BOARD_ID=GENERIC_G431KBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431KBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431KBUX_VARIANT_PATH}
)

target_link_options(GENERIC_G431KBUX INTERFACE
  "LINKER:--default-script=${GENERIC_G431KBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431KBUX_MCU}
)
target_link_libraries(GENERIC_G431KBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431R6IX
# -----------------------------------------------------------------------------

set(GENERIC_G431R6IX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431R6IX_MAXSIZE 32768)
set(GENERIC_G431R6IX_MAXDATASIZE 32768)
set(GENERIC_G431R6IX_MCU cortex-m4)
add_library(GENERIC_G431R6IX INTERFACE)
target_compile_options(GENERIC_G431R6IX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431R6IX_MCU}
)
target_compile_definitions(GENERIC_G431R6IX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431R6IX"
	"BOARD_NAME=\"GENERIC_G431R6IX\""
	"BOARD_ID=GENERIC_G431R6IX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431R6IX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431R6IX_VARIANT_PATH}
)

target_link_options(GENERIC_G431R6IX INTERFACE
  "LINKER:--default-script=${GENERIC_G431R6IX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431R6IX_MCU}
)
target_link_libraries(GENERIC_G431R6IX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431R6TX
# -----------------------------------------------------------------------------

set(GENERIC_G431R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431R6TX_MAXSIZE 32768)
set(GENERIC_G431R6TX_MAXDATASIZE 32768)
set(GENERIC_G431R6TX_MCU cortex-m4)
add_library(GENERIC_G431R6TX INTERFACE)
target_compile_options(GENERIC_G431R6TX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431R6TX_MCU}
)
target_compile_definitions(GENERIC_G431R6TX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431R6TX"
	"BOARD_NAME=\"GENERIC_G431R6TX\""
	"BOARD_ID=GENERIC_G431R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_G431R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_G431R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431R6TX_MCU}
)
target_link_libraries(GENERIC_G431R6TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431R8IX
# -----------------------------------------------------------------------------

set(GENERIC_G431R8IX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431R8IX_MAXSIZE 65536)
set(GENERIC_G431R8IX_MAXDATASIZE 32768)
set(GENERIC_G431R8IX_MCU cortex-m4)
add_library(GENERIC_G431R8IX INTERFACE)
target_compile_options(GENERIC_G431R8IX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431R8IX_MCU}
)
target_compile_definitions(GENERIC_G431R8IX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431R8IX"
	"BOARD_NAME=\"GENERIC_G431R8IX\""
	"BOARD_ID=GENERIC_G431R8IX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431R8IX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431R8IX_VARIANT_PATH}
)

target_link_options(GENERIC_G431R8IX INTERFACE
  "LINKER:--default-script=${GENERIC_G431R8IX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431R8IX_MCU}
)
target_link_libraries(GENERIC_G431R8IX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431R8TX
# -----------------------------------------------------------------------------

set(GENERIC_G431R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431R8TX_MAXSIZE 65536)
set(GENERIC_G431R8TX_MAXDATASIZE 32768)
set(GENERIC_G431R8TX_MCU cortex-m4)
add_library(GENERIC_G431R8TX INTERFACE)
target_compile_options(GENERIC_G431R8TX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431R8TX_MCU}
)
target_compile_definitions(GENERIC_G431R8TX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431R8TX"
	"BOARD_NAME=\"GENERIC_G431R8TX\""
	"BOARD_ID=GENERIC_G431R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_G431R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_G431R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431R8TX_MCU}
)
target_link_libraries(GENERIC_G431R8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431RBIX
# -----------------------------------------------------------------------------

set(GENERIC_G431RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431RBIX_MAXSIZE 131072)
set(GENERIC_G431RBIX_MAXDATASIZE 32768)
set(GENERIC_G431RBIX_MCU cortex-m4)
add_library(GENERIC_G431RBIX INTERFACE)
target_compile_options(GENERIC_G431RBIX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431RBIX_MCU}
)
target_compile_definitions(GENERIC_G431RBIX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431RBIX"
	"BOARD_NAME=\"GENERIC_G431RBIX\""
	"BOARD_ID=GENERIC_G431RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_G431RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_G431RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431RBIX_MCU}
)
target_link_libraries(GENERIC_G431RBIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G431RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G431RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G431RBTX_MAXSIZE 131072)
set(GENERIC_G431RBTX_MAXDATASIZE 32768)
set(GENERIC_G431RBTX_MCU cortex-m4)
add_library(GENERIC_G431RBTX INTERFACE)
target_compile_options(GENERIC_G431RBTX INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G431RBTX_MCU}
)
target_compile_definitions(GENERIC_G431RBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G431RBTX"
	"BOARD_NAME=\"GENERIC_G431RBTX\""
	"BOARD_ID=GENERIC_G431RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G431RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G431RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G431RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G431RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G431RBTX_MCU}
)
target_link_libraries(GENERIC_G431RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G441CBUX
# -----------------------------------------------------------------------------

set(GENERIC_G441CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431C(6-8-B)U_G441CBU")
set(GENERIC_G441CBUX_MAXSIZE 131072)
set(GENERIC_G441CBUX_MAXDATASIZE 32768)
set(GENERIC_G441CBUX_MCU cortex-m4)
add_library(GENERIC_G441CBUX INTERFACE)
target_compile_options(GENERIC_G441CBUX INTERFACE
  "SHELL:-DSTM32G441xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G441CBUX_MCU}
)
target_compile_definitions(GENERIC_G441CBUX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G441CBUX"
	"BOARD_NAME=\"GENERIC_G441CBUX\""
	"BOARD_ID=GENERIC_G441CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G441CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G441CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_G441CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_G441CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G441CBUX_MCU}
)
target_link_libraries(GENERIC_G441CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G441KBTX
# -----------------------------------------------------------------------------

set(GENERIC_G441KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G441KBTX_MAXSIZE 131072)
set(GENERIC_G441KBTX_MAXDATASIZE 32768)
set(GENERIC_G441KBTX_MCU cortex-m4)
add_library(GENERIC_G441KBTX INTERFACE)
target_compile_options(GENERIC_G441KBTX INTERFACE
  "SHELL:-DSTM32G441xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G441KBTX_MCU}
)
target_compile_definitions(GENERIC_G441KBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G441KBTX"
	"BOARD_NAME=\"GENERIC_G441KBTX\""
	"BOARD_ID=GENERIC_G441KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G441KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G441KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G441KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G441KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G441KBTX_MCU}
)
target_link_libraries(GENERIC_G441KBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G441KBUX
# -----------------------------------------------------------------------------

set(GENERIC_G441KBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(GENERIC_G441KBUX_MAXSIZE 131072)
set(GENERIC_G441KBUX_MAXDATASIZE 32768)
set(GENERIC_G441KBUX_MCU cortex-m4)
add_library(GENERIC_G441KBUX INTERFACE)
target_compile_options(GENERIC_G441KBUX INTERFACE
  "SHELL:-DSTM32G441xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G441KBUX_MCU}
)
target_compile_definitions(GENERIC_G441KBUX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G441KBUX"
	"BOARD_NAME=\"GENERIC_G441KBUX\""
	"BOARD_ID=GENERIC_G441KBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G441KBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G441KBUX_VARIANT_PATH}
)

target_link_options(GENERIC_G441KBUX INTERFACE
  "LINKER:--default-script=${GENERIC_G441KBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G441KBUX_MCU}
)
target_link_libraries(GENERIC_G441KBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G441RBIX
# -----------------------------------------------------------------------------

set(GENERIC_G441RBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G441RBIX_MAXSIZE 131072)
set(GENERIC_G441RBIX_MAXDATASIZE 32768)
set(GENERIC_G441RBIX_MCU cortex-m4)
add_library(GENERIC_G441RBIX INTERFACE)
target_compile_options(GENERIC_G441RBIX INTERFACE
  "SHELL:-DSTM32G441xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G441RBIX_MCU}
)
target_compile_definitions(GENERIC_G441RBIX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G441RBIX"
	"BOARD_NAME=\"GENERIC_G441RBIX\""
	"BOARD_ID=GENERIC_G441RBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G441RBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G441RBIX_VARIANT_PATH}
)

target_link_options(GENERIC_G441RBIX INTERFACE
  "LINKER:--default-script=${GENERIC_G441RBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G441RBIX_MCU}
)
target_link_libraries(GENERIC_G441RBIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G441RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G441RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(GENERIC_G441RBTX_MAXSIZE 131072)
set(GENERIC_G441RBTX_MAXDATASIZE 32768)
set(GENERIC_G441RBTX_MCU cortex-m4)
add_library(GENERIC_G441RBTX INTERFACE)
target_compile_options(GENERIC_G441RBTX INTERFACE
  "SHELL:-DSTM32G441xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G441RBTX_MCU}
)
target_compile_definitions(GENERIC_G441RBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G441RBTX"
	"BOARD_NAME=\"GENERIC_G441RBTX\""
	"BOARD_ID=GENERIC_G441RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G441RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G441RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G441RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G441RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G441RBTX_MCU}
)
target_link_libraries(GENERIC_G441RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G473RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G473RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G473RBTX_MAXSIZE 131072)
set(GENERIC_G473RBTX_MAXDATASIZE 131072)
set(GENERIC_G473RBTX_MCU cortex-m4)
add_library(GENERIC_G473RBTX INTERFACE)
target_compile_options(GENERIC_G473RBTX INTERFACE
  "SHELL:-DSTM32G473xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G473RBTX_MCU}
)
target_compile_definitions(GENERIC_G473RBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G473RBTX"
	"BOARD_NAME=\"GENERIC_G473RBTX\""
	"BOARD_ID=GENERIC_G473RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G473RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G473RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G473RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G473RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G473RBTX_MCU}
)
target_link_libraries(GENERIC_G473RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G473RCTX
# -----------------------------------------------------------------------------

set(GENERIC_G473RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G473RCTX_MAXSIZE 262144)
set(GENERIC_G473RCTX_MAXDATASIZE 131072)
set(GENERIC_G473RCTX_MCU cortex-m4)
add_library(GENERIC_G473RCTX INTERFACE)
target_compile_options(GENERIC_G473RCTX INTERFACE
  "SHELL:-DSTM32G473xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G473RCTX_MCU}
)
target_compile_definitions(GENERIC_G473RCTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G473RCTX"
	"BOARD_NAME=\"GENERIC_G473RCTX\""
	"BOARD_ID=GENERIC_G473RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G473RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G473RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_G473RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_G473RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G473RCTX_MCU}
)
target_link_libraries(GENERIC_G473RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G473RETX
# -----------------------------------------------------------------------------

set(GENERIC_G473RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G473RETX_MAXSIZE 524288)
set(GENERIC_G473RETX_MAXDATASIZE 131072)
set(GENERIC_G473RETX_MCU cortex-m4)
add_library(GENERIC_G473RETX INTERFACE)
target_compile_options(GENERIC_G473RETX INTERFACE
  "SHELL:-DSTM32G473xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G473RETX_MCU}
)
target_compile_definitions(GENERIC_G473RETX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G473RETX"
	"BOARD_NAME=\"GENERIC_G473RETX\""
	"BOARD_ID=GENERIC_G473RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G473RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G473RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G473RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G473RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G473RETX_MCU}
)
target_link_libraries(GENERIC_G473RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G474RBTX
# -----------------------------------------------------------------------------

set(GENERIC_G474RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G474RBTX_MAXSIZE 131072)
set(GENERIC_G474RBTX_MAXDATASIZE 131072)
set(GENERIC_G474RBTX_MCU cortex-m4)
add_library(GENERIC_G474RBTX INTERFACE)
target_compile_options(GENERIC_G474RBTX INTERFACE
  "SHELL:-DSTM32G474xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G474RBTX_MCU}
)
target_compile_definitions(GENERIC_G474RBTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G474RBTX"
	"BOARD_NAME=\"GENERIC_G474RBTX\""
	"BOARD_ID=GENERIC_G474RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G474RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G474RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_G474RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_G474RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G474RBTX_MCU}
)
target_link_libraries(GENERIC_G474RBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G474RCTX
# -----------------------------------------------------------------------------

set(GENERIC_G474RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G474RCTX_MAXSIZE 262144)
set(GENERIC_G474RCTX_MAXDATASIZE 131072)
set(GENERIC_G474RCTX_MCU cortex-m4)
add_library(GENERIC_G474RCTX INTERFACE)
target_compile_options(GENERIC_G474RCTX INTERFACE
  "SHELL:-DSTM32G474xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G474RCTX_MCU}
)
target_compile_definitions(GENERIC_G474RCTX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G474RCTX"
	"BOARD_NAME=\"GENERIC_G474RCTX\""
	"BOARD_ID=GENERIC_G474RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G474RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G474RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_G474RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_G474RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G474RCTX_MCU}
)
target_link_libraries(GENERIC_G474RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G474RETX
# -----------------------------------------------------------------------------

set(GENERIC_G474RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G474RETX_MAXSIZE 524288)
set(GENERIC_G474RETX_MAXDATASIZE 131072)
set(GENERIC_G474RETX_MCU cortex-m4)
add_library(GENERIC_G474RETX INTERFACE)
target_compile_options(GENERIC_G474RETX INTERFACE
  "SHELL:-DSTM32G474xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G474RETX_MCU}
)
target_compile_definitions(GENERIC_G474RETX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G474RETX"
	"BOARD_NAME=\"GENERIC_G474RETX\""
	"BOARD_ID=GENERIC_G474RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G474RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G474RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G474RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G474RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G474RETX_MCU}
)
target_link_libraries(GENERIC_G474RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G483RETX
# -----------------------------------------------------------------------------

set(GENERIC_G483RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G483RETX_MAXSIZE 524288)
set(GENERIC_G483RETX_MAXDATASIZE 131072)
set(GENERIC_G483RETX_MCU cortex-m4)
add_library(GENERIC_G483RETX INTERFACE)
target_compile_options(GENERIC_G483RETX INTERFACE
  "SHELL:-DSTM32G483xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G483RETX_MCU}
)
target_compile_definitions(GENERIC_G483RETX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G483RETX"
	"BOARD_NAME=\"GENERIC_G483RETX\""
	"BOARD_ID=GENERIC_G483RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G483RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G483RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G483RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G483RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G483RETX_MCU}
)
target_link_libraries(GENERIC_G483RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_G484RETX
# -----------------------------------------------------------------------------

set(GENERIC_G484RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(GENERIC_G484RETX_MAXSIZE 524288)
set(GENERIC_G484RETX_MAXDATASIZE 131072)
set(GENERIC_G484RETX_MCU cortex-m4)
add_library(GENERIC_G484RETX INTERFACE)
target_compile_options(GENERIC_G484RETX INTERFACE
  "SHELL:-DSTM32G484xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_G484RETX_MCU}
)
target_compile_definitions(GENERIC_G484RETX INTERFACE
  "STM32G4xx"
	"ARDUINO_GENERIC_G484RETX"
	"BOARD_NAME=\"GENERIC_G484RETX\""
	"BOARD_ID=GENERIC_G484RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_G484RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${GENERIC_G484RETX_VARIANT_PATH}
)

target_link_options(GENERIC_G484RETX INTERFACE
  "LINKER:--default-script=${GENERIC_G484RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_G484RETX_MCU}
)
target_link_libraries(GENERIC_G484RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_H742IGKX
# -----------------------------------------------------------------------------

set(GENERIC_H742IGKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H742IGKX_MAXSIZE 1048576)
set(GENERIC_H742IGKX_MAXDATASIZE 524288)
set(GENERIC_H742IGKX_MCU cortex-m7)
add_library(GENERIC_H742IGKX INTERFACE)
target_compile_options(GENERIC_H742IGKX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742IGKX_MCU}
)
target_compile_definitions(GENERIC_H742IGKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742IGKX"
	"BOARD_NAME=\"GENERIC_H742IGKX\""
	"BOARD_ID=GENERIC_H742IGKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742IGKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742IGKX_VARIANT_PATH}
)

target_link_options(GENERIC_H742IGKX INTERFACE
  "LINKER:--default-script=${GENERIC_H742IGKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742IGKX_MCU}
)
target_link_libraries(GENERIC_H742IGKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742IGTX
# -----------------------------------------------------------------------------

set(GENERIC_H742IGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H742IGTX_MAXSIZE 1048576)
set(GENERIC_H742IGTX_MAXDATASIZE 524288)
set(GENERIC_H742IGTX_MCU cortex-m7)
add_library(GENERIC_H742IGTX INTERFACE)
target_compile_options(GENERIC_H742IGTX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742IGTX_MCU}
)
target_compile_definitions(GENERIC_H742IGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742IGTX"
	"BOARD_NAME=\"GENERIC_H742IGTX\""
	"BOARD_ID=GENERIC_H742IGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742IGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742IGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H742IGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H742IGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742IGTX_MCU}
)
target_link_libraries(GENERIC_H742IGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742IIKX
# -----------------------------------------------------------------------------

set(GENERIC_H742IIKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H742IIKX_MAXSIZE 2097152)
set(GENERIC_H742IIKX_MAXDATASIZE 524288)
set(GENERIC_H742IIKX_MCU cortex-m7)
add_library(GENERIC_H742IIKX INTERFACE)
target_compile_options(GENERIC_H742IIKX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742IIKX_MCU}
)
target_compile_definitions(GENERIC_H742IIKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742IIKX"
	"BOARD_NAME=\"GENERIC_H742IIKX\""
	"BOARD_ID=GENERIC_H742IIKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742IIKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742IIKX_VARIANT_PATH}
)

target_link_options(GENERIC_H742IIKX INTERFACE
  "LINKER:--default-script=${GENERIC_H742IIKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742IIKX_MCU}
)
target_link_libraries(GENERIC_H742IIKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742IITX
# -----------------------------------------------------------------------------

set(GENERIC_H742IITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H742IITX_MAXSIZE 2097152)
set(GENERIC_H742IITX_MAXDATASIZE 524288)
set(GENERIC_H742IITX_MCU cortex-m7)
add_library(GENERIC_H742IITX INTERFACE)
target_compile_options(GENERIC_H742IITX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742IITX_MCU}
)
target_compile_definitions(GENERIC_H742IITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742IITX"
	"BOARD_NAME=\"GENERIC_H742IITX\""
	"BOARD_ID=GENERIC_H742IITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742IITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742IITX_VARIANT_PATH}
)

target_link_options(GENERIC_H742IITX INTERFACE
  "LINKER:--default-script=${GENERIC_H742IITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742IITX_MCU}
)
target_link_libraries(GENERIC_H742IITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742VGHX
# -----------------------------------------------------------------------------

set(GENERIC_H742VGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H742VGHX_MAXSIZE 1048576)
set(GENERIC_H742VGHX_MAXDATASIZE 524288)
set(GENERIC_H742VGHX_MCU cortex-m7)
add_library(GENERIC_H742VGHX INTERFACE)
target_compile_options(GENERIC_H742VGHX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742VGHX_MCU}
)
target_compile_definitions(GENERIC_H742VGHX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742VGHX"
	"BOARD_NAME=\"GENERIC_H742VGHX\""
	"BOARD_ID=GENERIC_H742VGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742VGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742VGHX_VARIANT_PATH}
)

target_link_options(GENERIC_H742VGHX INTERFACE
  "LINKER:--default-script=${GENERIC_H742VGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742VGHX_MCU}
)
target_link_libraries(GENERIC_H742VGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742VGTX
# -----------------------------------------------------------------------------

set(GENERIC_H742VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H742VGTX_MAXSIZE 1048576)
set(GENERIC_H742VGTX_MAXDATASIZE 524288)
set(GENERIC_H742VGTX_MCU cortex-m7)
add_library(GENERIC_H742VGTX INTERFACE)
target_compile_options(GENERIC_H742VGTX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742VGTX_MCU}
)
target_compile_definitions(GENERIC_H742VGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742VGTX"
	"BOARD_NAME=\"GENERIC_H742VGTX\""
	"BOARD_ID=GENERIC_H742VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H742VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H742VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742VGTX_MCU}
)
target_link_libraries(GENERIC_H742VGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742VIHX
# -----------------------------------------------------------------------------

set(GENERIC_H742VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H742VIHX_MAXSIZE 2097152)
set(GENERIC_H742VIHX_MAXDATASIZE 524288)
set(GENERIC_H742VIHX_MCU cortex-m7)
add_library(GENERIC_H742VIHX INTERFACE)
target_compile_options(GENERIC_H742VIHX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742VIHX_MCU}
)
target_compile_definitions(GENERIC_H742VIHX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742VIHX"
	"BOARD_NAME=\"GENERIC_H742VIHX\""
	"BOARD_ID=GENERIC_H742VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_H742VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_H742VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742VIHX_MCU}
)
target_link_libraries(GENERIC_H742VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742VITX
# -----------------------------------------------------------------------------

set(GENERIC_H742VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H742VITX_MAXSIZE 2097152)
set(GENERIC_H742VITX_MAXDATASIZE 524288)
set(GENERIC_H742VITX_MCU cortex-m7)
add_library(GENERIC_H742VITX INTERFACE)
target_compile_options(GENERIC_H742VITX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742VITX_MCU}
)
target_compile_definitions(GENERIC_H742VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742VITX"
	"BOARD_NAME=\"GENERIC_H742VITX\""
	"BOARD_ID=GENERIC_H742VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742VITX_VARIANT_PATH}
)

target_link_options(GENERIC_H742VITX INTERFACE
  "LINKER:--default-script=${GENERIC_H742VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742VITX_MCU}
)
target_link_libraries(GENERIC_H742VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_H742ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H742ZGTX_MAXSIZE 1048576)
set(GENERIC_H742ZGTX_MAXDATASIZE 524288)
set(GENERIC_H742ZGTX_MCU cortex-m7)
add_library(GENERIC_H742ZGTX INTERFACE)
target_compile_options(GENERIC_H742ZGTX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742ZGTX_MCU}
)
target_compile_definitions(GENERIC_H742ZGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742ZGTX"
	"BOARD_NAME=\"GENERIC_H742ZGTX\""
	"BOARD_ID=GENERIC_H742ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H742ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H742ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742ZGTX_MCU}
)
target_link_libraries(GENERIC_H742ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H742ZITX
# -----------------------------------------------------------------------------

set(GENERIC_H742ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H742ZITX_MAXSIZE 2097152)
set(GENERIC_H742ZITX_MAXDATASIZE 524288)
set(GENERIC_H742ZITX_MCU cortex-m7)
add_library(GENERIC_H742ZITX INTERFACE)
target_compile_options(GENERIC_H742ZITX INTERFACE
  "SHELL:-DSTM32H742xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H742ZITX_MCU}
)
target_compile_definitions(GENERIC_H742ZITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H742ZITX"
	"BOARD_NAME=\"GENERIC_H742ZITX\""
	"BOARD_ID=GENERIC_H742ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H742ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H742ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_H742ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_H742ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H742ZITX_MCU}
)
target_link_libraries(GENERIC_H742ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743IGKX
# -----------------------------------------------------------------------------

set(GENERIC_H743IGKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H743IGKX_MAXSIZE 1048576)
set(GENERIC_H743IGKX_MAXDATASIZE 524288)
set(GENERIC_H743IGKX_MCU cortex-m7)
add_library(GENERIC_H743IGKX INTERFACE)
target_compile_options(GENERIC_H743IGKX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743IGKX_MCU}
)
target_compile_definitions(GENERIC_H743IGKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743IGKX"
	"BOARD_NAME=\"GENERIC_H743IGKX\""
	"BOARD_ID=GENERIC_H743IGKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743IGKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743IGKX_VARIANT_PATH}
)

target_link_options(GENERIC_H743IGKX INTERFACE
  "LINKER:--default-script=${GENERIC_H743IGKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743IGKX_MCU}
)
target_link_libraries(GENERIC_H743IGKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743IGTX
# -----------------------------------------------------------------------------

set(GENERIC_H743IGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H743IGTX_MAXSIZE 1048576)
set(GENERIC_H743IGTX_MAXDATASIZE 524288)
set(GENERIC_H743IGTX_MCU cortex-m7)
add_library(GENERIC_H743IGTX INTERFACE)
target_compile_options(GENERIC_H743IGTX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743IGTX_MCU}
)
target_compile_definitions(GENERIC_H743IGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743IGTX"
	"BOARD_NAME=\"GENERIC_H743IGTX\""
	"BOARD_ID=GENERIC_H743IGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743IGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743IGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H743IGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H743IGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743IGTX_MCU}
)
target_link_libraries(GENERIC_H743IGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743IIKX
# -----------------------------------------------------------------------------

set(GENERIC_H743IIKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H743IIKX_MAXSIZE 2097152)
set(GENERIC_H743IIKX_MAXDATASIZE 524288)
set(GENERIC_H743IIKX_MCU cortex-m7)
add_library(GENERIC_H743IIKX INTERFACE)
target_compile_options(GENERIC_H743IIKX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743IIKX_MCU}
)
target_compile_definitions(GENERIC_H743IIKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743IIKX"
	"BOARD_NAME=\"GENERIC_H743IIKX\""
	"BOARD_ID=GENERIC_H743IIKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743IIKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743IIKX_VARIANT_PATH}
)

target_link_options(GENERIC_H743IIKX INTERFACE
  "LINKER:--default-script=${GENERIC_H743IIKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743IIKX_MCU}
)
target_link_libraries(GENERIC_H743IIKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743IITX
# -----------------------------------------------------------------------------

set(GENERIC_H743IITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H743IITX_MAXSIZE 2097152)
set(GENERIC_H743IITX_MAXDATASIZE 524288)
set(GENERIC_H743IITX_MCU cortex-m7)
add_library(GENERIC_H743IITX INTERFACE)
target_compile_options(GENERIC_H743IITX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743IITX_MCU}
)
target_compile_definitions(GENERIC_H743IITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743IITX"
	"BOARD_NAME=\"GENERIC_H743IITX\""
	"BOARD_ID=GENERIC_H743IITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743IITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743IITX_VARIANT_PATH}
)

target_link_options(GENERIC_H743IITX INTERFACE
  "LINKER:--default-script=${GENERIC_H743IITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743IITX_MCU}
)
target_link_libraries(GENERIC_H743IITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743VGHX
# -----------------------------------------------------------------------------

set(GENERIC_H743VGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H743VGHX_MAXSIZE 1048576)
set(GENERIC_H743VGHX_MAXDATASIZE 524288)
set(GENERIC_H743VGHX_MCU cortex-m7)
add_library(GENERIC_H743VGHX INTERFACE)
target_compile_options(GENERIC_H743VGHX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743VGHX_MCU}
)
target_compile_definitions(GENERIC_H743VGHX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743VGHX"
	"BOARD_NAME=\"GENERIC_H743VGHX\""
	"BOARD_ID=GENERIC_H743VGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743VGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743VGHX_VARIANT_PATH}
)

target_link_options(GENERIC_H743VGHX INTERFACE
  "LINKER:--default-script=${GENERIC_H743VGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743VGHX_MCU}
)
target_link_libraries(GENERIC_H743VGHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743VGTX
# -----------------------------------------------------------------------------

set(GENERIC_H743VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H743VGTX_MAXSIZE 1048576)
set(GENERIC_H743VGTX_MAXDATASIZE 524288)
set(GENERIC_H743VGTX_MCU cortex-m7)
add_library(GENERIC_H743VGTX INTERFACE)
target_compile_options(GENERIC_H743VGTX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743VGTX_MCU}
)
target_compile_definitions(GENERIC_H743VGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743VGTX"
	"BOARD_NAME=\"GENERIC_H743VGTX\""
	"BOARD_ID=GENERIC_H743VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H743VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H743VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743VGTX_MCU}
)
target_link_libraries(GENERIC_H743VGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743VIHX
# -----------------------------------------------------------------------------

set(GENERIC_H743VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H743VIHX_MAXSIZE 2097152)
set(GENERIC_H743VIHX_MAXDATASIZE 524288)
set(GENERIC_H743VIHX_MCU cortex-m7)
add_library(GENERIC_H743VIHX INTERFACE)
target_compile_options(GENERIC_H743VIHX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743VIHX_MCU}
)
target_compile_definitions(GENERIC_H743VIHX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743VIHX"
	"BOARD_NAME=\"GENERIC_H743VIHX\""
	"BOARD_ID=GENERIC_H743VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_H743VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_H743VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743VIHX_MCU}
)
target_link_libraries(GENERIC_H743VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743VITX
# -----------------------------------------------------------------------------

set(GENERIC_H743VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H743VITX_MAXSIZE 2097152)
set(GENERIC_H743VITX_MAXDATASIZE 524288)
set(GENERIC_H743VITX_MCU cortex-m7)
add_library(GENERIC_H743VITX INTERFACE)
target_compile_options(GENERIC_H743VITX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743VITX_MCU}
)
target_compile_definitions(GENERIC_H743VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743VITX"
	"BOARD_NAME=\"GENERIC_H743VITX\""
	"BOARD_ID=GENERIC_H743VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743VITX_VARIANT_PATH}
)

target_link_options(GENERIC_H743VITX INTERFACE
  "LINKER:--default-script=${GENERIC_H743VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743VITX_MCU}
)
target_link_libraries(GENERIC_H743VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_H743ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H743ZGTX_MAXSIZE 1048576)
set(GENERIC_H743ZGTX_MAXDATASIZE 524288)
set(GENERIC_H743ZGTX_MCU cortex-m7)
add_library(GENERIC_H743ZGTX INTERFACE)
target_compile_options(GENERIC_H743ZGTX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743ZGTX_MCU}
)
target_compile_definitions(GENERIC_H743ZGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743ZGTX"
	"BOARD_NAME=\"GENERIC_H743ZGTX\""
	"BOARD_ID=GENERIC_H743ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H743ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H743ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743ZGTX_MCU}
)
target_link_libraries(GENERIC_H743ZGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H743ZITX
# -----------------------------------------------------------------------------

set(GENERIC_H743ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H743ZITX_MAXSIZE 2097152)
set(GENERIC_H743ZITX_MAXDATASIZE 524288)
set(GENERIC_H743ZITX_MCU cortex-m7)
add_library(GENERIC_H743ZITX INTERFACE)
target_compile_options(GENERIC_H743ZITX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H743ZITX_MCU}
)
target_compile_definitions(GENERIC_H743ZITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H743ZITX"
	"BOARD_NAME=\"GENERIC_H743ZITX\""
	"BOARD_ID=GENERIC_H743ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H743ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H743ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_H743ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_H743ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H743ZITX_MCU}
)
target_link_libraries(GENERIC_H743ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H747AGIX
# -----------------------------------------------------------------------------

set(GENERIC_H747AGIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H747AGIX_MAXSIZE 1048576)
set(GENERIC_H747AGIX_MAXDATASIZE 524288)
set(GENERIC_H747AGIX_MCU cortex-m7)
add_library(GENERIC_H747AGIX INTERFACE)
target_compile_options(GENERIC_H747AGIX INTERFACE
  "SHELL:-DSTM32H747xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H747AGIX_MCU}
)
target_compile_definitions(GENERIC_H747AGIX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H747AGIX"
	"BOARD_NAME=\"GENERIC_H747AGIX\""
	"BOARD_ID=GENERIC_H747AGIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H747AGIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H747AGIX_VARIANT_PATH}
)

target_link_options(GENERIC_H747AGIX INTERFACE
  "LINKER:--default-script=${GENERIC_H747AGIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H747AGIX_MCU}
)
target_link_libraries(GENERIC_H747AGIX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H747AIIX
# -----------------------------------------------------------------------------

set(GENERIC_H747AIIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H747AIIX_MAXSIZE 2097152)
set(GENERIC_H747AIIX_MAXDATASIZE 524288)
set(GENERIC_H747AIIX_MCU cortex-m7)
add_library(GENERIC_H747AIIX INTERFACE)
target_compile_options(GENERIC_H747AIIX INTERFACE
  "SHELL:-DSTM32H747xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H747AIIX_MCU}
)
target_compile_definitions(GENERIC_H747AIIX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H747AIIX"
	"BOARD_NAME=\"GENERIC_H747AIIX\""
	"BOARD_ID=GENERIC_H747AIIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H747AIIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H747AIIX_VARIANT_PATH}
)

target_link_options(GENERIC_H747AIIX INTERFACE
  "LINKER:--default-script=${GENERIC_H747AIIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H747AIIX_MCU}
)
target_link_libraries(GENERIC_H747AIIX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H747IGTX
# -----------------------------------------------------------------------------

set(GENERIC_H747IGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H747IGTX_MAXSIZE 1048576)
set(GENERIC_H747IGTX_MAXDATASIZE 524288)
set(GENERIC_H747IGTX_MCU cortex-m7)
add_library(GENERIC_H747IGTX INTERFACE)
target_compile_options(GENERIC_H747IGTX INTERFACE
  "SHELL:-DSTM32H747xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H747IGTX_MCU}
)
target_compile_definitions(GENERIC_H747IGTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H747IGTX"
	"BOARD_NAME=\"GENERIC_H747IGTX\""
	"BOARD_ID=GENERIC_H747IGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H747IGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H747IGTX_VARIANT_PATH}
)

target_link_options(GENERIC_H747IGTX INTERFACE
  "LINKER:--default-script=${GENERIC_H747IGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H747IGTX_MCU}
)
target_link_libraries(GENERIC_H747IGTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H747IITX
# -----------------------------------------------------------------------------

set(GENERIC_H747IITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H747IITX_MAXSIZE 2097152)
set(GENERIC_H747IITX_MAXDATASIZE 524288)
set(GENERIC_H747IITX_MCU cortex-m7)
add_library(GENERIC_H747IITX INTERFACE)
target_compile_options(GENERIC_H747IITX INTERFACE
  "SHELL:-DSTM32H747xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H747IITX_MCU}
)
target_compile_definitions(GENERIC_H747IITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H747IITX"
	"BOARD_NAME=\"GENERIC_H747IITX\""
	"BOARD_ID=GENERIC_H747IITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H747IITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H747IITX_VARIANT_PATH}
)

target_link_options(GENERIC_H747IITX INTERFACE
  "LINKER:--default-script=${GENERIC_H747IITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H747IITX_MCU}
)
target_link_libraries(GENERIC_H747IITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H750IBKX
# -----------------------------------------------------------------------------

set(GENERIC_H750IBKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H750IBKX_MAXSIZE 131072)
set(GENERIC_H750IBKX_MAXDATASIZE 524288)
set(GENERIC_H750IBKX_MCU cortex-m7)
add_library(GENERIC_H750IBKX INTERFACE)
target_compile_options(GENERIC_H750IBKX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H750IBKX_MCU}
)
target_compile_definitions(GENERIC_H750IBKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H750IBKX"
	"BOARD_NAME=\"GENERIC_H750IBKX\""
	"BOARD_ID=GENERIC_H750IBKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H750IBKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H750IBKX_VARIANT_PATH}
)

target_link_options(GENERIC_H750IBKX INTERFACE
  "LINKER:--default-script=${GENERIC_H750IBKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H750IBKX_MCU}
)
target_link_libraries(GENERIC_H750IBKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H750IBTX
# -----------------------------------------------------------------------------

set(GENERIC_H750IBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H750IBTX_MAXSIZE 131072)
set(GENERIC_H750IBTX_MAXDATASIZE 524288)
set(GENERIC_H750IBTX_MCU cortex-m7)
add_library(GENERIC_H750IBTX INTERFACE)
target_compile_options(GENERIC_H750IBTX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H750IBTX_MCU}
)
target_compile_definitions(GENERIC_H750IBTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H750IBTX"
	"BOARD_NAME=\"GENERIC_H750IBTX\""
	"BOARD_ID=GENERIC_H750IBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H750IBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H750IBTX_VARIANT_PATH}
)

target_link_options(GENERIC_H750IBTX INTERFACE
  "LINKER:--default-script=${GENERIC_H750IBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H750IBTX_MCU}
)
target_link_libraries(GENERIC_H750IBTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H750VBTX
# -----------------------------------------------------------------------------

set(GENERIC_H750VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H750VBTX_MAXSIZE 131072)
set(GENERIC_H750VBTX_MAXDATASIZE 524288)
set(GENERIC_H750VBTX_MCU cortex-m7)
add_library(GENERIC_H750VBTX INTERFACE)
target_compile_options(GENERIC_H750VBTX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H750VBTX_MCU}
)
target_compile_definitions(GENERIC_H750VBTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H750VBTX"
	"BOARD_NAME=\"GENERIC_H750VBTX\""
	"BOARD_ID=GENERIC_H750VBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H750VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H750VBTX_VARIANT_PATH}
)

target_link_options(GENERIC_H750VBTX INTERFACE
  "LINKER:--default-script=${GENERIC_H750VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H750VBTX_MCU}
)
target_link_libraries(GENERIC_H750VBTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H750ZBTX
# -----------------------------------------------------------------------------

set(GENERIC_H750ZBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H750ZBTX_MAXSIZE 131072)
set(GENERIC_H750ZBTX_MAXDATASIZE 524288)
set(GENERIC_H750ZBTX_MCU cortex-m7)
add_library(GENERIC_H750ZBTX INTERFACE)
target_compile_options(GENERIC_H750ZBTX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H750ZBTX_MCU}
)
target_compile_definitions(GENERIC_H750ZBTX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H750ZBTX"
	"BOARD_NAME=\"GENERIC_H750ZBTX\""
	"BOARD_ID=GENERIC_H750ZBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H750ZBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H750ZBTX_VARIANT_PATH}
)

target_link_options(GENERIC_H750ZBTX INTERFACE
  "LINKER:--default-script=${GENERIC_H750ZBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H750ZBTX_MCU}
)
target_link_libraries(GENERIC_H750ZBTX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H753IIKX
# -----------------------------------------------------------------------------

set(GENERIC_H753IIKX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H753IIKX_MAXSIZE 2097152)
set(GENERIC_H753IIKX_MAXDATASIZE 524288)
set(GENERIC_H753IIKX_MCU cortex-m7)
add_library(GENERIC_H753IIKX INTERFACE)
target_compile_options(GENERIC_H753IIKX INTERFACE
  "SHELL:-DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H753IIKX_MCU}
)
target_compile_definitions(GENERIC_H753IIKX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753IIKX"
	"BOARD_NAME=\"GENERIC_H753IIKX\""
	"BOARD_ID=GENERIC_H753IIKX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753IIKX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753IIKX_VARIANT_PATH}
)

target_link_options(GENERIC_H753IIKX INTERFACE
  "LINKER:--default-script=${GENERIC_H753IIKX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753IIKX_MCU}
)
target_link_libraries(GENERIC_H753IIKX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H753IITX
# -----------------------------------------------------------------------------

set(GENERIC_H753IITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742I(G-I)(K-T)_H743I(G-I)(K-T)_H750IB(K-T)_H753II(K-T)")
set(GENERIC_H753IITX_MAXSIZE 2097152)
set(GENERIC_H753IITX_MAXDATASIZE 524288)
set(GENERIC_H753IITX_MCU cortex-m7)
add_library(GENERIC_H753IITX INTERFACE)
target_compile_options(GENERIC_H753IITX INTERFACE
  "SHELL:-DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H753IITX_MCU}
)
target_compile_definitions(GENERIC_H753IITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753IITX"
	"BOARD_NAME=\"GENERIC_H753IITX\""
	"BOARD_ID=GENERIC_H753IITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753IITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753IITX_VARIANT_PATH}
)

target_link_options(GENERIC_H753IITX INTERFACE
  "LINKER:--default-script=${GENERIC_H753IITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753IITX_MCU}
)
target_link_libraries(GENERIC_H753IITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H753VIHX
# -----------------------------------------------------------------------------

set(GENERIC_H753VIHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H753VIHX_MAXSIZE 2097152)
set(GENERIC_H753VIHX_MAXDATASIZE 524288)
set(GENERIC_H753VIHX_MCU cortex-m7)
add_library(GENERIC_H753VIHX INTERFACE)
target_compile_options(GENERIC_H753VIHX INTERFACE
  "SHELL:-DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H753VIHX_MCU}
)
target_compile_definitions(GENERIC_H753VIHX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753VIHX"
	"BOARD_NAME=\"GENERIC_H753VIHX\""
	"BOARD_ID=GENERIC_H753VIHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753VIHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753VIHX_VARIANT_PATH}
)

target_link_options(GENERIC_H753VIHX INTERFACE
  "LINKER:--default-script=${GENERIC_H753VIHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753VIHX_MCU}
)
target_link_libraries(GENERIC_H753VIHX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H753VITX
# -----------------------------------------------------------------------------

set(GENERIC_H753VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(GENERIC_H753VITX_MAXSIZE 2097152)
set(GENERIC_H753VITX_MAXDATASIZE 524288)
set(GENERIC_H753VITX_MCU cortex-m7)
add_library(GENERIC_H753VITX INTERFACE)
target_compile_options(GENERIC_H753VITX INTERFACE
  "SHELL:-DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H753VITX_MCU}
)
target_compile_definitions(GENERIC_H753VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753VITX"
	"BOARD_NAME=\"GENERIC_H753VITX\""
	"BOARD_ID=GENERIC_H753VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753VITX_VARIANT_PATH}
)

target_link_options(GENERIC_H753VITX INTERFACE
  "LINKER:--default-script=${GENERIC_H753VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753VITX_MCU}
)
target_link_libraries(GENERIC_H753VITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H753ZITX
# -----------------------------------------------------------------------------

set(GENERIC_H753ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H753ZITX_MAXSIZE 2097152)
set(GENERIC_H753ZITX_MAXDATASIZE 524288)
set(GENERIC_H753ZITX_MCU cortex-m7)
add_library(GENERIC_H753ZITX INTERFACE)
target_compile_options(GENERIC_H753ZITX INTERFACE
  "SHELL:-DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H753ZITX_MCU}
)
target_compile_definitions(GENERIC_H753ZITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753ZITX"
	"BOARD_NAME=\"GENERIC_H753ZITX\""
	"BOARD_ID=GENERIC_H753ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_H753ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_H753ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753ZITX_MCU}
)
target_link_libraries(GENERIC_H753ZITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H757AIIX
# -----------------------------------------------------------------------------

set(GENERIC_H757AIIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H757AIIX_MAXSIZE 2097152)
set(GENERIC_H757AIIX_MAXDATASIZE 524288)
set(GENERIC_H757AIIX_MCU cortex-m7)
add_library(GENERIC_H757AIIX INTERFACE)
target_compile_options(GENERIC_H757AIIX INTERFACE
  "SHELL:-DSTM32H757xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H757AIIX_MCU}
)
target_compile_definitions(GENERIC_H757AIIX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H757AIIX"
	"BOARD_NAME=\"GENERIC_H757AIIX\""
	"BOARD_ID=GENERIC_H757AIIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H757AIIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H757AIIX_VARIANT_PATH}
)

target_link_options(GENERIC_H757AIIX INTERFACE
  "LINKER:--default-script=${GENERIC_H757AIIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H757AIIX_MCU}
)
target_link_libraries(GENERIC_H757AIIX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_H757IITX
# -----------------------------------------------------------------------------

set(GENERIC_H757IITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(GENERIC_H757IITX_MAXSIZE 2097152)
set(GENERIC_H757IITX_MAXDATASIZE 524288)
set(GENERIC_H757IITX_MCU cortex-m7)
add_library(GENERIC_H757IITX INTERFACE)
target_compile_options(GENERIC_H757IITX INTERFACE
  "SHELL:-DSTM32H757xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_H757IITX_MCU}
)
target_compile_definitions(GENERIC_H757IITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H757IITX"
	"BOARD_NAME=\"GENERIC_H757IITX\""
	"BOARD_ID=GENERIC_H757IITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H757IITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H757IITX_VARIANT_PATH}
)

target_link_options(GENERIC_H757IITX INTERFACE
  "LINKER:--default-script=${GENERIC_H757IITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H757IITX_MCU}
)
target_link_libraries(GENERIC_H757IITX INTERFACE
  arm_cortexM7lfsp_math
)

# GENERIC_L010RBTX
# -----------------------------------------------------------------------------

set(GENERIC_L010RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L010RBT")
set(GENERIC_L010RBTX_MAXSIZE 131072)
set(GENERIC_L010RBTX_MAXDATASIZE 20480)
set(GENERIC_L010RBTX_MCU cortex-m0plus)
add_library(GENERIC_L010RBTX INTERFACE)
target_compile_options(GENERIC_L010RBTX INTERFACE
  "SHELL:-DSTM32L010xB   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L010RBTX_MCU}
)
target_compile_definitions(GENERIC_L010RBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L010RBTX"
	"BOARD_NAME=\"GENERIC_L010RBTX\""
	"BOARD_ID=GENERIC_L010RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L010RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L010RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L010RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L010RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L010RBTX_MCU}
)
target_link_libraries(GENERIC_L010RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L031K4TX
# -----------------------------------------------------------------------------

set(GENERIC_L031K4TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L031K(4-6)T_L041K6T")
set(GENERIC_L031K4TX_MAXSIZE 16384)
set(GENERIC_L031K4TX_MAXDATASIZE 8192)
set(GENERIC_L031K4TX_MCU cortex-m0plus)
add_library(GENERIC_L031K4TX INTERFACE)
target_compile_options(GENERIC_L031K4TX INTERFACE
  "SHELL:-DSTM32L031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L031K4TX_MCU}
)
target_compile_definitions(GENERIC_L031K4TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L031K4TX"
	"BOARD_NAME=\"GENERIC_L031K4TX\""
	"BOARD_ID=GENERIC_L031K4TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L031K4TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L031K4TX_VARIANT_PATH}
)

target_link_options(GENERIC_L031K4TX INTERFACE
  "LINKER:--default-script=${GENERIC_L031K4TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=16384"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L031K4TX_MCU}
)
target_link_libraries(GENERIC_L031K4TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L031K6TX
# -----------------------------------------------------------------------------

set(GENERIC_L031K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L031K(4-6)T_L041K6T")
set(GENERIC_L031K6TX_MAXSIZE 32768)
set(GENERIC_L031K6TX_MAXDATASIZE 8192)
set(GENERIC_L031K6TX_MCU cortex-m0plus)
add_library(GENERIC_L031K6TX INTERFACE)
target_compile_options(GENERIC_L031K6TX INTERFACE
  "SHELL:-DSTM32L031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L031K6TX_MCU}
)
target_compile_definitions(GENERIC_L031K6TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L031K6TX"
	"BOARD_NAME=\"GENERIC_L031K6TX\""
	"BOARD_ID=GENERIC_L031K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L031K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L031K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L031K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L031K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L031K6TX_MCU}
)
target_link_libraries(GENERIC_L031K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L041K6TX
# -----------------------------------------------------------------------------

set(GENERIC_L041K6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L031K(4-6)T_L041K6T")
set(GENERIC_L041K6TX_MAXSIZE 32768)
set(GENERIC_L041K6TX_MAXDATASIZE 8192)
set(GENERIC_L041K6TX_MCU cortex-m0plus)
add_library(GENERIC_L041K6TX INTERFACE)
target_compile_options(GENERIC_L041K6TX INTERFACE
  "SHELL:-DSTM32L041xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L041K6TX_MCU}
)
target_compile_definitions(GENERIC_L041K6TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L041K6TX"
	"BOARD_NAME=\"GENERIC_L041K6TX\""
	"BOARD_ID=GENERIC_L041K6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L041K6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L041K6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L041K6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L041K6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L041K6TX_MCU}
)
target_link_libraries(GENERIC_L041K6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L051C6TX
# -----------------------------------------------------------------------------

set(GENERIC_L051C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L051C(6-8)(T-U)")
set(GENERIC_L051C6TX_MAXSIZE 32768)
set(GENERIC_L051C6TX_MAXDATASIZE 8192)
set(GENERIC_L051C6TX_MCU cortex-m0plus)
add_library(GENERIC_L051C6TX INTERFACE)
target_compile_options(GENERIC_L051C6TX INTERFACE
  "SHELL:-DSTM32L051xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L051C6TX_MCU}
)
target_compile_definitions(GENERIC_L051C6TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L051C6TX"
	"BOARD_NAME=\"GENERIC_L051C6TX\""
	"BOARD_ID=GENERIC_L051C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L051C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L051C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L051C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L051C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L051C6TX_MCU}
)
target_link_libraries(GENERIC_L051C6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L051C6UX
# -----------------------------------------------------------------------------

set(GENERIC_L051C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L051C(6-8)(T-U)")
set(GENERIC_L051C6UX_MAXSIZE 32768)
set(GENERIC_L051C6UX_MAXDATASIZE 8192)
set(GENERIC_L051C6UX_MCU cortex-m0plus)
add_library(GENERIC_L051C6UX INTERFACE)
target_compile_options(GENERIC_L051C6UX INTERFACE
  "SHELL:-DSTM32L051xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L051C6UX_MCU}
)
target_compile_definitions(GENERIC_L051C6UX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L051C6UX"
	"BOARD_NAME=\"GENERIC_L051C6UX\""
	"BOARD_ID=GENERIC_L051C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L051C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L051C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_L051C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_L051C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L051C6UX_MCU}
)
target_link_libraries(GENERIC_L051C6UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L051C8TX
# -----------------------------------------------------------------------------

set(GENERIC_L051C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L051C(6-8)(T-U)")
set(GENERIC_L051C8TX_MAXSIZE 65536)
set(GENERIC_L051C8TX_MAXDATASIZE 8192)
set(GENERIC_L051C8TX_MCU cortex-m0plus)
add_library(GENERIC_L051C8TX INTERFACE)
target_compile_options(GENERIC_L051C8TX INTERFACE
  "SHELL:-DSTM32L051xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L051C8TX_MCU}
)
target_compile_definitions(GENERIC_L051C8TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L051C8TX"
	"BOARD_NAME=\"GENERIC_L051C8TX\""
	"BOARD_ID=GENERIC_L051C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L051C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L051C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L051C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L051C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L051C8TX_MCU}
)
target_link_libraries(GENERIC_L051C8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L051C8UX
# -----------------------------------------------------------------------------

set(GENERIC_L051C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L051C(6-8)(T-U)")
set(GENERIC_L051C8UX_MAXSIZE 65536)
set(GENERIC_L051C8UX_MAXDATASIZE 8192)
set(GENERIC_L051C8UX_MCU cortex-m0plus)
add_library(GENERIC_L051C8UX INTERFACE)
target_compile_options(GENERIC_L051C8UX INTERFACE
  "SHELL:-DSTM32L051xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L051C8UX_MCU}
)
target_compile_definitions(GENERIC_L051C8UX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L051C8UX"
	"BOARD_NAME=\"GENERIC_L051C8UX\""
	"BOARD_ID=GENERIC_L051C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L051C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L051C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_L051C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_L051C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L051C8UX_MCU}
)
target_link_libraries(GENERIC_L051C8UX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L052R6TX
# -----------------------------------------------------------------------------

set(GENERIC_L052R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(GENERIC_L052R6TX_MAXSIZE 32768)
set(GENERIC_L052R6TX_MAXDATASIZE 8192)
set(GENERIC_L052R6TX_MCU cortex-m0plus)
add_library(GENERIC_L052R6TX INTERFACE)
target_compile_options(GENERIC_L052R6TX INTERFACE
  "SHELL:-DSTM32L052xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L052R6TX_MCU}
)
target_compile_definitions(GENERIC_L052R6TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L052R6TX"
	"BOARD_NAME=\"GENERIC_L052R6TX\""
	"BOARD_ID=GENERIC_L052R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L052R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L052R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L052R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L052R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L052R6TX_MCU}
)
target_link_libraries(GENERIC_L052R6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L052R8TX
# -----------------------------------------------------------------------------

set(GENERIC_L052R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(GENERIC_L052R8TX_MAXSIZE 65536)
set(GENERIC_L052R8TX_MAXDATASIZE 8192)
set(GENERIC_L052R8TX_MCU cortex-m0plus)
add_library(GENERIC_L052R8TX INTERFACE)
target_compile_options(GENERIC_L052R8TX INTERFACE
  "SHELL:-DSTM32L052xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L052R8TX_MCU}
)
target_compile_definitions(GENERIC_L052R8TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L052R8TX"
	"BOARD_NAME=\"GENERIC_L052R8TX\""
	"BOARD_ID=GENERIC_L052R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L052R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L052R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L052R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L052R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L052R8TX_MCU}
)
target_link_libraries(GENERIC_L052R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L053R6TX
# -----------------------------------------------------------------------------

set(GENERIC_L053R6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(GENERIC_L053R6TX_MAXSIZE 32768)
set(GENERIC_L053R6TX_MAXDATASIZE 8192)
set(GENERIC_L053R6TX_MCU cortex-m0plus)
add_library(GENERIC_L053R6TX INTERFACE)
target_compile_options(GENERIC_L053R6TX INTERFACE
  "SHELL:-DSTM32L053xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L053R6TX_MCU}
)
target_compile_definitions(GENERIC_L053R6TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L053R6TX"
	"BOARD_NAME=\"GENERIC_L053R6TX\""
	"BOARD_ID=GENERIC_L053R6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L053R6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L053R6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L053R6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L053R6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L053R6TX_MCU}
)
target_link_libraries(GENERIC_L053R6TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L053R8TX
# -----------------------------------------------------------------------------

set(GENERIC_L053R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(GENERIC_L053R8TX_MAXSIZE 65536)
set(GENERIC_L053R8TX_MAXDATASIZE 8192)
set(GENERIC_L053R8TX_MCU cortex-m0plus)
add_library(GENERIC_L053R8TX INTERFACE)
target_compile_options(GENERIC_L053R8TX INTERFACE
  "SHELL:-DSTM32L053xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L053R8TX_MCU}
)
target_compile_definitions(GENERIC_L053R8TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L053R8TX"
	"BOARD_NAME=\"GENERIC_L053R8TX\""
	"BOARD_ID=GENERIC_L053R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L053R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L053R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L053R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L053R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L053R8TX_MCU}
)
target_link_libraries(GENERIC_L053R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L063R8TX
# -----------------------------------------------------------------------------

set(GENERIC_L063R8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(GENERIC_L063R8TX_MAXSIZE 65536)
set(GENERIC_L063R8TX_MAXDATASIZE 8192)
set(GENERIC_L063R8TX_MCU cortex-m0plus)
add_library(GENERIC_L063R8TX INTERFACE)
target_compile_options(GENERIC_L063R8TX INTERFACE
  "SHELL:-DSTM32L063xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L063R8TX_MCU}
)
target_compile_definitions(GENERIC_L063R8TX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L063R8TX"
	"BOARD_NAME=\"GENERIC_L063R8TX\""
	"BOARD_ID=GENERIC_L063R8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L063R8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L063R8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L063R8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L063R8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${GENERIC_L063R8TX_MCU}
)
target_link_libraries(GENERIC_L063R8TX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072CBYX
# -----------------------------------------------------------------------------

set(GENERIC_L072CBYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(GENERIC_L072CBYX_MAXSIZE 131072)
set(GENERIC_L072CBYX_MAXDATASIZE 20480)
set(GENERIC_L072CBYX_MCU cortex-m0plus)
add_library(GENERIC_L072CBYX INTERFACE)
target_compile_options(GENERIC_L072CBYX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072CBYX_MCU}
)
target_compile_definitions(GENERIC_L072CBYX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072CBYX"
	"BOARD_NAME=\"GENERIC_L072CBYX\""
	"BOARD_ID=GENERIC_L072CBYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072CBYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072CBYX_VARIANT_PATH}
)

target_link_options(GENERIC_L072CBYX INTERFACE
  "LINKER:--default-script=${GENERIC_L072CBYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072CBYX_MCU}
)
target_link_libraries(GENERIC_L072CBYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072CZEX
# -----------------------------------------------------------------------------

set(GENERIC_L072CZEX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(GENERIC_L072CZEX_MAXSIZE 196608)
set(GENERIC_L072CZEX_MAXDATASIZE 20480)
set(GENERIC_L072CZEX_MCU cortex-m0plus)
add_library(GENERIC_L072CZEX INTERFACE)
target_compile_options(GENERIC_L072CZEX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072CZEX_MCU}
)
target_compile_definitions(GENERIC_L072CZEX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072CZEX"
	"BOARD_NAME=\"GENERIC_L072CZEX\""
	"BOARD_ID=GENERIC_L072CZEX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072CZEX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072CZEX_VARIANT_PATH}
)

target_link_options(GENERIC_L072CZEX INTERFACE
  "LINKER:--default-script=${GENERIC_L072CZEX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072CZEX_MCU}
)
target_link_libraries(GENERIC_L072CZEX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072CZYX
# -----------------------------------------------------------------------------

set(GENERIC_L072CZYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(GENERIC_L072CZYX_MAXSIZE 196608)
set(GENERIC_L072CZYX_MAXDATASIZE 20480)
set(GENERIC_L072CZYX_MCU cortex-m0plus)
add_library(GENERIC_L072CZYX INTERFACE)
target_compile_options(GENERIC_L072CZYX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072CZYX_MCU}
)
target_compile_definitions(GENERIC_L072CZYX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072CZYX"
	"BOARD_NAME=\"GENERIC_L072CZYX\""
	"BOARD_ID=GENERIC_L072CZYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072CZYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072CZYX_VARIANT_PATH}
)

target_link_options(GENERIC_L072CZYX INTERFACE
  "LINKER:--default-script=${GENERIC_L072CZYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072CZYX_MCU}
)
target_link_libraries(GENERIC_L072CZYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072KBTX
# -----------------------------------------------------------------------------

set(GENERIC_L072KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T")
set(GENERIC_L072KBTX_MAXSIZE 131072)
set(GENERIC_L072KBTX_MAXDATASIZE 20480)
set(GENERIC_L072KBTX_MCU cortex-m0plus)
add_library(GENERIC_L072KBTX INTERFACE)
target_compile_options(GENERIC_L072KBTX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072KBTX_MCU}
)
target_compile_definitions(GENERIC_L072KBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072KBTX"
	"BOARD_NAME=\"GENERIC_L072KBTX\""
	"BOARD_ID=GENERIC_L072KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L072KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L072KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072KBTX_MCU}
)
target_link_libraries(GENERIC_L072KBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072KZTX
# -----------------------------------------------------------------------------

set(GENERIC_L072KZTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T")
set(GENERIC_L072KZTX_MAXSIZE 196608)
set(GENERIC_L072KZTX_MAXDATASIZE 20480)
set(GENERIC_L072KZTX_MCU cortex-m0plus)
add_library(GENERIC_L072KZTX INTERFACE)
target_compile_options(GENERIC_L072KZTX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072KZTX_MCU}
)
target_compile_definitions(GENERIC_L072KZTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072KZTX"
	"BOARD_NAME=\"GENERIC_L072KZTX\""
	"BOARD_ID=GENERIC_L072KZTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072KZTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072KZTX_VARIANT_PATH}
)

target_link_options(GENERIC_L072KZTX INTERFACE
  "LINKER:--default-script=${GENERIC_L072KZTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072KZTX_MCU}
)
target_link_libraries(GENERIC_L072KZTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072RBTX
# -----------------------------------------------------------------------------

set(GENERIC_L072RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L072RBTX_MAXSIZE 131072)
set(GENERIC_L072RBTX_MAXDATASIZE 20480)
set(GENERIC_L072RBTX_MCU cortex-m0plus)
add_library(GENERIC_L072RBTX INTERFACE)
target_compile_options(GENERIC_L072RBTX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072RBTX_MCU}
)
target_compile_definitions(GENERIC_L072RBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072RBTX"
	"BOARD_NAME=\"GENERIC_L072RBTX\""
	"BOARD_ID=GENERIC_L072RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L072RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L072RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072RBTX_MCU}
)
target_link_libraries(GENERIC_L072RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L072RZTX
# -----------------------------------------------------------------------------

set(GENERIC_L072RZTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L072RZTX_MAXSIZE 196608)
set(GENERIC_L072RZTX_MAXDATASIZE 20480)
set(GENERIC_L072RZTX_MCU cortex-m0plus)
add_library(GENERIC_L072RZTX INTERFACE)
target_compile_options(GENERIC_L072RZTX INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L072RZTX_MCU}
)
target_compile_definitions(GENERIC_L072RZTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L072RZTX"
	"BOARD_NAME=\"GENERIC_L072RZTX\""
	"BOARD_ID=GENERIC_L072RZTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L072RZTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L072RZTX_VARIANT_PATH}
)

target_link_options(GENERIC_L072RZTX INTERFACE
  "LINKER:--default-script=${GENERIC_L072RZTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L072RZTX_MCU}
)
target_link_libraries(GENERIC_L072RZTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L073CZYX
# -----------------------------------------------------------------------------

set(GENERIC_L073CZYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(GENERIC_L073CZYX_MAXSIZE 196608)
set(GENERIC_L073CZYX_MAXDATASIZE 20480)
set(GENERIC_L073CZYX_MCU cortex-m0plus)
add_library(GENERIC_L073CZYX INTERFACE)
target_compile_options(GENERIC_L073CZYX INTERFACE
  "SHELL:-DSTM32L073xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L073CZYX_MCU}
)
target_compile_definitions(GENERIC_L073CZYX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L073CZYX"
	"BOARD_NAME=\"GENERIC_L073CZYX\""
	"BOARD_ID=GENERIC_L073CZYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L073CZYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L073CZYX_VARIANT_PATH}
)

target_link_options(GENERIC_L073CZYX INTERFACE
  "LINKER:--default-script=${GENERIC_L073CZYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L073CZYX_MCU}
)
target_link_libraries(GENERIC_L073CZYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L073RBTX
# -----------------------------------------------------------------------------

set(GENERIC_L073RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L073RBTX_MAXSIZE 131072)
set(GENERIC_L073RBTX_MAXDATASIZE 20480)
set(GENERIC_L073RBTX_MCU cortex-m0plus)
add_library(GENERIC_L073RBTX INTERFACE)
target_compile_options(GENERIC_L073RBTX INTERFACE
  "SHELL:-DSTM32L073xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L073RBTX_MCU}
)
target_compile_definitions(GENERIC_L073RBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L073RBTX"
	"BOARD_NAME=\"GENERIC_L073RBTX\""
	"BOARD_ID=GENERIC_L073RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L073RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L073RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L073RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L073RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L073RBTX_MCU}
)
target_link_libraries(GENERIC_L073RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L073RZTX
# -----------------------------------------------------------------------------

set(GENERIC_L073RZTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L073RZTX_MAXSIZE 196608)
set(GENERIC_L073RZTX_MAXDATASIZE 20480)
set(GENERIC_L073RZTX_MCU cortex-m0plus)
add_library(GENERIC_L073RZTX INTERFACE)
target_compile_options(GENERIC_L073RZTX INTERFACE
  "SHELL:-DSTM32L073xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L073RZTX_MCU}
)
target_compile_definitions(GENERIC_L073RZTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L073RZTX"
	"BOARD_NAME=\"GENERIC_L073RZTX\""
	"BOARD_ID=GENERIC_L073RZTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L073RZTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L073RZTX_VARIANT_PATH}
)

target_link_options(GENERIC_L073RZTX INTERFACE
  "LINKER:--default-script=${GENERIC_L073RZTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L073RZTX_MCU}
)
target_link_libraries(GENERIC_L073RZTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L082CZYX
# -----------------------------------------------------------------------------

set(GENERIC_L082CZYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY")
set(GENERIC_L082CZYX_MAXSIZE 196608)
set(GENERIC_L082CZYX_MAXDATASIZE 20480)
set(GENERIC_L082CZYX_MCU cortex-m0plus)
add_library(GENERIC_L082CZYX INTERFACE)
target_compile_options(GENERIC_L082CZYX INTERFACE
  "SHELL:-DSTM32L082xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L082CZYX_MCU}
)
target_compile_definitions(GENERIC_L082CZYX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L082CZYX"
	"BOARD_NAME=\"GENERIC_L082CZYX\""
	"BOARD_ID=GENERIC_L082CZYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L082CZYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L082CZYX_VARIANT_PATH}
)

target_link_options(GENERIC_L082CZYX INTERFACE
  "LINKER:--default-script=${GENERIC_L082CZYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L082CZYX_MCU}
)
target_link_libraries(GENERIC_L082CZYX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L082KBTX
# -----------------------------------------------------------------------------

set(GENERIC_L082KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T")
set(GENERIC_L082KBTX_MAXSIZE 131072)
set(GENERIC_L082KBTX_MAXDATASIZE 20480)
set(GENERIC_L082KBTX_MCU cortex-m0plus)
add_library(GENERIC_L082KBTX INTERFACE)
target_compile_options(GENERIC_L082KBTX INTERFACE
  "SHELL:-DSTM32L082xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L082KBTX_MCU}
)
target_compile_definitions(GENERIC_L082KBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L082KBTX"
	"BOARD_NAME=\"GENERIC_L082KBTX\""
	"BOARD_ID=GENERIC_L082KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L082KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L082KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L082KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L082KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L082KBTX_MCU}
)
target_link_libraries(GENERIC_L082KBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L082KZTX
# -----------------------------------------------------------------------------

set(GENERIC_L082KZTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T")
set(GENERIC_L082KZTX_MAXSIZE 196608)
set(GENERIC_L082KZTX_MAXDATASIZE 20480)
set(GENERIC_L082KZTX_MCU cortex-m0plus)
add_library(GENERIC_L082KZTX INTERFACE)
target_compile_options(GENERIC_L082KZTX INTERFACE
  "SHELL:-DSTM32L082xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L082KZTX_MCU}
)
target_compile_definitions(GENERIC_L082KZTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L082KZTX"
	"BOARD_NAME=\"GENERIC_L082KZTX\""
	"BOARD_ID=GENERIC_L082KZTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L082KZTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L082KZTX_VARIANT_PATH}
)

target_link_options(GENERIC_L082KZTX INTERFACE
  "LINKER:--default-script=${GENERIC_L082KZTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L082KZTX_MCU}
)
target_link_libraries(GENERIC_L082KZTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L083RBTX
# -----------------------------------------------------------------------------

set(GENERIC_L083RBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L083RBTX_MAXSIZE 131072)
set(GENERIC_L083RBTX_MAXDATASIZE 20480)
set(GENERIC_L083RBTX_MCU cortex-m0plus)
add_library(GENERIC_L083RBTX INTERFACE)
target_compile_options(GENERIC_L083RBTX INTERFACE
  "SHELL:-DSTM32L083xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L083RBTX_MCU}
)
target_compile_definitions(GENERIC_L083RBTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L083RBTX"
	"BOARD_NAME=\"GENERIC_L083RBTX\""
	"BOARD_ID=GENERIC_L083RBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L083RBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L083RBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L083RBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L083RBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L083RBTX_MCU}
)
target_link_libraries(GENERIC_L083RBTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L083RZTX
# -----------------------------------------------------------------------------

set(GENERIC_L083RZTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(GENERIC_L083RZTX_MAXSIZE 196608)
set(GENERIC_L083RZTX_MAXDATASIZE 20480)
set(GENERIC_L083RZTX_MCU cortex-m0plus)
add_library(GENERIC_L083RZTX INTERFACE)
target_compile_options(GENERIC_L083RZTX INTERFACE
  "SHELL:-DSTM32L083xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L083RZTX_MCU}
)
target_compile_definitions(GENERIC_L083RZTX INTERFACE
  "STM32L0xx"
	"ARDUINO_GENERIC_L083RZTX"
	"BOARD_NAME=\"GENERIC_L083RZTX\""
	"BOARD_ID=GENERIC_L083RZTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L083RZTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${GENERIC_L083RZTX_VARIANT_PATH}
)

target_link_options(GENERIC_L083RZTX INTERFACE
  "LINKER:--default-script=${GENERIC_L083RZTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_L083RZTX_MCU}
)
target_link_libraries(GENERIC_L083RZTX INTERFACE
  arm_cortexM0l_math
)

# GENERIC_L100C6UX
# -----------------------------------------------------------------------------

set(GENERIC_L100C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L100C6UX_MAXSIZE 32768)
set(GENERIC_L100C6UX_MAXDATASIZE 4096)
set(GENERIC_L100C6UX_MCU cortex-m3)
add_library(GENERIC_L100C6UX INTERFACE)
target_compile_options(GENERIC_L100C6UX INTERFACE
  "SHELL:-DSTM32L100xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L100C6UX_MCU}
)
target_compile_definitions(GENERIC_L100C6UX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L100C6UX"
	"BOARD_NAME=\"GENERIC_L100C6UX\""
	"BOARD_ID=GENERIC_L100C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L100C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L100C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_L100C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_L100C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${GENERIC_L100C6UX_MCU}
)
target_link_libraries(GENERIC_L100C6UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L100C6UXA
# -----------------------------------------------------------------------------

set(GENERIC_L100C6UXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L100C6UXA_MAXSIZE 32768)
set(GENERIC_L100C6UXA_MAXDATASIZE 10240)
set(GENERIC_L100C6UXA_MCU cortex-m3)
add_library(GENERIC_L100C6UXA INTERFACE)
target_compile_options(GENERIC_L100C6UXA INTERFACE
  "SHELL:-DSTM32L100xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L100C6UXA_MCU}
)
target_compile_definitions(GENERIC_L100C6UXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L100C6UXA"
	"BOARD_NAME=\"GENERIC_L100C6UXA\""
	"BOARD_ID=GENERIC_L100C6UXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L100C6UXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L100C6UXA_VARIANT_PATH}
)

target_link_options(GENERIC_L100C6UXA INTERFACE
  "LINKER:--default-script=${GENERIC_L100C6UXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L100C6UXA_MCU}
)
target_link_libraries(GENERIC_L100C6UXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C6TX
# -----------------------------------------------------------------------------

set(GENERIC_L151C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C6TX_MAXSIZE 32768)
set(GENERIC_L151C6TX_MAXDATASIZE 10240)
set(GENERIC_L151C6TX_MCU cortex-m3)
add_library(GENERIC_L151C6TX INTERFACE)
target_compile_options(GENERIC_L151C6TX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C6TX_MCU}
)
target_compile_definitions(GENERIC_L151C6TX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C6TX"
	"BOARD_NAME=\"GENERIC_L151C6TX\""
	"BOARD_ID=GENERIC_L151C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L151C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L151C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L151C6TX_MCU}
)
target_link_libraries(GENERIC_L151C6TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C6TXA
# -----------------------------------------------------------------------------

set(GENERIC_L151C6TXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C6TXA_MAXSIZE 32768)
set(GENERIC_L151C6TXA_MAXDATASIZE 16384)
set(GENERIC_L151C6TXA_MCU cortex-m3)
add_library(GENERIC_L151C6TXA INTERFACE)
target_compile_options(GENERIC_L151C6TXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C6TXA_MCU}
)
target_compile_definitions(GENERIC_L151C6TXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C6TXA"
	"BOARD_NAME=\"GENERIC_L151C6TXA\""
	"BOARD_ID=GENERIC_L151C6TXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C6TXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C6TXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151C6TXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151C6TXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L151C6TXA_MCU}
)
target_link_libraries(GENERIC_L151C6TXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C6UX
# -----------------------------------------------------------------------------

set(GENERIC_L151C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C6UX_MAXSIZE 32768)
set(GENERIC_L151C6UX_MAXDATASIZE 10240)
set(GENERIC_L151C6UX_MCU cortex-m3)
add_library(GENERIC_L151C6UX INTERFACE)
target_compile_options(GENERIC_L151C6UX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C6UX_MCU}
)
target_compile_definitions(GENERIC_L151C6UX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C6UX"
	"BOARD_NAME=\"GENERIC_L151C6UX\""
	"BOARD_ID=GENERIC_L151C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_L151C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_L151C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L151C6UX_MCU}
)
target_link_libraries(GENERIC_L151C6UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C6UXA
# -----------------------------------------------------------------------------

set(GENERIC_L151C6UXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C6UXA_MAXSIZE 32768)
set(GENERIC_L151C6UXA_MAXDATASIZE 16384)
set(GENERIC_L151C6UXA_MCU cortex-m3)
add_library(GENERIC_L151C6UXA INTERFACE)
target_compile_options(GENERIC_L151C6UXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C6UXA_MCU}
)
target_compile_definitions(GENERIC_L151C6UXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C6UXA"
	"BOARD_NAME=\"GENERIC_L151C6UXA\""
	"BOARD_ID=GENERIC_L151C6UXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C6UXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C6UXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151C6UXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151C6UXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L151C6UXA_MCU}
)
target_link_libraries(GENERIC_L151C6UXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C8TX
# -----------------------------------------------------------------------------

set(GENERIC_L151C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C8TX_MAXSIZE 65536)
set(GENERIC_L151C8TX_MAXDATASIZE 10240)
set(GENERIC_L151C8TX_MCU cortex-m3)
add_library(GENERIC_L151C8TX INTERFACE)
target_compile_options(GENERIC_L151C8TX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C8TX_MCU}
)
target_compile_definitions(GENERIC_L151C8TX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C8TX"
	"BOARD_NAME=\"GENERIC_L151C8TX\""
	"BOARD_ID=GENERIC_L151C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L151C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L151C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L151C8TX_MCU}
)
target_link_libraries(GENERIC_L151C8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C8TXA
# -----------------------------------------------------------------------------

set(GENERIC_L151C8TXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C8TXA_MAXSIZE 65536)
set(GENERIC_L151C8TXA_MAXDATASIZE 32768)
set(GENERIC_L151C8TXA_MCU cortex-m3)
add_library(GENERIC_L151C8TXA INTERFACE)
target_compile_options(GENERIC_L151C8TXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C8TXA_MCU}
)
target_compile_definitions(GENERIC_L151C8TXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C8TXA"
	"BOARD_NAME=\"GENERIC_L151C8TXA\""
	"BOARD_ID=GENERIC_L151C8TXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C8TXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C8TXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151C8TXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151C8TXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L151C8TXA_MCU}
)
target_link_libraries(GENERIC_L151C8TXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C8UX
# -----------------------------------------------------------------------------

set(GENERIC_L151C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C8UX_MAXSIZE 65536)
set(GENERIC_L151C8UX_MAXDATASIZE 10240)
set(GENERIC_L151C8UX_MCU cortex-m3)
add_library(GENERIC_L151C8UX INTERFACE)
target_compile_options(GENERIC_L151C8UX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C8UX_MCU}
)
target_compile_definitions(GENERIC_L151C8UX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C8UX"
	"BOARD_NAME=\"GENERIC_L151C8UX\""
	"BOARD_ID=GENERIC_L151C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_L151C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_L151C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L151C8UX_MCU}
)
target_link_libraries(GENERIC_L151C8UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151C8UXA
# -----------------------------------------------------------------------------

set(GENERIC_L151C8UXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151C8UXA_MAXSIZE 65536)
set(GENERIC_L151C8UXA_MAXDATASIZE 32768)
set(GENERIC_L151C8UXA_MCU cortex-m3)
add_library(GENERIC_L151C8UXA INTERFACE)
target_compile_options(GENERIC_L151C8UXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151C8UXA_MCU}
)
target_compile_definitions(GENERIC_L151C8UXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151C8UXA"
	"BOARD_NAME=\"GENERIC_L151C8UXA\""
	"BOARD_ID=GENERIC_L151C8UXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151C8UXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151C8UXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151C8UXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151C8UXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L151C8UXA_MCU}
)
target_link_libraries(GENERIC_L151C8UXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151CBTX
# -----------------------------------------------------------------------------

set(GENERIC_L151CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151CBTX_MAXSIZE 131072)
set(GENERIC_L151CBTX_MAXDATASIZE 16384)
set(GENERIC_L151CBTX_MCU cortex-m3)
add_library(GENERIC_L151CBTX INTERFACE)
target_compile_options(GENERIC_L151CBTX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151CBTX_MCU}
)
target_compile_definitions(GENERIC_L151CBTX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151CBTX"
	"BOARD_NAME=\"GENERIC_L151CBTX\""
	"BOARD_ID=GENERIC_L151CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L151CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L151CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L151CBTX_MCU}
)
target_link_libraries(GENERIC_L151CBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151CBTXA
# -----------------------------------------------------------------------------

set(GENERIC_L151CBTXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151CBTXA_MAXSIZE 131072)
set(GENERIC_L151CBTXA_MAXDATASIZE 32768)
set(GENERIC_L151CBTXA_MCU cortex-m3)
add_library(GENERIC_L151CBTXA INTERFACE)
target_compile_options(GENERIC_L151CBTXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151CBTXA_MCU}
)
target_compile_definitions(GENERIC_L151CBTXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151CBTXA"
	"BOARD_NAME=\"GENERIC_L151CBTXA\""
	"BOARD_ID=GENERIC_L151CBTXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151CBTXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151CBTXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151CBTXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151CBTXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L151CBTXA_MCU}
)
target_link_libraries(GENERIC_L151CBTXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151CBUX
# -----------------------------------------------------------------------------

set(GENERIC_L151CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151CBUX_MAXSIZE 131072)
set(GENERIC_L151CBUX_MAXDATASIZE 16384)
set(GENERIC_L151CBUX_MCU cortex-m3)
add_library(GENERIC_L151CBUX INTERFACE)
target_compile_options(GENERIC_L151CBUX INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151CBUX_MCU}
)
target_compile_definitions(GENERIC_L151CBUX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151CBUX"
	"BOARD_NAME=\"GENERIC_L151CBUX\""
	"BOARD_ID=GENERIC_L151CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L151CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L151CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L151CBUX_MCU}
)
target_link_libraries(GENERIC_L151CBUX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151CBUXA
# -----------------------------------------------------------------------------

set(GENERIC_L151CBUXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L151CBUXA_MAXSIZE 131072)
set(GENERIC_L151CBUXA_MAXDATASIZE 32768)
set(GENERIC_L151CBUXA_MCU cortex-m3)
add_library(GENERIC_L151CBUXA INTERFACE)
target_compile_options(GENERIC_L151CBUXA INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151CBUXA_MCU}
)
target_compile_definitions(GENERIC_L151CBUXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151CBUXA"
	"BOARD_NAME=\"GENERIC_L151CBUXA\""
	"BOARD_ID=GENERIC_L151CBUXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151CBUXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151CBUXA_VARIANT_PATH}
)

target_link_options(GENERIC_L151CBUXA INTERFACE
  "LINKER:--default-script=${GENERIC_L151CBUXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L151CBUXA_MCU}
)
target_link_libraries(GENERIC_L151CBUXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L151RETX
# -----------------------------------------------------------------------------

set(GENERIC_L151RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L151RET_L152RET_L162RET")
set(GENERIC_L151RETX_MAXSIZE 524288)
set(GENERIC_L151RETX_MAXDATASIZE 81920)
set(GENERIC_L151RETX_MCU cortex-m3)
add_library(GENERIC_L151RETX INTERFACE)
target_compile_options(GENERIC_L151RETX INTERFACE
  "SHELL:-DSTM32L151xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L151RETX_MCU}
)
target_compile_definitions(GENERIC_L151RETX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L151RETX"
	"BOARD_NAME=\"GENERIC_L151RETX\""
	"BOARD_ID=GENERIC_L151RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L151RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L151RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L151RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L151RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=81920"
  "SHELL:"
  -mcpu=${GENERIC_L151RETX_MCU}
)
target_link_libraries(GENERIC_L151RETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C6TX
# -----------------------------------------------------------------------------

set(GENERIC_L152C6TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C6TX_MAXSIZE 32768)
set(GENERIC_L152C6TX_MAXDATASIZE 10240)
set(GENERIC_L152C6TX_MCU cortex-m3)
add_library(GENERIC_L152C6TX INTERFACE)
target_compile_options(GENERIC_L152C6TX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C6TX_MCU}
)
target_compile_definitions(GENERIC_L152C6TX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C6TX"
	"BOARD_NAME=\"GENERIC_L152C6TX\""
	"BOARD_ID=GENERIC_L152C6TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C6TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C6TX_VARIANT_PATH}
)

target_link_options(GENERIC_L152C6TX INTERFACE
  "LINKER:--default-script=${GENERIC_L152C6TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L152C6TX_MCU}
)
target_link_libraries(GENERIC_L152C6TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C6TXA
# -----------------------------------------------------------------------------

set(GENERIC_L152C6TXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C6TXA_MAXSIZE 32768)
set(GENERIC_L152C6TXA_MAXDATASIZE 16384)
set(GENERIC_L152C6TXA_MCU cortex-m3)
add_library(GENERIC_L152C6TXA INTERFACE)
target_compile_options(GENERIC_L152C6TXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C6TXA_MCU}
)
target_compile_definitions(GENERIC_L152C6TXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C6TXA"
	"BOARD_NAME=\"GENERIC_L152C6TXA\""
	"BOARD_ID=GENERIC_L152C6TXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C6TXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C6TXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152C6TXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152C6TXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L152C6TXA_MCU}
)
target_link_libraries(GENERIC_L152C6TXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C6UX
# -----------------------------------------------------------------------------

set(GENERIC_L152C6UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C6UX_MAXSIZE 32768)
set(GENERIC_L152C6UX_MAXDATASIZE 10240)
set(GENERIC_L152C6UX_MCU cortex-m3)
add_library(GENERIC_L152C6UX INTERFACE)
target_compile_options(GENERIC_L152C6UX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C6UX_MCU}
)
target_compile_definitions(GENERIC_L152C6UX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C6UX"
	"BOARD_NAME=\"GENERIC_L152C6UX\""
	"BOARD_ID=GENERIC_L152C6UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C6UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C6UX_VARIANT_PATH}
)

target_link_options(GENERIC_L152C6UX INTERFACE
  "LINKER:--default-script=${GENERIC_L152C6UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L152C6UX_MCU}
)
target_link_libraries(GENERIC_L152C6UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C6UXA
# -----------------------------------------------------------------------------

set(GENERIC_L152C6UXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C6UXA_MAXSIZE 32768)
set(GENERIC_L152C6UXA_MAXDATASIZE 16384)
set(GENERIC_L152C6UXA_MCU cortex-m3)
add_library(GENERIC_L152C6UXA INTERFACE)
target_compile_options(GENERIC_L152C6UXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C6UXA_MCU}
)
target_compile_definitions(GENERIC_L152C6UXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C6UXA"
	"BOARD_NAME=\"GENERIC_L152C6UXA\""
	"BOARD_ID=GENERIC_L152C6UXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C6UXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C6UXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152C6UXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152C6UXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L152C6UXA_MCU}
)
target_link_libraries(GENERIC_L152C6UXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C8TX
# -----------------------------------------------------------------------------

set(GENERIC_L152C8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C8TX_MAXSIZE 65536)
set(GENERIC_L152C8TX_MAXDATASIZE 10240)
set(GENERIC_L152C8TX_MCU cortex-m3)
add_library(GENERIC_L152C8TX INTERFACE)
target_compile_options(GENERIC_L152C8TX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C8TX_MCU}
)
target_compile_definitions(GENERIC_L152C8TX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C8TX"
	"BOARD_NAME=\"GENERIC_L152C8TX\""
	"BOARD_ID=GENERIC_L152C8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L152C8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L152C8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L152C8TX_MCU}
)
target_link_libraries(GENERIC_L152C8TX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C8TXA
# -----------------------------------------------------------------------------

set(GENERIC_L152C8TXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C8TXA_MAXSIZE 65536)
set(GENERIC_L152C8TXA_MAXDATASIZE 32768)
set(GENERIC_L152C8TXA_MCU cortex-m3)
add_library(GENERIC_L152C8TXA INTERFACE)
target_compile_options(GENERIC_L152C8TXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C8TXA_MCU}
)
target_compile_definitions(GENERIC_L152C8TXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C8TXA"
	"BOARD_NAME=\"GENERIC_L152C8TXA\""
	"BOARD_ID=GENERIC_L152C8TXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C8TXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C8TXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152C8TXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152C8TXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L152C8TXA_MCU}
)
target_link_libraries(GENERIC_L152C8TXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C8UX
# -----------------------------------------------------------------------------

set(GENERIC_L152C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C8UX_MAXSIZE 65536)
set(GENERIC_L152C8UX_MAXDATASIZE 10240)
set(GENERIC_L152C8UX_MCU cortex-m3)
add_library(GENERIC_L152C8UX INTERFACE)
target_compile_options(GENERIC_L152C8UX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C8UX_MCU}
)
target_compile_definitions(GENERIC_L152C8UX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C8UX"
	"BOARD_NAME=\"GENERIC_L152C8UX\""
	"BOARD_ID=GENERIC_L152C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_L152C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_L152C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=10240"
  "SHELL:"
  -mcpu=${GENERIC_L152C8UX_MCU}
)
target_link_libraries(GENERIC_L152C8UX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152C8UXA
# -----------------------------------------------------------------------------

set(GENERIC_L152C8UXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152C8UXA_MAXSIZE 65536)
set(GENERIC_L152C8UXA_MAXDATASIZE 32768)
set(GENERIC_L152C8UXA_MCU cortex-m3)
add_library(GENERIC_L152C8UXA INTERFACE)
target_compile_options(GENERIC_L152C8UXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152C8UXA_MCU}
)
target_compile_definitions(GENERIC_L152C8UXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152C8UXA"
	"BOARD_NAME=\"GENERIC_L152C8UXA\""
	"BOARD_ID=GENERIC_L152C8UXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152C8UXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152C8UXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152C8UXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152C8UXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L152C8UXA_MCU}
)
target_link_libraries(GENERIC_L152C8UXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152CBTX
# -----------------------------------------------------------------------------

set(GENERIC_L152CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152CBTX_MAXSIZE 131072)
set(GENERIC_L152CBTX_MAXDATASIZE 16384)
set(GENERIC_L152CBTX_MCU cortex-m3)
add_library(GENERIC_L152CBTX INTERFACE)
target_compile_options(GENERIC_L152CBTX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152CBTX_MCU}
)
target_compile_definitions(GENERIC_L152CBTX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152CBTX"
	"BOARD_NAME=\"GENERIC_L152CBTX\""
	"BOARD_ID=GENERIC_L152CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L152CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L152CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L152CBTX_MCU}
)
target_link_libraries(GENERIC_L152CBTX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152CBTXA
# -----------------------------------------------------------------------------

set(GENERIC_L152CBTXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152CBTXA_MAXSIZE 131072)
set(GENERIC_L152CBTXA_MAXDATASIZE 32768)
set(GENERIC_L152CBTXA_MCU cortex-m3)
add_library(GENERIC_L152CBTXA INTERFACE)
target_compile_options(GENERIC_L152CBTXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152CBTXA_MCU}
)
target_compile_definitions(GENERIC_L152CBTXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152CBTXA"
	"BOARD_NAME=\"GENERIC_L152CBTXA\""
	"BOARD_ID=GENERIC_L152CBTXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152CBTXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152CBTXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152CBTXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152CBTXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L152CBTXA_MCU}
)
target_link_libraries(GENERIC_L152CBTXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152CBUX
# -----------------------------------------------------------------------------

set(GENERIC_L152CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152CBUX_MAXSIZE 131072)
set(GENERIC_L152CBUX_MAXDATASIZE 16384)
set(GENERIC_L152CBUX_MCU cortex-m3)
add_library(GENERIC_L152CBUX INTERFACE)
target_compile_options(GENERIC_L152CBUX INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152CBUX_MCU}
)
target_compile_definitions(GENERIC_L152CBUX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152CBUX"
	"BOARD_NAME=\"GENERIC_L152CBUX\""
	"BOARD_ID=GENERIC_L152CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L152CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L152CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${GENERIC_L152CBUX_MCU}
)
target_link_libraries(GENERIC_L152CBUX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152CBUXA
# -----------------------------------------------------------------------------

set(GENERIC_L152CBUXA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(GENERIC_L152CBUXA_MAXSIZE 131072)
set(GENERIC_L152CBUXA_MAXDATASIZE 32768)
set(GENERIC_L152CBUXA_MCU cortex-m3)
add_library(GENERIC_L152CBUXA INTERFACE)
target_compile_options(GENERIC_L152CBUXA INTERFACE
  "SHELL:-DSTM32L152xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152CBUXA_MCU}
)
target_compile_definitions(GENERIC_L152CBUXA INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152CBUXA"
	"BOARD_NAME=\"GENERIC_L152CBUXA\""
	"BOARD_ID=GENERIC_L152CBUXA"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152CBUXA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152CBUXA_VARIANT_PATH}
)

target_link_options(GENERIC_L152CBUXA INTERFACE
  "LINKER:--default-script=${GENERIC_L152CBUXA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${GENERIC_L152CBUXA_MCU}
)
target_link_libraries(GENERIC_L152CBUXA INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L152RETX
# -----------------------------------------------------------------------------

set(GENERIC_L152RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L151RET_L152RET_L162RET")
set(GENERIC_L152RETX_MAXSIZE 524288)
set(GENERIC_L152RETX_MAXDATASIZE 81920)
set(GENERIC_L152RETX_MCU cortex-m3)
add_library(GENERIC_L152RETX INTERFACE)
target_compile_options(GENERIC_L152RETX INTERFACE
  "SHELL:-DSTM32L152xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L152RETX_MCU}
)
target_compile_definitions(GENERIC_L152RETX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L152RETX"
	"BOARD_NAME=\"GENERIC_L152RETX\""
	"BOARD_ID=GENERIC_L152RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L152RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L152RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L152RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L152RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=81920"
  "SHELL:"
  -mcpu=${GENERIC_L152RETX_MCU}
)
target_link_libraries(GENERIC_L152RETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L162RETX
# -----------------------------------------------------------------------------

set(GENERIC_L162RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L151RET_L152RET_L162RET")
set(GENERIC_L162RETX_MAXSIZE 524288)
set(GENERIC_L162RETX_MAXDATASIZE 81920)
set(GENERIC_L162RETX_MCU cortex-m3)
add_library(GENERIC_L162RETX INTERFACE)
target_compile_options(GENERIC_L162RETX INTERFACE
  "SHELL:-DSTM32L162xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_L162RETX_MCU}
)
target_compile_definitions(GENERIC_L162RETX INTERFACE
  "STM32L1xx"
	"ARDUINO_GENERIC_L162RETX"
	"BOARD_NAME=\"GENERIC_L162RETX\""
	"BOARD_ID=GENERIC_L162RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L162RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${GENERIC_L162RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L162RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L162RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=81920"
  "SHELL:"
  -mcpu=${GENERIC_L162RETX_MCU}
)
target_link_libraries(GENERIC_L162RETX INTERFACE
  arm_cortexM3l_math
)

# GENERIC_L412K8TX
# -----------------------------------------------------------------------------

set(GENERIC_L412K8TX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L412K8TX_MAXSIZE 65536)
set(GENERIC_L412K8TX_MAXDATASIZE 40960)
set(GENERIC_L412K8TX_MCU cortex-m4)
add_library(GENERIC_L412K8TX INTERFACE)
target_compile_options(GENERIC_L412K8TX INTERFACE
  "SHELL:-DSTM32L412xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L412K8TX_MCU}
)
target_compile_definitions(GENERIC_L412K8TX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L412K8TX"
	"BOARD_NAME=\"GENERIC_L412K8TX\""
	"BOARD_ID=GENERIC_L412K8TX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L412K8TX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L412K8TX_VARIANT_PATH}
)

target_link_options(GENERIC_L412K8TX INTERFACE
  "LINKER:--default-script=${GENERIC_L412K8TX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L412K8TX_MCU}
)
target_link_libraries(GENERIC_L412K8TX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L412K8UX
# -----------------------------------------------------------------------------

set(GENERIC_L412K8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L412K8UX_MAXSIZE 65536)
set(GENERIC_L412K8UX_MAXDATASIZE 40960)
set(GENERIC_L412K8UX_MCU cortex-m4)
add_library(GENERIC_L412K8UX INTERFACE)
target_compile_options(GENERIC_L412K8UX INTERFACE
  "SHELL:-DSTM32L412xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L412K8UX_MCU}
)
target_compile_definitions(GENERIC_L412K8UX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L412K8UX"
	"BOARD_NAME=\"GENERIC_L412K8UX\""
	"BOARD_ID=GENERIC_L412K8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L412K8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L412K8UX_VARIANT_PATH}
)

target_link_options(GENERIC_L412K8UX INTERFACE
  "LINKER:--default-script=${GENERIC_L412K8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L412K8UX_MCU}
)
target_link_libraries(GENERIC_L412K8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L412KBTX
# -----------------------------------------------------------------------------

set(GENERIC_L412KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L412KBTX_MAXSIZE 131072)
set(GENERIC_L412KBTX_MAXDATASIZE 40960)
set(GENERIC_L412KBTX_MCU cortex-m4)
add_library(GENERIC_L412KBTX INTERFACE)
target_compile_options(GENERIC_L412KBTX INTERFACE
  "SHELL:-DSTM32L412xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L412KBTX_MCU}
)
target_compile_definitions(GENERIC_L412KBTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L412KBTX"
	"BOARD_NAME=\"GENERIC_L412KBTX\""
	"BOARD_ID=GENERIC_L412KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L412KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L412KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L412KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L412KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L412KBTX_MCU}
)
target_link_libraries(GENERIC_L412KBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L412KBUX
# -----------------------------------------------------------------------------

set(GENERIC_L412KBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L412KBUX_MAXSIZE 131072)
set(GENERIC_L412KBUX_MAXDATASIZE 40960)
set(GENERIC_L412KBUX_MCU cortex-m4)
add_library(GENERIC_L412KBUX INTERFACE)
target_compile_options(GENERIC_L412KBUX INTERFACE
  "SHELL:-DSTM32L412xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L412KBUX_MCU}
)
target_compile_definitions(GENERIC_L412KBUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L412KBUX"
	"BOARD_NAME=\"GENERIC_L412KBUX\""
	"BOARD_ID=GENERIC_L412KBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L412KBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L412KBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L412KBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L412KBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L412KBUX_MCU}
)
target_link_libraries(GENERIC_L412KBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L422KBTX
# -----------------------------------------------------------------------------

set(GENERIC_L422KBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L422KBTX_MAXSIZE 131072)
set(GENERIC_L422KBTX_MAXDATASIZE 40960)
set(GENERIC_L422KBTX_MCU cortex-m4)
add_library(GENERIC_L422KBTX INTERFACE)
target_compile_options(GENERIC_L422KBTX INTERFACE
  "SHELL:-DSTM32L422xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L422KBTX_MCU}
)
target_compile_definitions(GENERIC_L422KBTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L422KBTX"
	"BOARD_NAME=\"GENERIC_L422KBTX\""
	"BOARD_ID=GENERIC_L422KBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L422KBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L422KBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L422KBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L422KBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L422KBTX_MCU}
)
target_link_libraries(GENERIC_L422KBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L422KBUX
# -----------------------------------------------------------------------------

set(GENERIC_L422KBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(GENERIC_L422KBUX_MAXSIZE 131072)
set(GENERIC_L422KBUX_MAXDATASIZE 40960)
set(GENERIC_L422KBUX_MCU cortex-m4)
add_library(GENERIC_L422KBUX INTERFACE)
target_compile_options(GENERIC_L422KBUX INTERFACE
  "SHELL:-DSTM32L422xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L422KBUX_MCU}
)
target_compile_definitions(GENERIC_L422KBUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L422KBUX"
	"BOARD_NAME=\"GENERIC_L422KBUX\""
	"BOARD_ID=GENERIC_L422KBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L422KBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L422KBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L422KBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L422KBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L422KBUX_MCU}
)
target_link_libraries(GENERIC_L422KBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L432KBUX
# -----------------------------------------------------------------------------

set(GENERIC_L432KBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L432K(B-C)U_L442KCU")
set(GENERIC_L432KBUX_MAXSIZE 131072)
set(GENERIC_L432KBUX_MAXDATASIZE 65536)
set(GENERIC_L432KBUX_MCU cortex-m4)
add_library(GENERIC_L432KBUX INTERFACE)
target_compile_options(GENERIC_L432KBUX INTERFACE
  "SHELL:-DSTM32L432xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L432KBUX_MCU}
)
target_compile_definitions(GENERIC_L432KBUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L432KBUX"
	"BOARD_NAME=\"GENERIC_L432KBUX\""
	"BOARD_ID=GENERIC_L432KBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L432KBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L432KBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L432KBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L432KBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L432KBUX_MCU}
)
target_link_libraries(GENERIC_L432KBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L432KCUX
# -----------------------------------------------------------------------------

set(GENERIC_L432KCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L432K(B-C)U_L442KCU")
set(GENERIC_L432KCUX_MAXSIZE 262144)
set(GENERIC_L432KCUX_MAXDATASIZE 65536)
set(GENERIC_L432KCUX_MCU cortex-m4)
add_library(GENERIC_L432KCUX INTERFACE)
target_compile_options(GENERIC_L432KCUX INTERFACE
  "SHELL:-DSTM32L432xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L432KCUX_MCU}
)
target_compile_definitions(GENERIC_L432KCUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L432KCUX"
	"BOARD_NAME=\"GENERIC_L432KCUX\""
	"BOARD_ID=GENERIC_L432KCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L432KCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L432KCUX_VARIANT_PATH}
)

target_link_options(GENERIC_L432KCUX INTERFACE
  "LINKER:--default-script=${GENERIC_L432KCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L432KCUX_MCU}
)
target_link_libraries(GENERIC_L432KCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L433CBTX
# -----------------------------------------------------------------------------

set(GENERIC_L433CBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L433CBTX_MAXSIZE 131072)
set(GENERIC_L433CBTX_MAXDATASIZE 65536)
set(GENERIC_L433CBTX_MCU cortex-m4)
add_library(GENERIC_L433CBTX INTERFACE)
target_compile_options(GENERIC_L433CBTX INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L433CBTX_MCU}
)
target_compile_definitions(GENERIC_L433CBTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L433CBTX"
	"BOARD_NAME=\"GENERIC_L433CBTX\""
	"BOARD_ID=GENERIC_L433CBTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L433CBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L433CBTX_VARIANT_PATH}
)

target_link_options(GENERIC_L433CBTX INTERFACE
  "LINKER:--default-script=${GENERIC_L433CBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L433CBTX_MCU}
)
target_link_libraries(GENERIC_L433CBTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L433CBUX
# -----------------------------------------------------------------------------

set(GENERIC_L433CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L433CBUX_MAXSIZE 131072)
set(GENERIC_L433CBUX_MAXDATASIZE 65536)
set(GENERIC_L433CBUX_MCU cortex-m4)
add_library(GENERIC_L433CBUX INTERFACE)
target_compile_options(GENERIC_L433CBUX INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L433CBUX_MCU}
)
target_compile_definitions(GENERIC_L433CBUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L433CBUX"
	"BOARD_NAME=\"GENERIC_L433CBUX\""
	"BOARD_ID=GENERIC_L433CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L433CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L433CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_L433CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_L433CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L433CBUX_MCU}
)
target_link_libraries(GENERIC_L433CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L433CCTX
# -----------------------------------------------------------------------------

set(GENERIC_L433CCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L433CCTX_MAXSIZE 262144)
set(GENERIC_L433CCTX_MAXDATASIZE 65536)
set(GENERIC_L433CCTX_MCU cortex-m4)
add_library(GENERIC_L433CCTX INTERFACE)
target_compile_options(GENERIC_L433CCTX INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L433CCTX_MCU}
)
target_compile_definitions(GENERIC_L433CCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L433CCTX"
	"BOARD_NAME=\"GENERIC_L433CCTX\""
	"BOARD_ID=GENERIC_L433CCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L433CCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L433CCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L433CCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L433CCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L433CCTX_MCU}
)
target_link_libraries(GENERIC_L433CCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L433CCUX
# -----------------------------------------------------------------------------

set(GENERIC_L433CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L433CCUX_MAXSIZE 262144)
set(GENERIC_L433CCUX_MAXDATASIZE 65536)
set(GENERIC_L433CCUX_MCU cortex-m4)
add_library(GENERIC_L433CCUX INTERFACE)
target_compile_options(GENERIC_L433CCUX INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L433CCUX_MCU}
)
target_compile_definitions(GENERIC_L433CCUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L433CCUX"
	"BOARD_NAME=\"GENERIC_L433CCUX\""
	"BOARD_ID=GENERIC_L433CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L433CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L433CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_L433CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_L433CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L433CCUX_MCU}
)
target_link_libraries(GENERIC_L433CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L433RCTXP
# -----------------------------------------------------------------------------

set(GENERIC_L433RCTXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433RCTxP")
set(GENERIC_L433RCTXP_MAXSIZE 262144)
set(GENERIC_L433RCTXP_MAXDATASIZE 65536)
set(GENERIC_L433RCTXP_MCU cortex-m4)
add_library(GENERIC_L433RCTXP INTERFACE)
target_compile_options(GENERIC_L433RCTXP INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L433RCTXP_MCU}
)
target_compile_definitions(GENERIC_L433RCTXP INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L433RCTXP"
	"BOARD_NAME=\"GENERIC_L433RCTXP\""
	"BOARD_ID=GENERIC_L433RCTXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L433RCTXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L433RCTXP_VARIANT_PATH}
)

target_link_options(GENERIC_L433RCTXP INTERFACE
  "LINKER:--default-script=${GENERIC_L433RCTXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L433RCTXP_MCU}
)
target_link_libraries(GENERIC_L433RCTXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L442KCUX
# -----------------------------------------------------------------------------

set(GENERIC_L442KCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L432K(B-C)U_L442KCU")
set(GENERIC_L442KCUX_MAXSIZE 262144)
set(GENERIC_L442KCUX_MAXDATASIZE 65536)
set(GENERIC_L442KCUX_MCU cortex-m4)
add_library(GENERIC_L442KCUX INTERFACE)
target_compile_options(GENERIC_L442KCUX INTERFACE
  "SHELL:-DSTM32L442xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L442KCUX_MCU}
)
target_compile_definitions(GENERIC_L442KCUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L442KCUX"
	"BOARD_NAME=\"GENERIC_L442KCUX\""
	"BOARD_ID=GENERIC_L442KCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L442KCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L442KCUX_VARIANT_PATH}
)

target_link_options(GENERIC_L442KCUX INTERFACE
  "LINKER:--default-script=${GENERIC_L442KCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L442KCUX_MCU}
)
target_link_libraries(GENERIC_L442KCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L443CCTX
# -----------------------------------------------------------------------------

set(GENERIC_L443CCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L443CCTX_MAXSIZE 262144)
set(GENERIC_L443CCTX_MAXDATASIZE 65536)
set(GENERIC_L443CCTX_MCU cortex-m4)
add_library(GENERIC_L443CCTX INTERFACE)
target_compile_options(GENERIC_L443CCTX INTERFACE
  "SHELL:-DSTM32L443xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L443CCTX_MCU}
)
target_compile_definitions(GENERIC_L443CCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L443CCTX"
	"BOARD_NAME=\"GENERIC_L443CCTX\""
	"BOARD_ID=GENERIC_L443CCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L443CCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L443CCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L443CCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L443CCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L443CCTX_MCU}
)
target_link_libraries(GENERIC_L443CCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L443CCUX
# -----------------------------------------------------------------------------

set(GENERIC_L443CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433C(B-C)(T-U)_L443CC(T-U)")
set(GENERIC_L443CCUX_MAXSIZE 262144)
set(GENERIC_L443CCUX_MAXDATASIZE 65536)
set(GENERIC_L443CCUX_MCU cortex-m4)
add_library(GENERIC_L443CCUX INTERFACE)
target_compile_options(GENERIC_L443CCUX INTERFACE
  "SHELL:-DSTM32L443xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L443CCUX_MCU}
)
target_compile_definitions(GENERIC_L443CCUX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L443CCUX"
	"BOARD_NAME=\"GENERIC_L443CCUX\""
	"BOARD_ID=GENERIC_L443CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L443CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L443CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_L443CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_L443CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L443CCUX_MCU}
)
target_link_libraries(GENERIC_L443CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452RCIX
# -----------------------------------------------------------------------------

set(GENERIC_L452RCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452RCIX_MAXSIZE 262144)
set(GENERIC_L452RCIX_MAXDATASIZE 163840)
set(GENERIC_L452RCIX_MCU cortex-m4)
add_library(GENERIC_L452RCIX INTERFACE)
target_compile_options(GENERIC_L452RCIX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452RCIX_MCU}
)
target_compile_definitions(GENERIC_L452RCIX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452RCIX"
	"BOARD_NAME=\"GENERIC_L452RCIX\""
	"BOARD_ID=GENERIC_L452RCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452RCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452RCIX_VARIANT_PATH}
)

target_link_options(GENERIC_L452RCIX INTERFACE
  "LINKER:--default-script=${GENERIC_L452RCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452RCIX_MCU}
)
target_link_libraries(GENERIC_L452RCIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452RCTX
# -----------------------------------------------------------------------------

set(GENERIC_L452RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452RCTX_MAXSIZE 262144)
set(GENERIC_L452RCTX_MAXDATASIZE 163840)
set(GENERIC_L452RCTX_MCU cortex-m4)
add_library(GENERIC_L452RCTX INTERFACE)
target_compile_options(GENERIC_L452RCTX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452RCTX_MCU}
)
target_compile_definitions(GENERIC_L452RCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452RCTX"
	"BOARD_NAME=\"GENERIC_L452RCTX\""
	"BOARD_ID=GENERIC_L452RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L452RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L452RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452RCTX_MCU}
)
target_link_libraries(GENERIC_L452RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452RCYX
# -----------------------------------------------------------------------------

set(GENERIC_L452RCYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452RCYX_MAXSIZE 262144)
set(GENERIC_L452RCYX_MAXDATASIZE 163840)
set(GENERIC_L452RCYX_MCU cortex-m4)
add_library(GENERIC_L452RCYX INTERFACE)
target_compile_options(GENERIC_L452RCYX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452RCYX_MCU}
)
target_compile_definitions(GENERIC_L452RCYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452RCYX"
	"BOARD_NAME=\"GENERIC_L452RCYX\""
	"BOARD_ID=GENERIC_L452RCYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452RCYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452RCYX_VARIANT_PATH}
)

target_link_options(GENERIC_L452RCYX INTERFACE
  "LINKER:--default-script=${GENERIC_L452RCYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452RCYX_MCU}
)
target_link_libraries(GENERIC_L452RCYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452REIX
# -----------------------------------------------------------------------------

set(GENERIC_L452REIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452REIX_MAXSIZE 524288)
set(GENERIC_L452REIX_MAXDATASIZE 163840)
set(GENERIC_L452REIX_MCU cortex-m4)
add_library(GENERIC_L452REIX INTERFACE)
target_compile_options(GENERIC_L452REIX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452REIX_MCU}
)
target_compile_definitions(GENERIC_L452REIX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452REIX"
	"BOARD_NAME=\"GENERIC_L452REIX\""
	"BOARD_ID=GENERIC_L452REIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452REIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452REIX_VARIANT_PATH}
)

target_link_options(GENERIC_L452REIX INTERFACE
  "LINKER:--default-script=${GENERIC_L452REIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452REIX_MCU}
)
target_link_libraries(GENERIC_L452REIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452RETX
# -----------------------------------------------------------------------------

set(GENERIC_L452RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452RETX_MAXSIZE 524288)
set(GENERIC_L452RETX_MAXDATASIZE 163840)
set(GENERIC_L452RETX_MCU cortex-m4)
add_library(GENERIC_L452RETX INTERFACE)
target_compile_options(GENERIC_L452RETX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452RETX_MCU}
)
target_compile_definitions(GENERIC_L452RETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452RETX"
	"BOARD_NAME=\"GENERIC_L452RETX\""
	"BOARD_ID=GENERIC_L452RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L452RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L452RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452RETX_MCU}
)
target_link_libraries(GENERIC_L452RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452RETXP
# -----------------------------------------------------------------------------

set(GENERIC_L452RETXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452RETxP")
set(GENERIC_L452RETXP_MAXSIZE 524288)
set(GENERIC_L452RETXP_MAXDATASIZE 163840)
set(GENERIC_L452RETXP_MCU cortex-m4)
add_library(GENERIC_L452RETXP INTERFACE)
target_compile_options(GENERIC_L452RETXP INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452RETXP_MCU}
)
target_compile_definitions(GENERIC_L452RETXP INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452RETXP"
	"BOARD_NAME=\"GENERIC_L452RETXP\""
	"BOARD_ID=GENERIC_L452RETXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452RETXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452RETXP_VARIANT_PATH}
)

target_link_options(GENERIC_L452RETXP INTERFACE
  "LINKER:--default-script=${GENERIC_L452RETXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452RETXP_MCU}
)
target_link_libraries(GENERIC_L452RETXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L452REYX
# -----------------------------------------------------------------------------

set(GENERIC_L452REYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L452REYX_MAXSIZE 524288)
set(GENERIC_L452REYX_MAXDATASIZE 163840)
set(GENERIC_L452REYX_MCU cortex-m4)
add_library(GENERIC_L452REYX INTERFACE)
target_compile_options(GENERIC_L452REYX INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L452REYX_MCU}
)
target_compile_definitions(GENERIC_L452REYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L452REYX"
	"BOARD_NAME=\"GENERIC_L452REYX\""
	"BOARD_ID=GENERIC_L452REYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L452REYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L452REYX_VARIANT_PATH}
)

target_link_options(GENERIC_L452REYX INTERFACE
  "LINKER:--default-script=${GENERIC_L452REYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L452REYX_MCU}
)
target_link_libraries(GENERIC_L452REYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L462REIX
# -----------------------------------------------------------------------------

set(GENERIC_L462REIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L462REIX_MAXSIZE 524288)
set(GENERIC_L462REIX_MAXDATASIZE 163840)
set(GENERIC_L462REIX_MCU cortex-m4)
add_library(GENERIC_L462REIX INTERFACE)
target_compile_options(GENERIC_L462REIX INTERFACE
  "SHELL:-DSTM32L462xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L462REIX_MCU}
)
target_compile_definitions(GENERIC_L462REIX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L462REIX"
	"BOARD_NAME=\"GENERIC_L462REIX\""
	"BOARD_ID=GENERIC_L462REIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L462REIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L462REIX_VARIANT_PATH}
)

target_link_options(GENERIC_L462REIX INTERFACE
  "LINKER:--default-script=${GENERIC_L462REIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L462REIX_MCU}
)
target_link_libraries(GENERIC_L462REIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L462RETX
# -----------------------------------------------------------------------------

set(GENERIC_L462RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L462RETX_MAXSIZE 524288)
set(GENERIC_L462RETX_MAXDATASIZE 163840)
set(GENERIC_L462RETX_MCU cortex-m4)
add_library(GENERIC_L462RETX INTERFACE)
target_compile_options(GENERIC_L462RETX INTERFACE
  "SHELL:-DSTM32L462xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L462RETX_MCU}
)
target_compile_definitions(GENERIC_L462RETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L462RETX"
	"BOARD_NAME=\"GENERIC_L462RETX\""
	"BOARD_ID=GENERIC_L462RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L462RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L462RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L462RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L462RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L462RETX_MCU}
)
target_link_libraries(GENERIC_L462RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L462REYX
# -----------------------------------------------------------------------------

set(GENERIC_L462REYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(GENERIC_L462REYX_MAXSIZE 524288)
set(GENERIC_L462REYX_MAXDATASIZE 163840)
set(GENERIC_L462REYX_MCU cortex-m4)
add_library(GENERIC_L462REYX INTERFACE)
target_compile_options(GENERIC_L462REYX INTERFACE
  "SHELL:-DSTM32L462xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L462REYX_MCU}
)
target_compile_definitions(GENERIC_L462REYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L462REYX"
	"BOARD_NAME=\"GENERIC_L462REYX\""
	"BOARD_ID=GENERIC_L462REYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L462REYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L462REYX_VARIANT_PATH}
)

target_link_options(GENERIC_L462REYX INTERFACE
  "LINKER:--default-script=${GENERIC_L462REYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L462REYX_MCU}
)
target_link_libraries(GENERIC_L462REYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475RCTX
# -----------------------------------------------------------------------------

set(GENERIC_L475RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L475RCTX_MAXSIZE 262144)
set(GENERIC_L475RCTX_MAXDATASIZE 98304)
set(GENERIC_L475RCTX_MCU cortex-m4)
add_library(GENERIC_L475RCTX INTERFACE)
target_compile_options(GENERIC_L475RCTX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475RCTX_MCU}
)
target_compile_definitions(GENERIC_L475RCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475RCTX"
	"BOARD_NAME=\"GENERIC_L475RCTX\""
	"BOARD_ID=GENERIC_L475RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L475RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L475RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475RCTX_MCU}
)
target_link_libraries(GENERIC_L475RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475RETX
# -----------------------------------------------------------------------------

set(GENERIC_L475RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L475RETX_MAXSIZE 524288)
set(GENERIC_L475RETX_MAXDATASIZE 98304)
set(GENERIC_L475RETX_MCU cortex-m4)
add_library(GENERIC_L475RETX INTERFACE)
target_compile_options(GENERIC_L475RETX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475RETX_MCU}
)
target_compile_definitions(GENERIC_L475RETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475RETX"
	"BOARD_NAME=\"GENERIC_L475RETX\""
	"BOARD_ID=GENERIC_L475RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L475RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L475RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475RETX_MCU}
)
target_link_libraries(GENERIC_L475RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475RGTX
# -----------------------------------------------------------------------------

set(GENERIC_L475RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L475RGTX_MAXSIZE 1048576)
set(GENERIC_L475RGTX_MAXDATASIZE 98304)
set(GENERIC_L475RGTX_MCU cortex-m4)
add_library(GENERIC_L475RGTX INTERFACE)
target_compile_options(GENERIC_L475RGTX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475RGTX_MCU}
)
target_compile_definitions(GENERIC_L475RGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475RGTX"
	"BOARD_NAME=\"GENERIC_L475RGTX\""
	"BOARD_ID=GENERIC_L475RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L475RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L475RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475RGTX_MCU}
)
target_link_libraries(GENERIC_L475RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475VCTX
# -----------------------------------------------------------------------------

set(GENERIC_L475VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L475VCTX_MAXSIZE 262144)
set(GENERIC_L475VCTX_MAXDATASIZE 98304)
set(GENERIC_L475VCTX_MCU cortex-m4)
add_library(GENERIC_L475VCTX INTERFACE)
target_compile_options(GENERIC_L475VCTX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475VCTX_MCU}
)
target_compile_definitions(GENERIC_L475VCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475VCTX"
	"BOARD_NAME=\"GENERIC_L475VCTX\""
	"BOARD_ID=GENERIC_L475VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L475VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L475VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475VCTX_MCU}
)
target_link_libraries(GENERIC_L475VCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475VETX
# -----------------------------------------------------------------------------

set(GENERIC_L475VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L475VETX_MAXSIZE 524288)
set(GENERIC_L475VETX_MAXDATASIZE 98304)
set(GENERIC_L475VETX_MCU cortex-m4)
add_library(GENERIC_L475VETX INTERFACE)
target_compile_options(GENERIC_L475VETX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475VETX_MCU}
)
target_compile_definitions(GENERIC_L475VETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475VETX"
	"BOARD_NAME=\"GENERIC_L475VETX\""
	"BOARD_ID=GENERIC_L475VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475VETX_VARIANT_PATH}
)

target_link_options(GENERIC_L475VETX INTERFACE
  "LINKER:--default-script=${GENERIC_L475VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475VETX_MCU}
)
target_link_libraries(GENERIC_L475VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L475VGTX
# -----------------------------------------------------------------------------

set(GENERIC_L475VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L475VGTX_MAXSIZE 1048576)
set(GENERIC_L475VGTX_MAXDATASIZE 98304)
set(GENERIC_L475VGTX_MCU cortex-m4)
add_library(GENERIC_L475VGTX INTERFACE)
target_compile_options(GENERIC_L475VGTX INTERFACE
  "SHELL:-DSTM32L475xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L475VGTX_MCU}
)
target_compile_definitions(GENERIC_L475VGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L475VGTX"
	"BOARD_NAME=\"GENERIC_L475VGTX\""
	"BOARD_ID=GENERIC_L475VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L475VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L475VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L475VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L475VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L475VGTX_MCU}
)
target_link_libraries(GENERIC_L475VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476RCTX
# -----------------------------------------------------------------------------

set(GENERIC_L476RCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L476RCTX_MAXSIZE 262144)
set(GENERIC_L476RCTX_MAXDATASIZE 98304)
set(GENERIC_L476RCTX_MCU cortex-m4)
add_library(GENERIC_L476RCTX INTERFACE)
target_compile_options(GENERIC_L476RCTX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476RCTX_MCU}
)
target_compile_definitions(GENERIC_L476RCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476RCTX"
	"BOARD_NAME=\"GENERIC_L476RCTX\""
	"BOARD_ID=GENERIC_L476RCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476RCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476RCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L476RCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L476RCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476RCTX_MCU}
)
target_link_libraries(GENERIC_L476RCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476RETX
# -----------------------------------------------------------------------------

set(GENERIC_L476RETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L476RETX_MAXSIZE 524288)
set(GENERIC_L476RETX_MAXDATASIZE 98304)
set(GENERIC_L476RETX_MCU cortex-m4)
add_library(GENERIC_L476RETX INTERFACE)
target_compile_options(GENERIC_L476RETX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476RETX_MCU}
)
target_compile_definitions(GENERIC_L476RETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476RETX"
	"BOARD_NAME=\"GENERIC_L476RETX\""
	"BOARD_ID=GENERIC_L476RETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476RETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476RETX_VARIANT_PATH}
)

target_link_options(GENERIC_L476RETX INTERFACE
  "LINKER:--default-script=${GENERIC_L476RETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476RETX_MCU}
)
target_link_libraries(GENERIC_L476RETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476RGTX
# -----------------------------------------------------------------------------

set(GENERIC_L476RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L476RGTX_MAXSIZE 1048576)
set(GENERIC_L476RGTX_MAXDATASIZE 98304)
set(GENERIC_L476RGTX_MCU cortex-m4)
add_library(GENERIC_L476RGTX INTERFACE)
target_compile_options(GENERIC_L476RGTX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476RGTX_MCU}
)
target_compile_definitions(GENERIC_L476RGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476RGTX"
	"BOARD_NAME=\"GENERIC_L476RGTX\""
	"BOARD_ID=GENERIC_L476RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L476RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L476RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476RGTX_MCU}
)
target_link_libraries(GENERIC_L476RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476VCTX
# -----------------------------------------------------------------------------

set(GENERIC_L476VCTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L476VCTX_MAXSIZE 262144)
set(GENERIC_L476VCTX_MAXDATASIZE 98304)
set(GENERIC_L476VCTX_MCU cortex-m4)
add_library(GENERIC_L476VCTX INTERFACE)
target_compile_options(GENERIC_L476VCTX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476VCTX_MCU}
)
target_compile_definitions(GENERIC_L476VCTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476VCTX"
	"BOARD_NAME=\"GENERIC_L476VCTX\""
	"BOARD_ID=GENERIC_L476VCTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476VCTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476VCTX_VARIANT_PATH}
)

target_link_options(GENERIC_L476VCTX INTERFACE
  "LINKER:--default-script=${GENERIC_L476VCTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476VCTX_MCU}
)
target_link_libraries(GENERIC_L476VCTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476VETX
# -----------------------------------------------------------------------------

set(GENERIC_L476VETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L476VETX_MAXSIZE 524288)
set(GENERIC_L476VETX_MAXDATASIZE 98304)
set(GENERIC_L476VETX_MCU cortex-m4)
add_library(GENERIC_L476VETX INTERFACE)
target_compile_options(GENERIC_L476VETX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476VETX_MCU}
)
target_compile_definitions(GENERIC_L476VETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476VETX"
	"BOARD_NAME=\"GENERIC_L476VETX\""
	"BOARD_ID=GENERIC_L476VETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476VETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476VETX_VARIANT_PATH}
)

target_link_options(GENERIC_L476VETX INTERFACE
  "LINKER:--default-script=${GENERIC_L476VETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476VETX_MCU}
)
target_link_libraries(GENERIC_L476VETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L476VGTX
# -----------------------------------------------------------------------------

set(GENERIC_L476VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L476VGTX_MAXSIZE 1048576)
set(GENERIC_L476VGTX_MAXDATASIZE 98304)
set(GENERIC_L476VGTX_MCU cortex-m4)
add_library(GENERIC_L476VGTX INTERFACE)
target_compile_options(GENERIC_L476VGTX INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L476VGTX_MCU}
)
target_compile_definitions(GENERIC_L476VGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L476VGTX"
	"BOARD_NAME=\"GENERIC_L476VGTX\""
	"BOARD_ID=GENERIC_L476VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L476VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L476VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L476VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L476VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L476VGTX_MCU}
)
target_link_libraries(GENERIC_L476VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L486RGTX
# -----------------------------------------------------------------------------

set(GENERIC_L486RGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(GENERIC_L486RGTX_MAXSIZE 1048576)
set(GENERIC_L486RGTX_MAXDATASIZE 98304)
set(GENERIC_L486RGTX_MCU cortex-m4)
add_library(GENERIC_L486RGTX INTERFACE)
target_compile_options(GENERIC_L486RGTX INTERFACE
  "SHELL:-DSTM32L486xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L486RGTX_MCU}
)
target_compile_definitions(GENERIC_L486RGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L486RGTX"
	"BOARD_NAME=\"GENERIC_L486RGTX\""
	"BOARD_ID=GENERIC_L486RGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L486RGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L486RGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L486RGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L486RGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L486RGTX_MCU}
)
target_link_libraries(GENERIC_L486RGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L486VGTX
# -----------------------------------------------------------------------------

set(GENERIC_L486VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx//L475V(C-E-G)T_L476V(C-E-G)T_L486VGT")
set(GENERIC_L486VGTX_MAXSIZE 1048576)
set(GENERIC_L486VGTX_MAXDATASIZE 98304)
set(GENERIC_L486VGTX_MCU cortex-m4)
add_library(GENERIC_L486VGTX INTERFACE)
target_compile_options(GENERIC_L486VGTX INTERFACE
  "SHELL:-DSTM32L486xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L486VGTX_MCU}
)
target_compile_definitions(GENERIC_L486VGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L486VGTX"
	"BOARD_NAME=\"GENERIC_L486VGTX\""
	"BOARD_ID=GENERIC_L486VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L486VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L486VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L486VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L486VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L486VGTX_MCU}
)
target_link_libraries(GENERIC_L486VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L496ZETX
# -----------------------------------------------------------------------------

set(GENERIC_L496ZETX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4L496Z(E-G)T_L4A6ZGT")
set(GENERIC_L496ZETX_MAXSIZE 524288)
set(GENERIC_L496ZETX_MAXDATASIZE 327680)
set(GENERIC_L496ZETX_MCU cortex-m4)
add_library(GENERIC_L496ZETX INTERFACE)
target_compile_options(GENERIC_L496ZETX INTERFACE
  "SHELL:-DSTM32L496xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L496ZETX_MCU}
)
target_compile_definitions(GENERIC_L496ZETX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L496ZETX"
	"BOARD_NAME=\"GENERIC_L496ZETX\""
	"BOARD_ID=GENERIC_L496ZETX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L496ZETX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L496ZETX_VARIANT_PATH}
)

target_link_options(GENERIC_L496ZETX INTERFACE
  "LINKER:--default-script=${GENERIC_L496ZETX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L496ZETX_MCU}
)
target_link_libraries(GENERIC_L496ZETX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L496ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_L496ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496Z(E-G)T_L4A6ZGT")
set(GENERIC_L496ZGTX_MAXSIZE 1048576)
set(GENERIC_L496ZGTX_MAXDATASIZE 327680)
set(GENERIC_L496ZGTX_MCU cortex-m4)
add_library(GENERIC_L496ZGTX INTERFACE)
target_compile_options(GENERIC_L496ZGTX INTERFACE
  "SHELL:-DSTM32L496xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L496ZGTX_MCU}
)
target_compile_definitions(GENERIC_L496ZGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L496ZGTX"
	"BOARD_NAME=\"GENERIC_L496ZGTX\""
	"BOARD_ID=GENERIC_L496ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L496ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L496ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L496ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L496ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L496ZGTX_MCU}
)
target_link_libraries(GENERIC_L496ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L496ZGTXP
# -----------------------------------------------------------------------------

set(GENERIC_L496ZGTXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496ZGTxP_L4A6ZGTxP")
set(GENERIC_L496ZGTXP_MAXSIZE 1048576)
set(GENERIC_L496ZGTXP_MAXDATASIZE 327680)
set(GENERIC_L496ZGTXP_MCU cortex-m4)
add_library(GENERIC_L496ZGTXP INTERFACE)
target_compile_options(GENERIC_L496ZGTXP INTERFACE
  "SHELL:-DSTM32L496xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L496ZGTXP_MCU}
)
target_compile_definitions(GENERIC_L496ZGTXP INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L496ZGTXP"
	"BOARD_NAME=\"GENERIC_L496ZGTXP\""
	"BOARD_ID=GENERIC_L496ZGTXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L496ZGTXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L496ZGTXP_VARIANT_PATH}
)

target_link_options(GENERIC_L496ZGTXP INTERFACE
  "LINKER:--default-script=${GENERIC_L496ZGTXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L496ZGTXP_MCU}
)
target_link_libraries(GENERIC_L496ZGTXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4A6ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_L4A6ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496Z(E-G)T_L4A6ZGT")
set(GENERIC_L4A6ZGTX_MAXSIZE 1048576)
set(GENERIC_L4A6ZGTX_MAXDATASIZE 327680)
set(GENERIC_L4A6ZGTX_MCU cortex-m4)
add_library(GENERIC_L4A6ZGTX INTERFACE)
target_compile_options(GENERIC_L4A6ZGTX INTERFACE
  "SHELL:-DSTM32L4A6xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4A6ZGTX_MCU}
)
target_compile_definitions(GENERIC_L4A6ZGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4A6ZGTX"
	"BOARD_NAME=\"GENERIC_L4A6ZGTX\""
	"BOARD_ID=GENERIC_L4A6ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4A6ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4A6ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L4A6ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L4A6ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4A6ZGTX_MCU}
)
target_link_libraries(GENERIC_L4A6ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4A6ZGTXP
# -----------------------------------------------------------------------------

set(GENERIC_L4A6ZGTXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496ZGTxP_L4A6ZGTxP")
set(GENERIC_L4A6ZGTXP_MAXSIZE 1048576)
set(GENERIC_L4A6ZGTXP_MAXDATASIZE 327680)
set(GENERIC_L4A6ZGTXP_MCU cortex-m4)
add_library(GENERIC_L4A6ZGTXP INTERFACE)
target_compile_options(GENERIC_L4A6ZGTXP INTERFACE
  "SHELL:-DSTM32L4A6xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4A6ZGTXP_MCU}
)
target_compile_definitions(GENERIC_L4A6ZGTXP INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4A6ZGTXP"
	"BOARD_NAME=\"GENERIC_L4A6ZGTXP\""
	"BOARD_ID=GENERIC_L4A6ZGTXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4A6ZGTXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4A6ZGTXP_VARIANT_PATH}
)

target_link_options(GENERIC_L4A6ZGTXP INTERFACE
  "LINKER:--default-script=${GENERIC_L4A6ZGTXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4A6ZGTXP_MCU}
)
target_link_libraries(GENERIC_L4A6ZGTXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5VGTX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5VGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(GENERIC_L4R5VGTX_MAXSIZE 1048576)
set(GENERIC_L4R5VGTX_MAXDATASIZE 655360)
set(GENERIC_L4R5VGTX_MCU cortex-m4)
add_library(GENERIC_L4R5VGTX INTERFACE)
target_compile_options(GENERIC_L4R5VGTX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5VGTX_MCU}
)
target_compile_definitions(GENERIC_L4R5VGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5VGTX"
	"BOARD_NAME=\"GENERIC_L4R5VGTX\""
	"BOARD_ID=GENERIC_L4R5VGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5VGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5VGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5VGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5VGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5VGTX_MCU}
)
target_link_libraries(GENERIC_L4R5VGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5VITX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(GENERIC_L4R5VITX_MAXSIZE 2097152)
set(GENERIC_L4R5VITX_MAXDATASIZE 655360)
set(GENERIC_L4R5VITX_MCU cortex-m4)
add_library(GENERIC_L4R5VITX INTERFACE)
target_compile_options(GENERIC_L4R5VITX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5VITX_MCU}
)
target_compile_definitions(GENERIC_L4R5VITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5VITX"
	"BOARD_NAME=\"GENERIC_L4R5VITX\""
	"BOARD_ID=GENERIC_L4R5VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5VITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5VITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5VITX_MCU}
)
target_link_libraries(GENERIC_L4R5VITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5ZGTX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5ZGTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(GENERIC_L4R5ZGTX_MAXSIZE 1048576)
set(GENERIC_L4R5ZGTX_MAXDATASIZE 655360)
set(GENERIC_L4R5ZGTX_MCU cortex-m4)
add_library(GENERIC_L4R5ZGTX INTERFACE)
target_compile_options(GENERIC_L4R5ZGTX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5ZGTX_MCU}
)
target_compile_definitions(GENERIC_L4R5ZGTX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5ZGTX"
	"BOARD_NAME=\"GENERIC_L4R5ZGTX\""
	"BOARD_ID=GENERIC_L4R5ZGTX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5ZGTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5ZGTX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5ZGTX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5ZGTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5ZGTX_MCU}
)
target_link_libraries(GENERIC_L4R5ZGTX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4R5ZGYX_MAXSIZE 1048576)
set(GENERIC_L4R5ZGYX_MAXDATASIZE 655360)
set(GENERIC_L4R5ZGYX_MCU cortex-m4)
add_library(GENERIC_L4R5ZGYX INTERFACE)
target_compile_options(GENERIC_L4R5ZGYX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5ZGYX_MCU}
)
target_compile_definitions(GENERIC_L4R5ZGYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5ZGYX"
	"BOARD_NAME=\"GENERIC_L4R5ZGYX\""
	"BOARD_ID=GENERIC_L4R5ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5ZGYX_MCU}
)
target_link_libraries(GENERIC_L4R5ZGYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5ZITX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(GENERIC_L4R5ZITX_MAXSIZE 2097152)
set(GENERIC_L4R5ZITX_MAXDATASIZE 655360)
set(GENERIC_L4R5ZITX_MCU cortex-m4)
add_library(GENERIC_L4R5ZITX INTERFACE)
target_compile_options(GENERIC_L4R5ZITX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5ZITX_MCU}
)
target_compile_definitions(GENERIC_L4R5ZITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5ZITX"
	"BOARD_NAME=\"GENERIC_L4R5ZITX\""
	"BOARD_ID=GENERIC_L4R5ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5ZITX_MCU}
)
target_link_libraries(GENERIC_L4R5ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5ZITXP
# -----------------------------------------------------------------------------

set(GENERIC_L4R5ZITXP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5ZITxP")
set(GENERIC_L4R5ZITXP_MAXSIZE 2097152)
set(GENERIC_L4R5ZITXP_MAXDATASIZE 655360)
set(GENERIC_L4R5ZITXP_MCU cortex-m4)
add_library(GENERIC_L4R5ZITXP INTERFACE)
target_compile_options(GENERIC_L4R5ZITXP INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5ZITXP_MCU}
)
target_compile_definitions(GENERIC_L4R5ZITXP INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5ZITXP"
	"BOARD_NAME=\"GENERIC_L4R5ZITXP\""
	"BOARD_ID=GENERIC_L4R5ZITXP"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5ZITXP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5ZITXP_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5ZITXP INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5ZITXP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5ZITXP_MCU}
)
target_link_libraries(GENERIC_L4R5ZITXP INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R5ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_L4R5ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4R5ZIYX_MAXSIZE 2097152)
set(GENERIC_L4R5ZIYX_MAXDATASIZE 655360)
set(GENERIC_L4R5ZIYX_MCU cortex-m4)
add_library(GENERIC_L4R5ZIYX INTERFACE)
target_compile_options(GENERIC_L4R5ZIYX INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R5ZIYX_MCU}
)
target_compile_definitions(GENERIC_L4R5ZIYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R5ZIYX"
	"BOARD_NAME=\"GENERIC_L4R5ZIYX\""
	"BOARD_ID=GENERIC_L4R5ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R5ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R5ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R5ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R5ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R5ZIYX_MCU}
)
target_link_libraries(GENERIC_L4R5ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R7VITX
# -----------------------------------------------------------------------------

set(GENERIC_L4R7VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(GENERIC_L4R7VITX_MAXSIZE 2097152)
set(GENERIC_L4R7VITX_MAXDATASIZE 655360)
set(GENERIC_L4R7VITX_MCU cortex-m4)
add_library(GENERIC_L4R7VITX INTERFACE)
target_compile_options(GENERIC_L4R7VITX INTERFACE
  "SHELL:-DSTM32L4R7xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R7VITX_MCU}
)
target_compile_definitions(GENERIC_L4R7VITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R7VITX"
	"BOARD_NAME=\"GENERIC_L4R7VITX\""
	"BOARD_ID=GENERIC_L4R7VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R7VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R7VITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R7VITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R7VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R7VITX_MCU}
)
target_link_libraries(GENERIC_L4R7VITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R7ZITX
# -----------------------------------------------------------------------------

set(GENERIC_L4R7ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(GENERIC_L4R7ZITX_MAXSIZE 2097152)
set(GENERIC_L4R7ZITX_MAXDATASIZE 655360)
set(GENERIC_L4R7ZITX_MCU cortex-m4)
add_library(GENERIC_L4R7ZITX INTERFACE)
target_compile_options(GENERIC_L4R7ZITX INTERFACE
  "SHELL:-DSTM32L4R7xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R7ZITX_MCU}
)
target_compile_definitions(GENERIC_L4R7ZITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R7ZITX"
	"BOARD_NAME=\"GENERIC_L4R7ZITX\""
	"BOARD_ID=GENERIC_L4R7ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R7ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R7ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R7ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R7ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R7ZITX_MCU}
)
target_link_libraries(GENERIC_L4R7ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R9ZGJX
# -----------------------------------------------------------------------------

set(GENERIC_L4R9ZGJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R9Z(G-I)J_L4S9ZIJ")
set(GENERIC_L4R9ZGJX_MAXSIZE 1048576)
set(GENERIC_L4R9ZGJX_MAXDATASIZE 655360)
set(GENERIC_L4R9ZGJX_MCU cortex-m4)
add_library(GENERIC_L4R9ZGJX INTERFACE)
target_compile_options(GENERIC_L4R9ZGJX INTERFACE
  "SHELL:-DSTM32L4R9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R9ZGJX_MCU}
)
target_compile_definitions(GENERIC_L4R9ZGJX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R9ZGJX"
	"BOARD_NAME=\"GENERIC_L4R9ZGJX\""
	"BOARD_ID=GENERIC_L4R9ZGJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R9ZGJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R9ZGJX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R9ZGJX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R9ZGJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R9ZGJX_MCU}
)
target_link_libraries(GENERIC_L4R9ZGJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R9ZGYX
# -----------------------------------------------------------------------------

set(GENERIC_L4R9ZGYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4R9ZGYX_MAXSIZE 1048576)
set(GENERIC_L4R9ZGYX_MAXDATASIZE 655360)
set(GENERIC_L4R9ZGYX_MCU cortex-m4)
add_library(GENERIC_L4R9ZGYX INTERFACE)
target_compile_options(GENERIC_L4R9ZGYX INTERFACE
  "SHELL:-DSTM32L4R9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R9ZGYX_MCU}
)
target_compile_definitions(GENERIC_L4R9ZGYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R9ZGYX"
	"BOARD_NAME=\"GENERIC_L4R9ZGYX\""
	"BOARD_ID=GENERIC_L4R9ZGYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R9ZGYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R9ZGYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R9ZGYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R9ZGYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R9ZGYX_MCU}
)
target_link_libraries(GENERIC_L4R9ZGYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R9ZIJX
# -----------------------------------------------------------------------------

set(GENERIC_L4R9ZIJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R9Z(G-I)J_L4S9ZIJ")
set(GENERIC_L4R9ZIJX_MAXSIZE 2097152)
set(GENERIC_L4R9ZIJX_MAXDATASIZE 655360)
set(GENERIC_L4R9ZIJX_MCU cortex-m4)
add_library(GENERIC_L4R9ZIJX INTERFACE)
target_compile_options(GENERIC_L4R9ZIJX INTERFACE
  "SHELL:-DSTM32L4R9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R9ZIJX_MCU}
)
target_compile_definitions(GENERIC_L4R9ZIJX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R9ZIJX"
	"BOARD_NAME=\"GENERIC_L4R9ZIJX\""
	"BOARD_ID=GENERIC_L4R9ZIJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R9ZIJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R9ZIJX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R9ZIJX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R9ZIJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R9ZIJX_MCU}
)
target_link_libraries(GENERIC_L4R9ZIJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4R9ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_L4R9ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4R9ZIYX_MAXSIZE 2097152)
set(GENERIC_L4R9ZIYX_MAXDATASIZE 655360)
set(GENERIC_L4R9ZIYX_MCU cortex-m4)
add_library(GENERIC_L4R9ZIYX INTERFACE)
target_compile_options(GENERIC_L4R9ZIYX INTERFACE
  "SHELL:-DSTM32L4R9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4R9ZIYX_MCU}
)
target_compile_definitions(GENERIC_L4R9ZIYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4R9ZIYX"
	"BOARD_NAME=\"GENERIC_L4R9ZIYX\""
	"BOARD_ID=GENERIC_L4R9ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4R9ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4R9ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4R9ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4R9ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4R9ZIYX_MCU}
)
target_link_libraries(GENERIC_L4R9ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S5VITX
# -----------------------------------------------------------------------------

set(GENERIC_L4S5VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(GENERIC_L4S5VITX_MAXSIZE 2097152)
set(GENERIC_L4S5VITX_MAXDATASIZE 655360)
set(GENERIC_L4S5VITX_MCU cortex-m4)
add_library(GENERIC_L4S5VITX INTERFACE)
target_compile_options(GENERIC_L4S5VITX INTERFACE
  "SHELL:-DSTM32L4S5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S5VITX_MCU}
)
target_compile_definitions(GENERIC_L4S5VITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S5VITX"
	"BOARD_NAME=\"GENERIC_L4S5VITX\""
	"BOARD_ID=GENERIC_L4S5VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S5VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S5VITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S5VITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S5VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S5VITX_MCU}
)
target_link_libraries(GENERIC_L4S5VITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S5ZITX
# -----------------------------------------------------------------------------

set(GENERIC_L4S5ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(GENERIC_L4S5ZITX_MAXSIZE 2097152)
set(GENERIC_L4S5ZITX_MAXDATASIZE 655360)
set(GENERIC_L4S5ZITX_MCU cortex-m4)
add_library(GENERIC_L4S5ZITX INTERFACE)
target_compile_options(GENERIC_L4S5ZITX INTERFACE
  "SHELL:-DSTM32L4S5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S5ZITX_MCU}
)
target_compile_definitions(GENERIC_L4S5ZITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S5ZITX"
	"BOARD_NAME=\"GENERIC_L4S5ZITX\""
	"BOARD_ID=GENERIC_L4S5ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S5ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S5ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S5ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S5ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S5ZITX_MCU}
)
target_link_libraries(GENERIC_L4S5ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S5ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_L4S5ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4S5ZIYX_MAXSIZE 2097152)
set(GENERIC_L4S5ZIYX_MAXDATASIZE 655360)
set(GENERIC_L4S5ZIYX_MCU cortex-m4)
add_library(GENERIC_L4S5ZIYX INTERFACE)
target_compile_options(GENERIC_L4S5ZIYX INTERFACE
  "SHELL:-DSTM32L4S5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S5ZIYX_MCU}
)
target_compile_definitions(GENERIC_L4S5ZIYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S5ZIYX"
	"BOARD_NAME=\"GENERIC_L4S5ZIYX\""
	"BOARD_ID=GENERIC_L4S5ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S5ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S5ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S5ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S5ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S5ZIYX_MCU}
)
target_link_libraries(GENERIC_L4S5ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S7VITX
# -----------------------------------------------------------------------------

set(GENERIC_L4S7VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5V(G-I)T_L4R7VIT_L4S5VIT_L4S7VIT")
set(GENERIC_L4S7VITX_MAXSIZE 2097152)
set(GENERIC_L4S7VITX_MAXDATASIZE 655360)
set(GENERIC_L4S7VITX_MCU cortex-m4)
add_library(GENERIC_L4S7VITX INTERFACE)
target_compile_options(GENERIC_L4S7VITX INTERFACE
  "SHELL:-DSTM32L4S7xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S7VITX_MCU}
)
target_compile_definitions(GENERIC_L4S7VITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S7VITX"
	"BOARD_NAME=\"GENERIC_L4S7VITX\""
	"BOARD_ID=GENERIC_L4S7VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S7VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S7VITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S7VITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S7VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S7VITX_MCU}
)
target_link_libraries(GENERIC_L4S7VITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S7ZITX
# -----------------------------------------------------------------------------

set(GENERIC_L4S7ZITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(GENERIC_L4S7ZITX_MAXSIZE 2097152)
set(GENERIC_L4S7ZITX_MAXDATASIZE 655360)
set(GENERIC_L4S7ZITX_MCU cortex-m4)
add_library(GENERIC_L4S7ZITX INTERFACE)
target_compile_options(GENERIC_L4S7ZITX INTERFACE
  "SHELL:-DSTM32L4S7xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S7ZITX_MCU}
)
target_compile_definitions(GENERIC_L4S7ZITX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S7ZITX"
	"BOARD_NAME=\"GENERIC_L4S7ZITX\""
	"BOARD_ID=GENERIC_L4S7ZITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S7ZITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S7ZITX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S7ZITX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S7ZITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S7ZITX_MCU}
)
target_link_libraries(GENERIC_L4S7ZITX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S9ZIJX
# -----------------------------------------------------------------------------

set(GENERIC_L4S9ZIJX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R9Z(G-I)J_L4S9ZIJ")
set(GENERIC_L4S9ZIJX_MAXSIZE 2097152)
set(GENERIC_L4S9ZIJX_MAXDATASIZE 655360)
set(GENERIC_L4S9ZIJX_MCU cortex-m4)
add_library(GENERIC_L4S9ZIJX INTERFACE)
target_compile_options(GENERIC_L4S9ZIJX INTERFACE
  "SHELL:-DSTM32L4S9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S9ZIJX_MCU}
)
target_compile_definitions(GENERIC_L4S9ZIJX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S9ZIJX"
	"BOARD_NAME=\"GENERIC_L4S9ZIJX\""
	"BOARD_ID=GENERIC_L4S9ZIJX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S9ZIJX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S9ZIJX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S9ZIJX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S9ZIJX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S9ZIJX_MCU}
)
target_link_libraries(GENERIC_L4S9ZIJX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L4S9ZIYX
# -----------------------------------------------------------------------------

set(GENERIC_L4S9ZIYX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(GENERIC_L4S9ZIYX_MAXSIZE 2097152)
set(GENERIC_L4S9ZIYX_MAXDATASIZE 655360)
set(GENERIC_L4S9ZIYX_MCU cortex-m4)
add_library(GENERIC_L4S9ZIYX INTERFACE)
target_compile_options(GENERIC_L4S9ZIYX INTERFACE
  "SHELL:-DSTM32L4S9xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L4S9ZIYX_MCU}
)
target_compile_definitions(GENERIC_L4S9ZIYX INTERFACE
  "STM32L4xx"
	"ARDUINO_GENERIC_L4S9ZIYX"
	"BOARD_NAME=\"GENERIC_L4S9ZIYX\""
	"BOARD_ID=GENERIC_L4S9ZIYX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L4S9ZIYX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${GENERIC_L4S9ZIYX_VARIANT_PATH}
)

target_link_options(GENERIC_L4S9ZIYX INTERFACE
  "LINKER:--default-script=${GENERIC_L4S9ZIYX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L4S9ZIYX_MCU}
)
target_link_libraries(GENERIC_L4S9ZIYX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_L552ZCTXQ
# -----------------------------------------------------------------------------

set(GENERIC_L552ZCTXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L5xx/L552Z(C-E)TxQ_L562ZETxQ")
set(GENERIC_L552ZCTXQ_MAXSIZE 262144)
set(GENERIC_L552ZCTXQ_MAXDATASIZE 196608)
set(GENERIC_L552ZCTXQ_MCU cortex-m33)
add_library(GENERIC_L552ZCTXQ INTERFACE)
target_compile_options(GENERIC_L552ZCTXQ INTERFACE
  "SHELL:-DSTM32L552xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L552ZCTXQ_MCU}
)
target_compile_definitions(GENERIC_L552ZCTXQ INTERFACE
  "STM32L5xx"
	"ARDUINO_GENERIC_L552ZCTXQ"
	"BOARD_NAME=\"GENERIC_L552ZCTXQ\""
	"BOARD_ID=GENERIC_L552ZCTXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L552ZCTXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Source/Templates/gcc/
  ${GENERIC_L552ZCTXQ_VARIANT_PATH}
)

target_link_options(GENERIC_L552ZCTXQ INTERFACE
  "LINKER:--default-script=${GENERIC_L552ZCTXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L552ZCTXQ_MCU}
)
target_link_libraries(GENERIC_L552ZCTXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_L552ZETXQ
# -----------------------------------------------------------------------------

set(GENERIC_L552ZETXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L5xx/L552Z(C-E)TxQ_L562ZETxQ")
set(GENERIC_L552ZETXQ_MAXSIZE 524288)
set(GENERIC_L552ZETXQ_MAXDATASIZE 196608)
set(GENERIC_L552ZETXQ_MCU cortex-m33)
add_library(GENERIC_L552ZETXQ INTERFACE)
target_compile_options(GENERIC_L552ZETXQ INTERFACE
  "SHELL:-DSTM32L552xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L552ZETXQ_MCU}
)
target_compile_definitions(GENERIC_L552ZETXQ INTERFACE
  "STM32L5xx"
	"ARDUINO_GENERIC_L552ZETXQ"
	"BOARD_NAME=\"GENERIC_L552ZETXQ\""
	"BOARD_ID=GENERIC_L552ZETXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L552ZETXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Source/Templates/gcc/
  ${GENERIC_L552ZETXQ_VARIANT_PATH}
)

target_link_options(GENERIC_L552ZETXQ INTERFACE
  "LINKER:--default-script=${GENERIC_L552ZETXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L552ZETXQ_MCU}
)
target_link_libraries(GENERIC_L552ZETXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_L562ZETXQ
# -----------------------------------------------------------------------------

set(GENERIC_L562ZETXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L5xx/L552Z(C-E)TxQ_L562ZETxQ")
set(GENERIC_L562ZETXQ_MAXSIZE 524288)
set(GENERIC_L562ZETXQ_MAXDATASIZE 196608)
set(GENERIC_L562ZETXQ_MCU cortex-m33)
add_library(GENERIC_L562ZETXQ INTERFACE)
target_compile_options(GENERIC_L562ZETXQ INTERFACE
  "SHELL:-DSTM32L562xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_L562ZETXQ_MCU}
)
target_compile_definitions(GENERIC_L562ZETXQ INTERFACE
  "STM32L5xx"
	"ARDUINO_GENERIC_L562ZETXQ"
	"BOARD_NAME=\"GENERIC_L562ZETXQ\""
	"BOARD_ID=GENERIC_L562ZETXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_L562ZETXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Source/Templates/gcc/
  ${GENERIC_L562ZETXQ_VARIANT_PATH}
)

target_link_options(GENERIC_L562ZETXQ INTERFACE
  "LINKER:--default-script=${GENERIC_L562ZETXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_L562ZETXQ_MCU}
)
target_link_libraries(GENERIC_L562ZETXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_NODE_SE_TTI
# -----------------------------------------------------------------------------

set(GENERIC_NODE_SE_TTI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_NODE_SE_TTI_MAXSIZE 262144)
set(GENERIC_NODE_SE_TTI_MAXDATASIZE 65536)
set(GENERIC_NODE_SE_TTI_MCU cortex-m4)
add_library(GENERIC_NODE_SE_TTI INTERFACE)
target_compile_options(GENERIC_NODE_SE_TTI INTERFACE
  "SHELL:-DSTM32WL55xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_NODE_SE_TTI_MCU}
)
target_compile_definitions(GENERIC_NODE_SE_TTI INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_NODE_SE_TTI"
	"BOARD_NAME=\"GENERIC_NODE_SE_TTI\""
	"BOARD_ID=GENERIC_NODE_SE_TTI"
	"VARIANT_H=\"variant_GENERIC_NODE_SE_TTI.h\""
)
target_include_directories(GENERIC_NODE_SE_TTI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_NODE_SE_TTI_VARIANT_PATH}
)

target_link_options(GENERIC_NODE_SE_TTI INTERFACE
  "LINKER:--default-script=${GENERIC_NODE_SE_TTI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_NODE_SE_TTI_MCU}
)
target_link_libraries(GENERIC_NODE_SE_TTI INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_U575AGIXQ
# -----------------------------------------------------------------------------

set(GENERIC_U575AGIXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ")
set(GENERIC_U575AGIXQ_MAXSIZE 1048576)
set(GENERIC_U575AGIXQ_MAXDATASIZE 262144)
set(GENERIC_U575AGIXQ_MCU cortex-m33)
add_library(GENERIC_U575AGIXQ INTERFACE)
target_compile_options(GENERIC_U575AGIXQ INTERFACE
  "SHELL:-DSTM32U575xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U575AGIXQ_MCU}
)
target_compile_definitions(GENERIC_U575AGIXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U575AGIXQ"
	"BOARD_NAME=\"GENERIC_U575AGIXQ\""
	"BOARD_ID=GENERIC_U575AGIXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U575AGIXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U575AGIXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U575AGIXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U575AGIXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U575AGIXQ_MCU}
)
target_link_libraries(GENERIC_U575AGIXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_U575AIIXQ
# -----------------------------------------------------------------------------

set(GENERIC_U575AIIXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ")
set(GENERIC_U575AIIXQ_MAXSIZE 2097152)
set(GENERIC_U575AIIXQ_MAXDATASIZE 262144)
set(GENERIC_U575AIIXQ_MCU cortex-m33)
add_library(GENERIC_U575AIIXQ INTERFACE)
target_compile_options(GENERIC_U575AIIXQ INTERFACE
  "SHELL:-DSTM32U575xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U575AIIXQ_MCU}
)
target_compile_definitions(GENERIC_U575AIIXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U575AIIXQ"
	"BOARD_NAME=\"GENERIC_U575AIIXQ\""
	"BOARD_ID=GENERIC_U575AIIXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U575AIIXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U575AIIXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U575AIIXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U575AIIXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U575AIIXQ_MCU}
)
target_link_libraries(GENERIC_U575AIIXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_U575ZGTXQ
# -----------------------------------------------------------------------------

set(GENERIC_U575ZGTXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575Z(G-I)TxQ_U585ZETxQ")
set(GENERIC_U575ZGTXQ_MAXSIZE 1048576)
set(GENERIC_U575ZGTXQ_MAXDATASIZE 262144)
set(GENERIC_U575ZGTXQ_MCU cortex-m33)
add_library(GENERIC_U575ZGTXQ INTERFACE)
target_compile_options(GENERIC_U575ZGTXQ INTERFACE
  "SHELL:-DSTM32U575xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U575ZGTXQ_MCU}
)
target_compile_definitions(GENERIC_U575ZGTXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U575ZGTXQ"
	"BOARD_NAME=\"GENERIC_U575ZGTXQ\""
	"BOARD_ID=GENERIC_U575ZGTXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U575ZGTXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U575ZGTXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U575ZGTXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U575ZGTXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U575ZGTXQ_MCU}
)
target_link_libraries(GENERIC_U575ZGTXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_U575ZITXQ
# -----------------------------------------------------------------------------

set(GENERIC_U575ZITXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575Z(G-I)TxQ_U585ZETxQ")
set(GENERIC_U575ZITXQ_MAXSIZE 2097152)
set(GENERIC_U575ZITXQ_MAXDATASIZE 262144)
set(GENERIC_U575ZITXQ_MCU cortex-m33)
add_library(GENERIC_U575ZITXQ INTERFACE)
target_compile_options(GENERIC_U575ZITXQ INTERFACE
  "SHELL:-DSTM32U575xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U575ZITXQ_MCU}
)
target_compile_definitions(GENERIC_U575ZITXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U575ZITXQ"
	"BOARD_NAME=\"GENERIC_U575ZITXQ\""
	"BOARD_ID=GENERIC_U575ZITXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U575ZITXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U575ZITXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U575ZITXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U575ZITXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U575ZITXQ_MCU}
)
target_link_libraries(GENERIC_U575ZITXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_U585AIIXQ
# -----------------------------------------------------------------------------

set(GENERIC_U585AIIXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ")
set(GENERIC_U585AIIXQ_MAXSIZE 2097152)
set(GENERIC_U585AIIXQ_MAXDATASIZE 262144)
set(GENERIC_U585AIIXQ_MCU cortex-m33)
add_library(GENERIC_U585AIIXQ INTERFACE)
target_compile_options(GENERIC_U585AIIXQ INTERFACE
  "SHELL:-DSTM32U585xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U585AIIXQ_MCU}
)
target_compile_definitions(GENERIC_U585AIIXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U585AIIXQ"
	"BOARD_NAME=\"GENERIC_U585AIIXQ\""
	"BOARD_ID=GENERIC_U585AIIXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U585AIIXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U585AIIXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U585AIIXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U585AIIXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U585AIIXQ_MCU}
)
target_link_libraries(GENERIC_U585AIIXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_U585ZETXQ
# -----------------------------------------------------------------------------

set(GENERIC_U585ZETXQ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575Z(G-I)TxQ_U585ZETxQ")
set(GENERIC_U585ZETXQ_MAXSIZE 524288)
set(GENERIC_U585ZETXQ_MAXDATASIZE 262144)
set(GENERIC_U585ZETXQ_MCU cortex-m33)
add_library(GENERIC_U585ZETXQ INTERFACE)
target_compile_options(GENERIC_U585ZETXQ INTERFACE
  "SHELL:-DSTM32U585xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_U585ZETXQ_MCU}
)
target_compile_definitions(GENERIC_U585ZETXQ INTERFACE
  "STM32U5xx"
	"ARDUINO_GENERIC_U585ZETXQ"
	"BOARD_NAME=\"GENERIC_U585ZETXQ\""
	"BOARD_ID=GENERIC_U585ZETXQ"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_U585ZETXQ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${GENERIC_U585ZETXQ_VARIANT_PATH}
)

target_link_options(GENERIC_U585ZETXQ INTERFACE
  "LINKER:--default-script=${GENERIC_U585ZETXQ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_U585ZETXQ_MCU}
)
target_link_libraries(GENERIC_U585ZETXQ INTERFACE
  arm_ARMv8MMLlfsp_math
)

# GENERIC_WB55CCUX
# -----------------------------------------------------------------------------

set(GENERIC_WB55CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55C(C-E-G)U")
set(GENERIC_WB55CCUX_MAXSIZE 131072)
set(GENERIC_WB55CCUX_MAXDATASIZE 65536)
set(GENERIC_WB55CCUX_MCU cortex-m4)
add_library(GENERIC_WB55CCUX INTERFACE)
target_compile_options(GENERIC_WB55CCUX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55CCUX_MCU}
)
target_compile_definitions(GENERIC_WB55CCUX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55CCUX"
	"BOARD_NAME=\"GENERIC_WB55CCUX\""
	"BOARD_ID=GENERIC_WB55CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55CCUX_MCU}
)
target_link_libraries(GENERIC_WB55CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB55CEUX
# -----------------------------------------------------------------------------

set(GENERIC_WB55CEUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55C(C-E-G)U")
set(GENERIC_WB55CEUX_MAXSIZE 262144)
set(GENERIC_WB55CEUX_MAXDATASIZE 196608)
set(GENERIC_WB55CEUX_MCU cortex-m4)
add_library(GENERIC_WB55CEUX INTERFACE)
target_compile_options(GENERIC_WB55CEUX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55CEUX_MCU}
)
target_compile_definitions(GENERIC_WB55CEUX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55CEUX"
	"BOARD_NAME=\"GENERIC_WB55CEUX\""
	"BOARD_ID=GENERIC_WB55CEUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55CEUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55CEUX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55CEUX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55CEUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55CEUX_MCU}
)
target_link_libraries(GENERIC_WB55CEUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB55CGUX
# -----------------------------------------------------------------------------

set(GENERIC_WB55CGUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55C(C-E-G)U")
set(GENERIC_WB55CGUX_MAXSIZE 524288)
set(GENERIC_WB55CGUX_MAXDATASIZE 196608)
set(GENERIC_WB55CGUX_MCU cortex-m4)
add_library(GENERIC_WB55CGUX INTERFACE)
target_compile_options(GENERIC_WB55CGUX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55CGUX_MCU}
)
target_compile_definitions(GENERIC_WB55CGUX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55CGUX"
	"BOARD_NAME=\"GENERIC_WB55CGUX\""
	"BOARD_ID=GENERIC_WB55CGUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55CGUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55CGUX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55CGUX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55CGUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55CGUX_MCU}
)
target_link_libraries(GENERIC_WB55CGUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB55RCVX
# -----------------------------------------------------------------------------

set(GENERIC_WB55RCVX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55R(C-E-G)V")
set(GENERIC_WB55RCVX_MAXSIZE 131072)
set(GENERIC_WB55RCVX_MAXDATASIZE 65536)
set(GENERIC_WB55RCVX_MCU cortex-m4)
add_library(GENERIC_WB55RCVX INTERFACE)
target_compile_options(GENERIC_WB55RCVX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55RCVX_MCU}
)
target_compile_definitions(GENERIC_WB55RCVX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55RCVX"
	"BOARD_NAME=\"GENERIC_WB55RCVX\""
	"BOARD_ID=GENERIC_WB55RCVX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55RCVX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55RCVX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55RCVX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55RCVX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55RCVX_MCU}
)
target_link_libraries(GENERIC_WB55RCVX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB55REVX
# -----------------------------------------------------------------------------

set(GENERIC_WB55REVX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55R(C-E-G)V")
set(GENERIC_WB55REVX_MAXSIZE 262144)
set(GENERIC_WB55REVX_MAXDATASIZE 196608)
set(GENERIC_WB55REVX_MCU cortex-m4)
add_library(GENERIC_WB55REVX INTERFACE)
target_compile_options(GENERIC_WB55REVX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55REVX_MCU}
)
target_compile_definitions(GENERIC_WB55REVX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55REVX"
	"BOARD_NAME=\"GENERIC_WB55REVX\""
	"BOARD_ID=GENERIC_WB55REVX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55REVX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55REVX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55REVX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55REVX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55REVX_MCU}
)
target_link_libraries(GENERIC_WB55REVX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB55RGVX
# -----------------------------------------------------------------------------

set(GENERIC_WB55RGVX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55R(C-E-G)V")
set(GENERIC_WB55RGVX_MAXSIZE 524288)
set(GENERIC_WB55RGVX_MAXDATASIZE 196608)
set(GENERIC_WB55RGVX_MCU cortex-m4)
add_library(GENERIC_WB55RGVX INTERFACE)
target_compile_options(GENERIC_WB55RGVX INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB55RGVX_MCU}
)
target_compile_definitions(GENERIC_WB55RGVX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB55RGVX"
	"BOARD_NAME=\"GENERIC_WB55RGVX\""
	"BOARD_ID=GENERIC_WB55RGVX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB55RGVX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB55RGVX_VARIANT_PATH}
)

target_link_options(GENERIC_WB55RGVX INTERFACE
  "LINKER:--default-script=${GENERIC_WB55RGVX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB55RGVX_MCU}
)
target_link_libraries(GENERIC_WB55RGVX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WB5MMGHX
# -----------------------------------------------------------------------------

set(GENERIC_WB5MMGHX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB5MMGH")
set(GENERIC_WB5MMGHX_MAXSIZE 827392)
set(GENERIC_WB5MMGHX_MAXDATASIZE 196608)
set(GENERIC_WB5MMGHX_MCU cortex-m4)
add_library(GENERIC_WB5MMGHX INTERFACE)
target_compile_options(GENERIC_WB5MMGHX INTERFACE
  "SHELL:-DSTM32WB5Mxx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${GENERIC_WB5MMGHX_MCU}
)
target_compile_definitions(GENERIC_WB5MMGHX INTERFACE
  "STM32WBxx"
	"ARDUINO_GENERIC_WB5MMGHX"
	"BOARD_NAME=\"GENERIC_WB5MMGHX\""
	"BOARD_ID=GENERIC_WB5MMGHX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WB5MMGHX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${GENERIC_WB5MMGHX_VARIANT_PATH}
)

target_link_options(GENERIC_WB5MMGHX INTERFACE
  "LINKER:--default-script=${GENERIC_WB5MMGHX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=827392"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_WB5MMGHX_MCU}
)
target_link_libraries(GENERIC_WB5MMGHX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WL54CCUX
# -----------------------------------------------------------------------------

set(GENERIC_WL54CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WL54CCUX_MAXSIZE 262144)
set(GENERIC_WL54CCUX_MAXDATASIZE 65536)
set(GENERIC_WL54CCUX_MCU cortex-m4)
add_library(GENERIC_WL54CCUX INTERFACE)
target_compile_options(GENERIC_WL54CCUX INTERFACE
  "SHELL:-DSTM32WL54xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WL54CCUX_MCU}
)
target_compile_definitions(GENERIC_WL54CCUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WL54CCUX"
	"BOARD_NAME=\"GENERIC_WL54CCUX\""
	"BOARD_ID=GENERIC_WL54CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WL54CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WL54CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_WL54CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_WL54CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WL54CCUX_MCU}
)
target_link_libraries(GENERIC_WL54CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WL54JCIX
# -----------------------------------------------------------------------------

set(GENERIC_WL54JCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WL54JCIX_MAXSIZE 262144)
set(GENERIC_WL54JCIX_MAXDATASIZE 65536)
set(GENERIC_WL54JCIX_MCU cortex-m4)
add_library(GENERIC_WL54JCIX INTERFACE)
target_compile_options(GENERIC_WL54JCIX INTERFACE
  "SHELL:-DSTM32WL54xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WL54JCIX_MCU}
)
target_compile_definitions(GENERIC_WL54JCIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WL54JCIX"
	"BOARD_NAME=\"GENERIC_WL54JCIX\""
	"BOARD_ID=GENERIC_WL54JCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WL54JCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WL54JCIX_VARIANT_PATH}
)

target_link_options(GENERIC_WL54JCIX INTERFACE
  "LINKER:--default-script=${GENERIC_WL54JCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WL54JCIX_MCU}
)
target_link_libraries(GENERIC_WL54JCIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WL55CCUX
# -----------------------------------------------------------------------------

set(GENERIC_WL55CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WL55CCUX_MAXSIZE 262144)
set(GENERIC_WL55CCUX_MAXDATASIZE 65536)
set(GENERIC_WL55CCUX_MCU cortex-m4)
add_library(GENERIC_WL55CCUX INTERFACE)
target_compile_options(GENERIC_WL55CCUX INTERFACE
  "SHELL:-DSTM32WL55xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WL55CCUX_MCU}
)
target_compile_definitions(GENERIC_WL55CCUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WL55CCUX"
	"BOARD_NAME=\"GENERIC_WL55CCUX\""
	"BOARD_ID=GENERIC_WL55CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WL55CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WL55CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_WL55CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_WL55CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WL55CCUX_MCU}
)
target_link_libraries(GENERIC_WL55CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WL55JCIX
# -----------------------------------------------------------------------------

set(GENERIC_WL55JCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WL55JCIX_MAXSIZE 262144)
set(GENERIC_WL55JCIX_MAXDATASIZE 65536)
set(GENERIC_WL55JCIX_MCU cortex-m4)
add_library(GENERIC_WL55JCIX INTERFACE)
target_compile_options(GENERIC_WL55JCIX INTERFACE
  "SHELL:-DSTM32WL55xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WL55JCIX_MCU}
)
target_compile_definitions(GENERIC_WL55JCIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WL55JCIX"
	"BOARD_NAME=\"GENERIC_WL55JCIX\""
	"BOARD_ID=GENERIC_WL55JCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WL55JCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WL55JCIX_VARIANT_PATH}
)

target_link_options(GENERIC_WL55JCIX INTERFACE
  "LINKER:--default-script=${GENERIC_WL55JCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WL55JCIX_MCU}
)
target_link_libraries(GENERIC_WL55JCIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4C8UX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE4C8UX_MAXSIZE 65536)
set(GENERIC_WLE4C8UX_MAXDATASIZE 20480)
set(GENERIC_WLE4C8UX_MCU cortex-m4)
add_library(GENERIC_WLE4C8UX INTERFACE)
target_compile_options(GENERIC_WLE4C8UX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4C8UX_MCU}
)
target_compile_definitions(GENERIC_WLE4C8UX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4C8UX"
	"BOARD_NAME=\"GENERIC_WLE4C8UX\""
	"BOARD_ID=GENERIC_WLE4C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_WLE4C8UX_MCU}
)
target_link_libraries(GENERIC_WLE4C8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4CBUX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE4CBUX_MAXSIZE 131072)
set(GENERIC_WLE4CBUX_MAXDATASIZE 49152)
set(GENERIC_WLE4CBUX_MCU cortex-m4)
add_library(GENERIC_WLE4CBUX INTERFACE)
target_compile_options(GENERIC_WLE4CBUX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4CBUX_MCU}
)
target_compile_definitions(GENERIC_WLE4CBUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4CBUX"
	"BOARD_NAME=\"GENERIC_WLE4CBUX\""
	"BOARD_ID=GENERIC_WLE4CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_WLE4CBUX_MCU}
)
target_link_libraries(GENERIC_WLE4CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4CCUX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE4CCUX_MAXSIZE 262144)
set(GENERIC_WLE4CCUX_MAXDATASIZE 65536)
set(GENERIC_WLE4CCUX_MCU cortex-m4)
add_library(GENERIC_WLE4CCUX INTERFACE)
target_compile_options(GENERIC_WLE4CCUX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4CCUX_MCU}
)
target_compile_definitions(GENERIC_WLE4CCUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4CCUX"
	"BOARD_NAME=\"GENERIC_WLE4CCUX\""
	"BOARD_ID=GENERIC_WLE4CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WLE4CCUX_MCU}
)
target_link_libraries(GENERIC_WLE4CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4J8IX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4J8IX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE4J8IX_MAXSIZE 65536)
set(GENERIC_WLE4J8IX_MAXDATASIZE 20480)
set(GENERIC_WLE4J8IX_MCU cortex-m4)
add_library(GENERIC_WLE4J8IX INTERFACE)
target_compile_options(GENERIC_WLE4J8IX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4J8IX_MCU}
)
target_compile_definitions(GENERIC_WLE4J8IX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4J8IX"
	"BOARD_NAME=\"GENERIC_WLE4J8IX\""
	"BOARD_ID=GENERIC_WLE4J8IX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4J8IX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4J8IX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4J8IX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4J8IX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_WLE4J8IX_MCU}
)
target_link_libraries(GENERIC_WLE4J8IX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4JBIX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4JBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE4JBIX_MAXSIZE 131072)
set(GENERIC_WLE4JBIX_MAXDATASIZE 49152)
set(GENERIC_WLE4JBIX_MCU cortex-m4)
add_library(GENERIC_WLE4JBIX INTERFACE)
target_compile_options(GENERIC_WLE4JBIX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4JBIX_MCU}
)
target_compile_definitions(GENERIC_WLE4JBIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4JBIX"
	"BOARD_NAME=\"GENERIC_WLE4JBIX\""
	"BOARD_ID=GENERIC_WLE4JBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4JBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4JBIX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4JBIX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4JBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_WLE4JBIX_MCU}
)
target_link_libraries(GENERIC_WLE4JBIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE4JCIX
# -----------------------------------------------------------------------------

set(GENERIC_WLE4JCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE4JCIX_MAXSIZE 262144)
set(GENERIC_WLE4JCIX_MAXDATASIZE 65536)
set(GENERIC_WLE4JCIX_MCU cortex-m4)
add_library(GENERIC_WLE4JCIX INTERFACE)
target_compile_options(GENERIC_WLE4JCIX INTERFACE
  "SHELL:-DSTM32WLE4xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE4JCIX_MCU}
)
target_compile_definitions(GENERIC_WLE4JCIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE4JCIX"
	"BOARD_NAME=\"GENERIC_WLE4JCIX\""
	"BOARD_ID=GENERIC_WLE4JCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE4JCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE4JCIX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE4JCIX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE4JCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WLE4JCIX_MCU}
)
target_link_libraries(GENERIC_WLE4JCIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5C8UX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5C8UX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE5C8UX_MAXSIZE 65536)
set(GENERIC_WLE5C8UX_MAXDATASIZE 20480)
set(GENERIC_WLE5C8UX_MCU cortex-m4)
add_library(GENERIC_WLE5C8UX INTERFACE)
target_compile_options(GENERIC_WLE5C8UX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5C8UX_MCU}
)
target_compile_definitions(GENERIC_WLE5C8UX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5C8UX"
	"BOARD_NAME=\"GENERIC_WLE5C8UX\""
	"BOARD_ID=GENERIC_WLE5C8UX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5C8UX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5C8UX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5C8UX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5C8UX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_WLE5C8UX_MCU}
)
target_link_libraries(GENERIC_WLE5C8UX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5CBUX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5CBUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE5CBUX_MAXSIZE 131072)
set(GENERIC_WLE5CBUX_MAXDATASIZE 49152)
set(GENERIC_WLE5CBUX_MCU cortex-m4)
add_library(GENERIC_WLE5CBUX INTERFACE)
target_compile_options(GENERIC_WLE5CBUX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5CBUX_MCU}
)
target_compile_definitions(GENERIC_WLE5CBUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5CBUX"
	"BOARD_NAME=\"GENERIC_WLE5CBUX\""
	"BOARD_ID=GENERIC_WLE5CBUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5CBUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5CBUX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5CBUX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5CBUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_WLE5CBUX_MCU}
)
target_link_libraries(GENERIC_WLE5CBUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5CCUX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5CCUX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54CCU_WL55CCU_WLE4C(8-B-C)U_WLE5C(8-B-C)U")
set(GENERIC_WLE5CCUX_MAXSIZE 262144)
set(GENERIC_WLE5CCUX_MAXDATASIZE 65536)
set(GENERIC_WLE5CCUX_MCU cortex-m4)
add_library(GENERIC_WLE5CCUX INTERFACE)
target_compile_options(GENERIC_WLE5CCUX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5CCUX_MCU}
)
target_compile_definitions(GENERIC_WLE5CCUX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5CCUX"
	"BOARD_NAME=\"GENERIC_WLE5CCUX\""
	"BOARD_ID=GENERIC_WLE5CCUX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5CCUX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5CCUX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5CCUX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5CCUX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WLE5CCUX_MCU}
)
target_link_libraries(GENERIC_WLE5CCUX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5J8IX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5J8IX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE5J8IX_MAXSIZE 65536)
set(GENERIC_WLE5J8IX_MAXDATASIZE 20480)
set(GENERIC_WLE5J8IX_MCU cortex-m4)
add_library(GENERIC_WLE5J8IX INTERFACE)
target_compile_options(GENERIC_WLE5J8IX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5J8IX_MCU}
)
target_compile_definitions(GENERIC_WLE5J8IX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5J8IX"
	"BOARD_NAME=\"GENERIC_WLE5J8IX\""
	"BOARD_ID=GENERIC_WLE5J8IX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5J8IX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5J8IX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5J8IX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5J8IX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${GENERIC_WLE5J8IX_MCU}
)
target_link_libraries(GENERIC_WLE5J8IX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5JBIX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5JBIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE5JBIX_MAXSIZE 131072)
set(GENERIC_WLE5JBIX_MAXDATASIZE 49152)
set(GENERIC_WLE5JBIX_MCU cortex-m4)
add_library(GENERIC_WLE5JBIX INTERFACE)
target_compile_options(GENERIC_WLE5JBIX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5JBIX_MCU}
)
target_compile_definitions(GENERIC_WLE5JBIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5JBIX"
	"BOARD_NAME=\"GENERIC_WLE5JBIX\""
	"BOARD_ID=GENERIC_WLE5JBIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5JBIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5JBIX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5JBIX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5JBIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${GENERIC_WLE5JBIX_MCU}
)
target_link_libraries(GENERIC_WLE5JBIX INTERFACE
  arm_cortexM4lf_math
)

# GENERIC_WLE5JCIX
# -----------------------------------------------------------------------------

set(GENERIC_WLE5JCIX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(GENERIC_WLE5JCIX_MAXSIZE 262144)
set(GENERIC_WLE5JCIX_MAXDATASIZE 65536)
set(GENERIC_WLE5JCIX_MCU cortex-m4)
add_library(GENERIC_WLE5JCIX INTERFACE)
target_compile_options(GENERIC_WLE5JCIX INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${GENERIC_WLE5JCIX_MCU}
)
target_compile_definitions(GENERIC_WLE5JCIX INTERFACE
  "STM32WLxx"
	"ARDUINO_GENERIC_WLE5JCIX"
	"BOARD_NAME=\"GENERIC_WLE5JCIX\""
	"BOARD_ID=GENERIC_WLE5JCIX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_WLE5JCIX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${GENERIC_WLE5JCIX_VARIANT_PATH}
)

target_link_options(GENERIC_WLE5JCIX INTERFACE
  "LINKER:--default-script=${GENERIC_WLE5JCIX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${GENERIC_WLE5JCIX_MCU}
)
target_link_libraries(GENERIC_WLE5JCIX INTERFACE
  arm_cortexM4lf_math
)

# HY_TINYSTM103TB
# -----------------------------------------------------------------------------

set(HY_TINYSTM103TB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103T(8-B)U")
set(HY_TINYSTM103TB_MAXSIZE 131072)
set(HY_TINYSTM103TB_MAXDATASIZE 20480)
set(HY_TINYSTM103TB_MCU cortex-m3)
add_library(HY_TINYSTM103TB INTERFACE)
target_compile_options(HY_TINYSTM103TB INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${HY_TINYSTM103TB_MCU}
)
target_compile_definitions(HY_TINYSTM103TB INTERFACE
  "STM32F1xx"
	"ARDUINO_HY_TINYSTM103TB"
	"BOARD_NAME=\"HY_TINYSTM103TB\""
	"BOARD_ID=HY_TINYSTM103TB"
	"VARIANT_H=\"variant_HY_TINYSTM103TB.h\""
)
target_include_directories(HY_TINYSTM103TB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${HY_TINYSTM103TB_VARIANT_PATH}
)

target_link_options(HY_TINYSTM103TB INTERFACE
  "LINKER:--default-script=${HY_TINYSTM103TB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${HY_TINYSTM103TB_MCU}
)
target_link_libraries(HY_TINYSTM103TB INTERFACE
  arm_cortexM3l_math
)

# MALYANM200_F070CB
# -----------------------------------------------------------------------------

set(MALYANM200_F070CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F070CBT")
set(MALYANM200_F070CB_MAXSIZE 122880)
set(MALYANM200_F070CB_MAXDATASIZE 15168)
set(MALYANM200_F070CB_MCU cortex-m0)
add_library(MALYANM200_F070CB INTERFACE)
target_compile_options(MALYANM200_F070CB INTERFACE
  "SHELL:-DSTM32F070xB   -DVECT_TAB_OFFSET=0x2000"
  "SHELL:"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  "SHELL:"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  -mcpu=${MALYANM200_F070CB_MCU}
)
target_compile_definitions(MALYANM200_F070CB INTERFACE
  "STM32F0xx"
	"ARDUINO_MALYANM200_F070CB"
	"BOARD_NAME=\"MALYANM200_F070CB\""
	"BOARD_ID=MALYANM200_F070CB"
	"VARIANT_H=\"variant_MALYANMx00_F070CB.h\""
)
target_include_directories(MALYANM200_F070CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${MALYANM200_F070CB_VARIANT_PATH}
)

target_link_options(MALYANM200_F070CB INTERFACE
  "LINKER:--default-script=${MALYANM200_F070CB_VARIANT_PATH}/MALYANMx00_F070CB.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x2000"
	"LINKER:--defsym=LD_MAX_SIZE=122880"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=15168"
  "SHELL:"
  -mcpu=${MALYANM200_F070CB_MCU}
)
target_link_libraries(MALYANM200_F070CB INTERFACE
  arm_cortexM0l_math
)

# MALYANM200_F103CB
# -----------------------------------------------------------------------------

set(MALYANM200_F103CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(MALYANM200_F103CB_MAXSIZE 122880)
set(MALYANM200_F103CB_MAXDATASIZE 20480)
set(MALYANM200_F103CB_MCU cortex-m3)
add_library(MALYANM200_F103CB INTERFACE)
target_compile_options(MALYANM200_F103CB INTERFACE
  "SHELL:-DSTM32F103xB   -DVECT_TAB_OFFSET=0x2000"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  "SHELL:"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  -mcpu=${MALYANM200_F103CB_MCU}
)
target_compile_definitions(MALYANM200_F103CB INTERFACE
  "STM32F1xx"
	"ARDUINO_MALYANM200_F103CB"
	"BOARD_NAME=\"MALYANM200_F103CB\""
	"BOARD_ID=MALYANM200_F103CB"
	"VARIANT_H=\"variant_MALYANM200_F103CB.h\""
)
target_include_directories(MALYANM200_F103CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${MALYANM200_F103CB_VARIANT_PATH}
)

target_link_options(MALYANM200_F103CB INTERFACE
  "LINKER:--default-script=${MALYANM200_F103CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x2000"
	"LINKER:--defsym=LD_MAX_SIZE=122880"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${MALYANM200_F103CB_MCU}
)
target_link_libraries(MALYANM200_F103CB INTERFACE
  arm_cortexM3l_math
)

# MALYANM300_F070CB
# -----------------------------------------------------------------------------

set(MALYANM300_F070CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F070CBT")
set(MALYANM300_F070CB_MAXSIZE 122880)
set(MALYANM300_F070CB_MAXDATASIZE 15168)
set(MALYANM300_F070CB_MCU cortex-m0)
add_library(MALYANM300_F070CB INTERFACE)
target_compile_options(MALYANM300_F070CB INTERFACE
  "SHELL:-DSTM32F070xB   -DVECT_TAB_OFFSET=0x2000"
  "SHELL:"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  "SHELL:"
  "SHELL:-DCUSTOM_STARTUP_FILE"
  -mcpu=${MALYANM300_F070CB_MCU}
)
target_compile_definitions(MALYANM300_F070CB INTERFACE
  "STM32F0xx"
	"ARDUINO_MALYANM300_F070CB"
	"BOARD_NAME=\"MALYANM300_F070CB\""
	"BOARD_ID=MALYANM300_F070CB"
	"VARIANT_H=\"variant_MALYANMx00_F070CB.h\""
)
target_include_directories(MALYANM300_F070CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${MALYANM300_F070CB_VARIANT_PATH}
)

target_link_options(MALYANM300_F070CB INTERFACE
  "LINKER:--default-script=${MALYANM300_F070CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x2000"
	"LINKER:--defsym=LD_MAX_SIZE=122880"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=15168"
  "SHELL:"
  -mcpu=${MALYANM300_F070CB_MCU}
)
target_link_libraries(MALYANM300_F070CB INTERFACE
  arm_cortexM0l_math
)

# MAPLEMINI_F103CB
# -----------------------------------------------------------------------------

set(MAPLEMINI_F103CB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103C8T_F103CB(T-U)")
set(MAPLEMINI_F103CB_MAXSIZE 131072)
set(MAPLEMINI_F103CB_MAXDATASIZE 20480)
set(MAPLEMINI_F103CB_MCU cortex-m3)
add_library(MAPLEMINI_F103CB INTERFACE)
target_compile_options(MAPLEMINI_F103CB INTERFACE
  "SHELL:-DSTM32F103xB   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${MAPLEMINI_F103CB_MCU}
)
target_compile_definitions(MAPLEMINI_F103CB INTERFACE
  "STM32F1xx"
	"ARDUINO_MAPLEMINI_F103CB"
	"BOARD_NAME=\"MAPLEMINI_F103CB\""
	"BOARD_ID=MAPLEMINI_F103CB"
	"VARIANT_H=\"variant_MAPLEMINI_F103CB.h\""
)
target_include_directories(MAPLEMINI_F103CB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${MAPLEMINI_F103CB_VARIANT_PATH}
)

target_link_options(MAPLEMINI_F103CB INTERFACE
  "LINKER:--default-script=${MAPLEMINI_F103CB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${MAPLEMINI_F103CB_MCU}
)
target_link_libraries(MAPLEMINI_F103CB INTERFACE
  arm_cortexM3l_math
)

# MKR_SHARKY
# -----------------------------------------------------------------------------

set(MKR_SHARKY_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55C(C-E-G)U")
set(MKR_SHARKY_MAXSIZE 262144)
set(MKR_SHARKY_MAXDATASIZE 196608)
set(MKR_SHARKY_MCU cortex-m4)
add_library(MKR_SHARKY INTERFACE)
target_compile_options(MKR_SHARKY INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${MKR_SHARKY_MCU}
)
target_compile_definitions(MKR_SHARKY INTERFACE
  "STM32WBxx"
	"ARDUINO_MKR_SHARKY"
	"BOARD_NAME=\"MKR_SHARKY\""
	"BOARD_ID=MKR_SHARKY"
	"VARIANT_H=\"variant_MKR_SHARKY.h\""
)
target_include_directories(MKR_SHARKY INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${MKR_SHARKY_VARIANT_PATH}
)

target_link_options(MKR_SHARKY INTERFACE
  "LINKER:--default-script=${MKR_SHARKY_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${MKR_SHARKY_MCU}
)
target_link_libraries(MKR_SHARKY INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F030R8
# -----------------------------------------------------------------------------

set(NUCLEO_F030R8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F030R8T")
set(NUCLEO_F030R8_MAXSIZE 65536)
set(NUCLEO_F030R8_MAXDATASIZE 8192)
set(NUCLEO_F030R8_MCU cortex-m0)
add_library(NUCLEO_F030R8 INTERFACE)
target_compile_options(NUCLEO_F030R8 INTERFACE
  "SHELL:-DSTM32F030x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F030R8_MCU}
)
target_compile_definitions(NUCLEO_F030R8 INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F030R8"
	"BOARD_NAME=\"NUCLEO_F030R8\""
	"BOARD_ID=NUCLEO_F030R8"
	"VARIANT_H=\"variant_NUCLEO_F030R8.h\""
)
target_include_directories(NUCLEO_F030R8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F030R8_VARIANT_PATH}
)

target_link_options(NUCLEO_F030R8 INTERFACE
  "LINKER:--default-script=${NUCLEO_F030R8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${NUCLEO_F030R8_MCU}
)
target_link_libraries(NUCLEO_F030R8 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F031K6
# -----------------------------------------------------------------------------

set(NUCLEO_F031K6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F031K6T")
set(NUCLEO_F031K6_MAXSIZE 32768)
set(NUCLEO_F031K6_MAXDATASIZE 4096)
set(NUCLEO_F031K6_MCU cortex-m0)
add_library(NUCLEO_F031K6 INTERFACE)
target_compile_options(NUCLEO_F031K6 INTERFACE
  "SHELL:-DSTM32F031x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F031K6_MCU}
)
target_compile_definitions(NUCLEO_F031K6 INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F031K6"
	"BOARD_NAME=\"NUCLEO_F031K6\""
	"BOARD_ID=NUCLEO_F031K6"
	"VARIANT_H=\"variant_NUCLEO_F031K6.h\""
)
target_include_directories(NUCLEO_F031K6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F031K6_VARIANT_PATH}
)

target_link_options(NUCLEO_F031K6 INTERFACE
  "LINKER:--default-script=${NUCLEO_F031K6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=4096"
  "SHELL:"
  -mcpu=${NUCLEO_F031K6_MCU}
)
target_link_libraries(NUCLEO_F031K6 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F042K6
# -----------------------------------------------------------------------------

set(NUCLEO_F042K6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F042K(4-6)T")
set(NUCLEO_F042K6_MAXSIZE 32768)
set(NUCLEO_F042K6_MAXDATASIZE 6144)
set(NUCLEO_F042K6_MCU cortex-m0)
add_library(NUCLEO_F042K6 INTERFACE)
target_compile_options(NUCLEO_F042K6 INTERFACE
  "SHELL:-DSTM32F042x6  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F042K6_MCU}
)
target_compile_definitions(NUCLEO_F042K6 INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F042K6"
	"BOARD_NAME=\"NUCLEO_F042K6\""
	"BOARD_ID=NUCLEO_F042K6"
	"VARIANT_H=\"variant_NUCLEO_F042K6.h\""
)
target_include_directories(NUCLEO_F042K6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F042K6_VARIANT_PATH}
)

target_link_options(NUCLEO_F042K6 INTERFACE
  "LINKER:--default-script=${NUCLEO_F042K6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=6144"
  "SHELL:"
  -mcpu=${NUCLEO_F042K6_MCU}
)
target_link_libraries(NUCLEO_F042K6 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F070RB
# -----------------------------------------------------------------------------

set(NUCLEO_F070RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F070RBT")
set(NUCLEO_F070RB_MAXSIZE 131072)
set(NUCLEO_F070RB_MAXDATASIZE 16384)
set(NUCLEO_F070RB_MCU cortex-m0)
add_library(NUCLEO_F070RB INTERFACE)
target_compile_options(NUCLEO_F070RB INTERFACE
  "SHELL:-DSTM32F070xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F070RB_MCU}
)
target_compile_definitions(NUCLEO_F070RB INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F070RB"
	"BOARD_NAME=\"NUCLEO_F070RB\""
	"BOARD_ID=NUCLEO_F070RB"
	"VARIANT_H=\"variant_NUCLEO_F070RB.h\""
)
target_include_directories(NUCLEO_F070RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F070RB_VARIANT_PATH}
)

target_link_options(NUCLEO_F070RB INTERFACE
  "LINKER:--default-script=${NUCLEO_F070RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${NUCLEO_F070RB_MCU}
)
target_link_libraries(NUCLEO_F070RB INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F072RB
# -----------------------------------------------------------------------------

set(NUCLEO_F072RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(NUCLEO_F072RB_MAXSIZE 131072)
set(NUCLEO_F072RB_MAXDATASIZE 16384)
set(NUCLEO_F072RB_MCU cortex-m0)
add_library(NUCLEO_F072RB INTERFACE)
target_compile_options(NUCLEO_F072RB INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F072RB_MCU}
)
target_compile_definitions(NUCLEO_F072RB INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F072RB"
	"BOARD_NAME=\"NUCLEO_F072RB\""
	"BOARD_ID=NUCLEO_F072RB"
	"VARIANT_H=\"variant_NUCLEO_F072RB.h\""
)
target_include_directories(NUCLEO_F072RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F072RB_VARIANT_PATH}
)

target_link_options(NUCLEO_F072RB INTERFACE
  "LINKER:--default-script=${NUCLEO_F072RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${NUCLEO_F072RB_MCU}
)
target_link_libraries(NUCLEO_F072RB INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F091RC
# -----------------------------------------------------------------------------

set(NUCLEO_F091RC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F091RBT_F091RC(H-T-Y)")
set(NUCLEO_F091RC_MAXSIZE 262144)
set(NUCLEO_F091RC_MAXDATASIZE 32768)
set(NUCLEO_F091RC_MCU cortex-m0)
add_library(NUCLEO_F091RC INTERFACE)
target_compile_options(NUCLEO_F091RC INTERFACE
  "SHELL:-DSTM32F091xC  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F091RC_MCU}
)
target_compile_definitions(NUCLEO_F091RC INTERFACE
  "STM32F0xx"
	"ARDUINO_NUCLEO_F091RC"
	"BOARD_NAME=\"NUCLEO_F091RC\""
	"BOARD_ID=NUCLEO_F091RC"
	"VARIANT_H=\"variant_NUCLEO_F091RC.h\""
)
target_include_directories(NUCLEO_F091RC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${NUCLEO_F091RC_VARIANT_PATH}
)

target_link_options(NUCLEO_F091RC INTERFACE
  "LINKER:--default-script=${NUCLEO_F091RC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${NUCLEO_F091RC_MCU}
)
target_link_libraries(NUCLEO_F091RC INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_F103RB
# -----------------------------------------------------------------------------

set(NUCLEO_F103RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(8-B)T")
set(NUCLEO_F103RB_MAXSIZE 131072)
set(NUCLEO_F103RB_MAXDATASIZE 20480)
set(NUCLEO_F103RB_MCU cortex-m3)
add_library(NUCLEO_F103RB INTERFACE)
target_compile_options(NUCLEO_F103RB INTERFACE
  "SHELL:-DSTM32F103xB  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F103RB_MCU}
)
target_compile_definitions(NUCLEO_F103RB INTERFACE
  "STM32F1xx"
	"ARDUINO_NUCLEO_F103RB"
	"BOARD_NAME=\"NUCLEO_F103RB\""
	"BOARD_ID=NUCLEO_F103RB"
	"VARIANT_H=\"variant_NUCLEO_F103RB.h\""
)
target_include_directories(NUCLEO_F103RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${NUCLEO_F103RB_VARIANT_PATH}
)

target_link_options(NUCLEO_F103RB INTERFACE
  "LINKER:--default-script=${NUCLEO_F103RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${NUCLEO_F103RB_MCU}
)
target_link_libraries(NUCLEO_F103RB INTERFACE
  arm_cortexM3l_math
)

# NUCLEO_F207ZG
# -----------------------------------------------------------------------------

set(NUCLEO_F207ZG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T")
set(NUCLEO_F207ZG_MAXSIZE 1048576)
set(NUCLEO_F207ZG_MAXDATASIZE 131072)
set(NUCLEO_F207ZG_MCU cortex-m3)
add_library(NUCLEO_F207ZG INTERFACE)
target_compile_options(NUCLEO_F207ZG INTERFACE
  "SHELL:-DSTM32F207xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_F207ZG_MCU}
)
target_compile_definitions(NUCLEO_F207ZG INTERFACE
  "STM32F2xx"
	"ARDUINO_NUCLEO_F207ZG"
	"BOARD_NAME=\"NUCLEO_F207ZG\""
	"BOARD_ID=NUCLEO_F207ZG"
	"VARIANT_H=\"variant_NUCLEO_F207ZG.h\""
)
target_include_directories(NUCLEO_F207ZG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F2xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F2xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F2xx/Source/Templates/gcc/
  ${NUCLEO_F207ZG_VARIANT_PATH}
)

target_link_options(NUCLEO_F207ZG INTERFACE
  "LINKER:--default-script=${NUCLEO_F207ZG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:"
  -mcpu=${NUCLEO_F207ZG_MCU}
)
target_link_libraries(NUCLEO_F207ZG INTERFACE
  arm_cortexM3l_math
)

# NUCLEO_F302R8
# -----------------------------------------------------------------------------

set(NUCLEO_F302R8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F302R(6-8)T")
set(NUCLEO_F302R8_MAXSIZE 65536)
set(NUCLEO_F302R8_MAXDATASIZE 16384)
set(NUCLEO_F302R8_MCU cortex-m4)
add_library(NUCLEO_F302R8 INTERFACE)
target_compile_options(NUCLEO_F302R8 INTERFACE
  "SHELL:-DSTM32F302x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F302R8_MCU}
)
target_compile_definitions(NUCLEO_F302R8 INTERFACE
  "STM32F3xx"
	"ARDUINO_NUCLEO_F302R8"
	"BOARD_NAME=\"NUCLEO_F302R8\""
	"BOARD_ID=NUCLEO_F302R8"
	"VARIANT_H=\"variant_NUCLEO_F302R8.h\""
)
target_include_directories(NUCLEO_F302R8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${NUCLEO_F302R8_VARIANT_PATH}
)

target_link_options(NUCLEO_F302R8 INTERFACE
  "LINKER:--default-script=${NUCLEO_F302R8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F302R8_MCU}
)
target_link_libraries(NUCLEO_F302R8 INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F303K8
# -----------------------------------------------------------------------------

set(NUCLEO_F303K8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303K(6-8)T_F334K(4-6-8)T")
set(NUCLEO_F303K8_MAXSIZE 65536)
set(NUCLEO_F303K8_MAXDATASIZE 12288)
set(NUCLEO_F303K8_MCU cortex-m4)
add_library(NUCLEO_F303K8 INTERFACE)
target_compile_options(NUCLEO_F303K8 INTERFACE
  "SHELL:-DSTM32F303x8  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F303K8_MCU}
)
target_compile_definitions(NUCLEO_F303K8 INTERFACE
  "STM32F3xx"
	"ARDUINO_NUCLEO_F303K8"
	"BOARD_NAME=\"NUCLEO_F303K8\""
	"BOARD_ID=NUCLEO_F303K8"
	"VARIANT_H=\"variant_NUCLEO_F303K8.h\""
)
target_include_directories(NUCLEO_F303K8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${NUCLEO_F303K8_VARIANT_PATH}
)

target_link_options(NUCLEO_F303K8 INTERFACE
  "LINKER:--default-script=${NUCLEO_F303K8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=12288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F303K8_MCU}
)
target_link_libraries(NUCLEO_F303K8 INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F303RE
# -----------------------------------------------------------------------------

set(NUCLEO_F303RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(D-E)T")
set(NUCLEO_F303RE_MAXSIZE 524288)
set(NUCLEO_F303RE_MAXDATASIZE 65536)
set(NUCLEO_F303RE_MCU cortex-m4)
add_library(NUCLEO_F303RE INTERFACE)
target_compile_options(NUCLEO_F303RE INTERFACE
  "SHELL:-DSTM32F303xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F303RE_MCU}
)
target_compile_definitions(NUCLEO_F303RE INTERFACE
  "STM32F3xx"
	"ARDUINO_NUCLEO_F303RE"
	"BOARD_NAME=\"NUCLEO_F303RE\""
	"BOARD_ID=NUCLEO_F303RE"
	"VARIANT_H=\"variant_NUCLEO_F303RE.h\""
)
target_include_directories(NUCLEO_F303RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${NUCLEO_F303RE_VARIANT_PATH}
)

target_link_options(NUCLEO_F303RE INTERFACE
  "LINKER:--default-script=${NUCLEO_F303RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F303RE_MCU}
)
target_link_libraries(NUCLEO_F303RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F401RE
# -----------------------------------------------------------------------------

set(NUCLEO_F401RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401R(B-C-D-E)T")
set(NUCLEO_F401RE_MAXSIZE 524288)
set(NUCLEO_F401RE_MAXDATASIZE 98304)
set(NUCLEO_F401RE_MCU cortex-m4)
add_library(NUCLEO_F401RE INTERFACE)
target_compile_options(NUCLEO_F401RE INTERFACE
  "SHELL:-DSTM32F401xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F401RE_MCU}
)
target_compile_definitions(NUCLEO_F401RE INTERFACE
  "STM32F4xx"
	"ARDUINO_NUCLEO_F401RE"
	"BOARD_NAME=\"NUCLEO_F401RE\""
	"BOARD_ID=NUCLEO_F401RE"
	"VARIANT_H=\"variant_NUCLEO_F401RE.h\""
)
target_include_directories(NUCLEO_F401RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${NUCLEO_F401RE_VARIANT_PATH}
)

target_link_options(NUCLEO_F401RE INTERFACE
  "LINKER:--default-script=${NUCLEO_F401RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F401RE_MCU}
)
target_link_libraries(NUCLEO_F401RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F411RE
# -----------------------------------------------------------------------------

set(NUCLEO_F411RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411R(C-E)T")
set(NUCLEO_F411RE_MAXSIZE 524288)
set(NUCLEO_F411RE_MAXDATASIZE 131072)
set(NUCLEO_F411RE_MCU cortex-m4)
add_library(NUCLEO_F411RE INTERFACE)
target_compile_options(NUCLEO_F411RE INTERFACE
  "SHELL:-DSTM32F411xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F411RE_MCU}
)
target_compile_definitions(NUCLEO_F411RE INTERFACE
  "STM32F4xx"
	"ARDUINO_NUCLEO_F411RE"
	"BOARD_NAME=\"NUCLEO_F411RE\""
	"BOARD_ID=NUCLEO_F411RE"
	"VARIANT_H=\"variant_NUCLEO_F411RE.h\""
)
target_include_directories(NUCLEO_F411RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${NUCLEO_F411RE_VARIANT_PATH}
)

target_link_options(NUCLEO_F411RE INTERFACE
  "LINKER:--default-script=${NUCLEO_F411RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F411RE_MCU}
)
target_link_libraries(NUCLEO_F411RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F429ZI
# -----------------------------------------------------------------------------

set(NUCLEO_F429ZI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F427Z(G-I)T_F429ZET_F429Z(G-I)(T-Y)_F437Z(G-I)T_F439Z(G-I)(T-Y)")
set(NUCLEO_F429ZI_MAXSIZE 2097152)
set(NUCLEO_F429ZI_MAXDATASIZE 196608)
set(NUCLEO_F429ZI_MCU cortex-m4)
add_library(NUCLEO_F429ZI INTERFACE)
target_compile_options(NUCLEO_F429ZI INTERFACE
  "SHELL:-DSTM32F429xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F429ZI_MCU}
)
target_compile_definitions(NUCLEO_F429ZI INTERFACE
  "STM32F4xx"
	"ARDUINO_NUCLEO_F429ZI"
	"BOARD_NAME=\"NUCLEO_F429ZI\""
	"BOARD_ID=NUCLEO_F429ZI"
	"VARIANT_H=\"variant_NUCLEO_F429ZI.h\""
)
target_include_directories(NUCLEO_F429ZI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${NUCLEO_F429ZI_VARIANT_PATH}
)

target_link_options(NUCLEO_F429ZI INTERFACE
  "LINKER:--default-script=${NUCLEO_F429ZI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F429ZI_MCU}
)
target_link_libraries(NUCLEO_F429ZI INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F446RE
# -----------------------------------------------------------------------------

set(NUCLEO_F446RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446R(C-E)T")
set(NUCLEO_F446RE_MAXSIZE 524288)
set(NUCLEO_F446RE_MAXDATASIZE 131072)
set(NUCLEO_F446RE_MCU cortex-m4)
add_library(NUCLEO_F446RE INTERFACE)
target_compile_options(NUCLEO_F446RE INTERFACE
  "SHELL:-DSTM32F446xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F446RE_MCU}
)
target_compile_definitions(NUCLEO_F446RE INTERFACE
  "STM32F4xx"
	"ARDUINO_NUCLEO_F446RE"
	"BOARD_NAME=\"NUCLEO_F446RE\""
	"BOARD_ID=NUCLEO_F446RE"
	"VARIANT_H=\"variant_NUCLEO_F446RE.h\""
)
target_include_directories(NUCLEO_F446RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${NUCLEO_F446RE_VARIANT_PATH}
)

target_link_options(NUCLEO_F446RE INTERFACE
  "LINKER:--default-script=${NUCLEO_F446RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F446RE_MCU}
)
target_link_libraries(NUCLEO_F446RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_F746ZG
# -----------------------------------------------------------------------------

set(NUCLEO_F746ZG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(NUCLEO_F746ZG_MAXSIZE 1048576)
set(NUCLEO_F746ZG_MAXDATASIZE 327680)
set(NUCLEO_F746ZG_MCU cortex-m7)
add_library(NUCLEO_F746ZG INTERFACE)
target_compile_options(NUCLEO_F746ZG INTERFACE
  "SHELL:-DSTM32F746xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F746ZG_MCU}
)
target_compile_definitions(NUCLEO_F746ZG INTERFACE
  "STM32F7xx"
	"ARDUINO_NUCLEO_F746ZG"
	"BOARD_NAME=\"NUCLEO_F746ZG\""
	"BOARD_ID=NUCLEO_F746ZG"
	"VARIANT_H=\"variant_NUCLEO_F7x6ZG.h\""
)
target_include_directories(NUCLEO_F746ZG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${NUCLEO_F746ZG_VARIANT_PATH}
)

target_link_options(NUCLEO_F746ZG INTERFACE
  "LINKER:--default-script=${NUCLEO_F746ZG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F746ZG_MCU}
)
target_link_libraries(NUCLEO_F746ZG INTERFACE
  arm_cortexM7lfsp_math
)

# NUCLEO_F756ZG
# -----------------------------------------------------------------------------

set(NUCLEO_F756ZG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F745Z(E-G)T_F746Z(E-G)(T-Y)_F750Z8T_F756ZG(T-Y)")
set(NUCLEO_F756ZG_MAXSIZE 1048576)
set(NUCLEO_F756ZG_MAXDATASIZE 327680)
set(NUCLEO_F756ZG_MCU cortex-m7)
add_library(NUCLEO_F756ZG INTERFACE)
target_compile_options(NUCLEO_F756ZG INTERFACE
  "SHELL:-DSTM32F756xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F756ZG_MCU}
)
target_compile_definitions(NUCLEO_F756ZG INTERFACE
  "STM32F7xx"
	"ARDUINO_NUCLEO_F756ZG"
	"BOARD_NAME=\"NUCLEO_F756ZG\""
	"BOARD_ID=NUCLEO_F756ZG"
	"VARIANT_H=\"variant_NUCLEO_F7x6ZG.h\""
)
target_include_directories(NUCLEO_F756ZG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${NUCLEO_F756ZG_VARIANT_PATH}
)

target_link_options(NUCLEO_F756ZG INTERFACE
  "LINKER:--default-script=${NUCLEO_F756ZG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F756ZG_MCU}
)
target_link_libraries(NUCLEO_F756ZG INTERFACE
  arm_cortexM7lfsp_math
)

# NUCLEO_F767ZI
# -----------------------------------------------------------------------------

set(NUCLEO_F767ZI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765Z(G-I)T_F767Z(G-I)T_F777ZIT")
set(NUCLEO_F767ZI_MAXSIZE 2097152)
set(NUCLEO_F767ZI_MAXDATASIZE 524288)
set(NUCLEO_F767ZI_MCU cortex-m7)
add_library(NUCLEO_F767ZI INTERFACE)
target_compile_options(NUCLEO_F767ZI INTERFACE
  "SHELL:-DSTM32F767xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_F767ZI_MCU}
)
target_compile_definitions(NUCLEO_F767ZI INTERFACE
  "STM32F7xx"
	"ARDUINO_NUCLEO_F767ZI"
	"BOARD_NAME=\"NUCLEO_F767ZI\""
	"BOARD_ID=NUCLEO_F767ZI"
	"VARIANT_H=\"variant_NUCLEO_F767ZI.h\""
)
target_include_directories(NUCLEO_F767ZI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${NUCLEO_F767ZI_VARIANT_PATH}
)

target_link_options(NUCLEO_F767ZI INTERFACE
  "LINKER:--default-script=${NUCLEO_F767ZI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_F767ZI_MCU}
)
target_link_libraries(NUCLEO_F767ZI INTERFACE
  arm_cortexM7lfsp_math
)

# NUCLEO_G031K8
# -----------------------------------------------------------------------------

set(NUCLEO_G031K8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G031K(4-6-8)(T-U)_G041K(6-8)(T-U)")
set(NUCLEO_G031K8_MAXSIZE 65536)
set(NUCLEO_G031K8_MAXDATASIZE 8192)
set(NUCLEO_G031K8_MCU cortex-m0plus)
add_library(NUCLEO_G031K8 INTERFACE)
target_compile_options(NUCLEO_G031K8 INTERFACE
  "SHELL:-DSTM32G031xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_G031K8_MCU}
)
target_compile_definitions(NUCLEO_G031K8 INTERFACE
  "STM32G0xx"
	"ARDUINO_NUCLEO_G031K8"
	"BOARD_NAME=\"NUCLEO_G031K8\""
	"BOARD_ID=NUCLEO_G031K8"
	"VARIANT_H=\"variant_NUCLEO_G031K8.h\""
)
target_include_directories(NUCLEO_G031K8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${NUCLEO_G031K8_VARIANT_PATH}
)

target_link_options(NUCLEO_G031K8 INTERFACE
  "LINKER:--default-script=${NUCLEO_G031K8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${NUCLEO_G031K8_MCU}
)
target_link_libraries(NUCLEO_G031K8 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_G071RB
# -----------------------------------------------------------------------------

set(NUCLEO_G071RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G071R(6-8)T_G071RB(I-T)_G081RB(I-T)")
set(NUCLEO_G071RB_MAXSIZE 131072)
set(NUCLEO_G071RB_MAXDATASIZE 32768)
set(NUCLEO_G071RB_MCU cortex-m0plus)
add_library(NUCLEO_G071RB INTERFACE)
target_compile_options(NUCLEO_G071RB INTERFACE
  "SHELL:-DSTM32G071xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_G071RB_MCU}
)
target_compile_definitions(NUCLEO_G071RB INTERFACE
  "STM32G0xx"
	"ARDUINO_NUCLEO_G071RB"
	"BOARD_NAME=\"NUCLEO_G071RB\""
	"BOARD_ID=NUCLEO_G071RB"
	"VARIANT_H=\"variant_NUCLEO_G071RB.h\""
)
target_include_directories(NUCLEO_G071RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${NUCLEO_G071RB_VARIANT_PATH}
)

target_link_options(NUCLEO_G071RB INTERFACE
  "LINKER:--default-script=${NUCLEO_G071RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${NUCLEO_G071RB_MCU}
)
target_link_libraries(NUCLEO_G071RB INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_G0B1RE
# -----------------------------------------------------------------------------

set(NUCLEO_G0B1RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G0xx/G0B1RBT_G0B1R(C-E)(I-T)_G0C1R(C-E)(I-T)")
set(NUCLEO_G0B1RE_MAXSIZE 262144)
set(NUCLEO_G0B1RE_MAXDATASIZE 147456)
set(NUCLEO_G0B1RE_MCU cortex-m0plus)
add_library(NUCLEO_G0B1RE INTERFACE)
target_compile_options(NUCLEO_G0B1RE INTERFACE
  "SHELL:-DSTM32G0B1xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_G0B1RE_MCU}
)
target_compile_definitions(NUCLEO_G0B1RE INTERFACE
  "STM32G0xx"
	"ARDUINO_NUCLEO_G0B1RE"
	"BOARD_NAME=\"NUCLEO_G0B1RE\""
	"BOARD_ID=NUCLEO_G0B1RE"
	"VARIANT_H=\"variant_NUCLEO_G0B1RE.h\""
)
target_include_directories(NUCLEO_G0B1RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/
  ${NUCLEO_G0B1RE_VARIANT_PATH}
)

target_link_options(NUCLEO_G0B1RE INTERFACE
  "LINKER:--default-script=${NUCLEO_G0B1RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=147456"
  "SHELL:"
  -mcpu=${NUCLEO_G0B1RE_MCU}
)
target_link_libraries(NUCLEO_G0B1RE INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_G431KB
# -----------------------------------------------------------------------------

set(NUCLEO_G431KB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431K(6-8-B)(T-U)_G441KB(T-U)")
set(NUCLEO_G431KB_MAXSIZE 131072)
set(NUCLEO_G431KB_MAXDATASIZE 32768)
set(NUCLEO_G431KB_MCU cortex-m4)
add_library(NUCLEO_G431KB INTERFACE)
target_compile_options(NUCLEO_G431KB INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_G431KB_MCU}
)
target_compile_definitions(NUCLEO_G431KB INTERFACE
  "STM32G4xx"
	"ARDUINO_NUCLEO_G431KB"
	"BOARD_NAME=\"NUCLEO_G431KB\""
	"BOARD_ID=NUCLEO_G431KB"
	"VARIANT_H=\"variant_NUCLEO_G431KB.h\""
)
target_include_directories(NUCLEO_G431KB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${NUCLEO_G431KB_VARIANT_PATH}
)

target_link_options(NUCLEO_G431KB INTERFACE
  "LINKER:--default-script=${NUCLEO_G431KB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_G431KB_MCU}
)
target_link_libraries(NUCLEO_G431KB INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_G431RB
# -----------------------------------------------------------------------------

set(NUCLEO_G431RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G431R(6-8-B)(I-T)_G441RB(I-T)")
set(NUCLEO_G431RB_MAXSIZE 131072)
set(NUCLEO_G431RB_MAXDATASIZE 32768)
set(NUCLEO_G431RB_MCU cortex-m4)
add_library(NUCLEO_G431RB INTERFACE)
target_compile_options(NUCLEO_G431RB INTERFACE
  "SHELL:-DSTM32G431xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_G431RB_MCU}
)
target_compile_definitions(NUCLEO_G431RB INTERFACE
  "STM32G4xx"
	"ARDUINO_NUCLEO_G431RB"
	"BOARD_NAME=\"NUCLEO_G431RB\""
	"BOARD_ID=NUCLEO_G431RB"
	"VARIANT_H=\"variant_NUCLEO_G431RB.h\""
)
target_include_directories(NUCLEO_G431RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${NUCLEO_G431RB_VARIANT_PATH}
)

target_link_options(NUCLEO_G431RB INTERFACE
  "LINKER:--default-script=${NUCLEO_G431RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_G431RB_MCU}
)
target_link_libraries(NUCLEO_G431RB INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_G474RE
# -----------------------------------------------------------------------------

set(NUCLEO_G474RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32G4xx/G473R(B-C-E)T_G474R(B-C-E)T_G483RET_G484RET")
set(NUCLEO_G474RE_MAXSIZE 524288)
set(NUCLEO_G474RE_MAXDATASIZE 131072)
set(NUCLEO_G474RE_MCU cortex-m4)
add_library(NUCLEO_G474RE INTERFACE)
target_compile_options(NUCLEO_G474RE INTERFACE
  "SHELL:-DSTM32G474xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_G474RE_MCU}
)
target_compile_definitions(NUCLEO_G474RE INTERFACE
  "STM32G4xx"
	"ARDUINO_NUCLEO_G474RE"
	"BOARD_NAME=\"NUCLEO_G474RE\""
	"BOARD_ID=NUCLEO_G474RE"
	"VARIANT_H=\"variant_NUCLEO_G474RE.h\""
)
target_include_directories(NUCLEO_G474RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32G4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32G4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/
  ${NUCLEO_G474RE_VARIANT_PATH}
)

target_link_options(NUCLEO_G474RE INTERFACE
  "LINKER:--default-script=${NUCLEO_G474RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_G474RE_MCU}
)
target_link_libraries(NUCLEO_G474RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_H743ZI
# -----------------------------------------------------------------------------

set(NUCLEO_H743ZI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(NUCLEO_H743ZI_MAXSIZE 2097152)
set(NUCLEO_H743ZI_MAXDATASIZE 524288)
set(NUCLEO_H743ZI_MCU cortex-m7)
add_library(NUCLEO_H743ZI INTERFACE)
target_compile_options(NUCLEO_H743ZI INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_H743ZI_MCU}
)
target_compile_definitions(NUCLEO_H743ZI INTERFACE
  "STM32H7xx"
	"ARDUINO_NUCLEO_H743ZI"
	"BOARD_NAME=\"NUCLEO_H743ZI\""
	"BOARD_ID=NUCLEO_H743ZI"
	"VARIANT_H=\"variant_NUCLEO_H743ZI.h\""
)
target_include_directories(NUCLEO_H743ZI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${NUCLEO_H743ZI_VARIANT_PATH}
)

target_link_options(NUCLEO_H743ZI INTERFACE
  "LINKER:--default-script=${NUCLEO_H743ZI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_H743ZI_MCU}
)
target_link_libraries(NUCLEO_H743ZI INTERFACE
  arm_cortexM7lfsp_math
)

# NUCLEO_H743ZI2
# -----------------------------------------------------------------------------

set(NUCLEO_H743ZI2_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742Z(G-I)T_H743Z(G-I)T_H747A(G-I)I_H747I(G-I)T_H750ZBT_H753ZIT_H757AII_H757IIT")
set(NUCLEO_H743ZI2_MAXSIZE 2097152)
set(NUCLEO_H743ZI2_MAXDATASIZE 524288)
set(NUCLEO_H743ZI2_MCU cortex-m7)
add_library(NUCLEO_H743ZI2 INTERFACE)
target_compile_options(NUCLEO_H743ZI2 INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_H743ZI2_MCU}
)
target_compile_definitions(NUCLEO_H743ZI2 INTERFACE
  "STM32H7xx"
	"ARDUINO_NUCLEO_H743ZI2"
	"BOARD_NAME=\"NUCLEO_H743ZI2\""
	"BOARD_ID=NUCLEO_H743ZI2"
	"VARIANT_H=\"variant_NUCLEO_H743ZI.h\""
)
target_include_directories(NUCLEO_H743ZI2 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${NUCLEO_H743ZI2_VARIANT_PATH}
)

target_link_options(NUCLEO_H743ZI2 INTERFACE
  "LINKER:--default-script=${NUCLEO_H743ZI2_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_H743ZI2_MCU}
)
target_link_libraries(NUCLEO_H743ZI2 INTERFACE
  arm_cortexM7lfsp_math
)

# NUCLEO_L010RB
# -----------------------------------------------------------------------------

set(NUCLEO_L010RB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L010RBT")
set(NUCLEO_L010RB_MAXSIZE 131072)
set(NUCLEO_L010RB_MAXDATASIZE 20480)
set(NUCLEO_L010RB_MCU cortex-m0plus)
add_library(NUCLEO_L010RB INTERFACE)
target_compile_options(NUCLEO_L010RB INTERFACE
  "SHELL:-DSTM32L010xB   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_L010RB_MCU}
)
target_compile_definitions(NUCLEO_L010RB INTERFACE
  "STM32L0xx"
	"ARDUINO_NUCLEO_L010RB"
	"BOARD_NAME=\"NUCLEO_L010RB\""
	"BOARD_ID=NUCLEO_L010RB"
	"VARIANT_H=\"variant_NUCLEO_L010RB.h\""
)
target_include_directories(NUCLEO_L010RB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${NUCLEO_L010RB_VARIANT_PATH}
)

target_link_options(NUCLEO_L010RB INTERFACE
  "LINKER:--default-script=${NUCLEO_L010RB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${NUCLEO_L010RB_MCU}
)
target_link_libraries(NUCLEO_L010RB INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_L031K6
# -----------------------------------------------------------------------------

set(NUCLEO_L031K6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L031K(4-6)T_L041K6T")
set(NUCLEO_L031K6_MAXSIZE 32768)
set(NUCLEO_L031K6_MAXDATASIZE 8192)
set(NUCLEO_L031K6_MCU cortex-m0plus)
add_library(NUCLEO_L031K6 INTERFACE)
target_compile_options(NUCLEO_L031K6 INTERFACE
  "SHELL:-DSTM32L031xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_L031K6_MCU}
)
target_compile_definitions(NUCLEO_L031K6 INTERFACE
  "STM32L0xx"
	"ARDUINO_NUCLEO_L031K6"
	"BOARD_NAME=\"NUCLEO_L031K6\""
	"BOARD_ID=NUCLEO_L031K6"
	"VARIANT_H=\"variant_NUCLEO_L031K6.h\""
)
target_include_directories(NUCLEO_L031K6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${NUCLEO_L031K6_VARIANT_PATH}
)

target_link_options(NUCLEO_L031K6 INTERFACE
  "LINKER:--default-script=${NUCLEO_L031K6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${NUCLEO_L031K6_MCU}
)
target_link_libraries(NUCLEO_L031K6 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_L053R8
# -----------------------------------------------------------------------------

set(NUCLEO_L053R8_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L052R(6-8)T_L053R(6-8)T_L063R8T")
set(NUCLEO_L053R8_MAXSIZE 65536)
set(NUCLEO_L053R8_MAXDATASIZE 8192)
set(NUCLEO_L053R8_MCU cortex-m0plus)
add_library(NUCLEO_L053R8 INTERFACE)
target_compile_options(NUCLEO_L053R8 INTERFACE
  "SHELL:-DSTM32L053xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_L053R8_MCU}
)
target_compile_definitions(NUCLEO_L053R8 INTERFACE
  "STM32L0xx"
	"ARDUINO_NUCLEO_L053R8"
	"BOARD_NAME=\"NUCLEO_L053R8\""
	"BOARD_ID=NUCLEO_L053R8"
	"VARIANT_H=\"variant_NUCLEO_L053R8.h\""
)
target_include_directories(NUCLEO_L053R8 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${NUCLEO_L053R8_VARIANT_PATH}
)

target_link_options(NUCLEO_L053R8 INTERFACE
  "LINKER:--default-script=${NUCLEO_L053R8_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${NUCLEO_L053R8_MCU}
)
target_link_libraries(NUCLEO_L053R8 INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_L073RZ
# -----------------------------------------------------------------------------

set(NUCLEO_L073RZ_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(NUCLEO_L073RZ_MAXSIZE 196608)
set(NUCLEO_L073RZ_MAXDATASIZE 20480)
set(NUCLEO_L073RZ_MCU cortex-m0plus)
add_library(NUCLEO_L073RZ INTERFACE)
target_compile_options(NUCLEO_L073RZ INTERFACE
  "SHELL:-DSTM32L073xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_L073RZ_MCU}
)
target_compile_definitions(NUCLEO_L073RZ INTERFACE
  "STM32L0xx"
	"ARDUINO_NUCLEO_L073RZ"
	"BOARD_NAME=\"NUCLEO_L073RZ\""
	"BOARD_ID=NUCLEO_L073RZ"
	"VARIANT_H=\"variant_NUCLEO_L073RZ.h\""
)
target_include_directories(NUCLEO_L073RZ INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${NUCLEO_L073RZ_VARIANT_PATH}
)

target_link_options(NUCLEO_L073RZ INTERFACE
  "LINKER:--default-script=${NUCLEO_L073RZ_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${NUCLEO_L073RZ_MCU}
)
target_link_libraries(NUCLEO_L073RZ INTERFACE
  arm_cortexM0l_math
)

# NUCLEO_L152RE
# -----------------------------------------------------------------------------

set(NUCLEO_L152RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L151RET_L152RET_L162RET")
set(NUCLEO_L152RE_MAXSIZE 524288)
set(NUCLEO_L152RE_MAXDATASIZE 81920)
set(NUCLEO_L152RE_MCU cortex-m3)
add_library(NUCLEO_L152RE INTERFACE)
target_compile_options(NUCLEO_L152RE INTERFACE
  "SHELL:-DSTM32L152xE  "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_L152RE_MCU}
)
target_compile_definitions(NUCLEO_L152RE INTERFACE
  "STM32L1xx"
	"ARDUINO_NUCLEO_L152RE"
	"BOARD_NAME=\"NUCLEO_L152RE\""
	"BOARD_ID=NUCLEO_L152RE"
	"VARIANT_H=\"variant_NUCLEO_L152RE.h\""
)
target_include_directories(NUCLEO_L152RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${NUCLEO_L152RE_VARIANT_PATH}
)

target_link_options(NUCLEO_L152RE INTERFACE
  "LINKER:--default-script=${NUCLEO_L152RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=81920"
  "SHELL:"
  -mcpu=${NUCLEO_L152RE_MCU}
)
target_link_libraries(NUCLEO_L152RE INTERFACE
  arm_cortexM3l_math
)

# NUCLEO_L412KB
# -----------------------------------------------------------------------------

set(NUCLEO_L412KB_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L412K(8-B)(T-U)_L422KB(T-U)")
set(NUCLEO_L412KB_MAXSIZE 131072)
set(NUCLEO_L412KB_MAXDATASIZE 40960)
set(NUCLEO_L412KB_MCU cortex-m4)
add_library(NUCLEO_L412KB INTERFACE)
target_compile_options(NUCLEO_L412KB INTERFACE
  "SHELL:-DSTM32L412xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L412KB_MCU}
)
target_compile_definitions(NUCLEO_L412KB INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L412KB"
	"BOARD_NAME=\"NUCLEO_L412KB\""
	"BOARD_ID=NUCLEO_L412KB"
	"VARIANT_H=\"variant_NUCLEO_L412KB.h\""
)
target_include_directories(NUCLEO_L412KB INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L412KB_VARIANT_PATH}
)

target_link_options(NUCLEO_L412KB INTERFACE
  "LINKER:--default-script=${NUCLEO_L412KB_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L412KB_MCU}
)
target_link_libraries(NUCLEO_L412KB INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L432KC
# -----------------------------------------------------------------------------

set(NUCLEO_L432KC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L432K(B-C)U_L442KCU")
set(NUCLEO_L432KC_MAXSIZE 262144)
set(NUCLEO_L432KC_MAXDATASIZE 65536)
set(NUCLEO_L432KC_MCU cortex-m4)
add_library(NUCLEO_L432KC INTERFACE)
target_compile_options(NUCLEO_L432KC INTERFACE
  "SHELL:-DSTM32L432xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L432KC_MCU}
)
target_compile_definitions(NUCLEO_L432KC INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L432KC"
	"BOARD_NAME=\"NUCLEO_L432KC\""
	"BOARD_ID=NUCLEO_L432KC"
	"VARIANT_H=\"variant_NUCLEO_L432KC.h\""
)
target_include_directories(NUCLEO_L432KC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L432KC_VARIANT_PATH}
)

target_link_options(NUCLEO_L432KC INTERFACE
  "LINKER:--default-script=${NUCLEO_L432KC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L432KC_MCU}
)
target_link_libraries(NUCLEO_L432KC INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L433RC_P
# -----------------------------------------------------------------------------

set(NUCLEO_L433RC_P_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L433RCTxP")
set(NUCLEO_L433RC_P_MAXSIZE 262144)
set(NUCLEO_L433RC_P_MAXDATASIZE 65536)
set(NUCLEO_L433RC_P_MCU cortex-m4)
add_library(NUCLEO_L433RC_P INTERFACE)
target_compile_options(NUCLEO_L433RC_P INTERFACE
  "SHELL:-DSTM32L433xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L433RC_P_MCU}
)
target_compile_definitions(NUCLEO_L433RC_P INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L433RC_P"
	"BOARD_NAME=\"NUCLEO_L433RC_P\""
	"BOARD_ID=NUCLEO_L433RC_P"
	"VARIANT_H=\"variant_NUCLEO_L433RC_P.h\""
)
target_include_directories(NUCLEO_L433RC_P INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L433RC_P_VARIANT_PATH}
)

target_link_options(NUCLEO_L433RC_P INTERFACE
  "LINKER:--default-script=${NUCLEO_L433RC_P_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L433RC_P_MCU}
)
target_link_libraries(NUCLEO_L433RC_P INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L452RE
# -----------------------------------------------------------------------------

set(NUCLEO_L452RE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452R(C-E)(I-T-Y)_L462RE(I-T-Y)")
set(NUCLEO_L452RE_MAXSIZE 524288)
set(NUCLEO_L452RE_MAXDATASIZE 163840)
set(NUCLEO_L452RE_MCU cortex-m4)
add_library(NUCLEO_L452RE INTERFACE)
target_compile_options(NUCLEO_L452RE INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L452RE_MCU}
)
target_compile_definitions(NUCLEO_L452RE INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L452RE"
	"BOARD_NAME=\"NUCLEO_L452RE\""
	"BOARD_ID=NUCLEO_L452RE"
	"VARIANT_H=\"variant_NUCLEO_L452RE.h\""
)
target_include_directories(NUCLEO_L452RE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L452RE_VARIANT_PATH}
)

target_link_options(NUCLEO_L452RE INTERFACE
  "LINKER:--default-script=${NUCLEO_L452RE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L452RE_MCU}
)
target_link_libraries(NUCLEO_L452RE INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L452REP
# -----------------------------------------------------------------------------

set(NUCLEO_L452REP_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L452RETxP")
set(NUCLEO_L452REP_MAXSIZE 524288)
set(NUCLEO_L452REP_MAXDATASIZE 163840)
set(NUCLEO_L452REP_MCU cortex-m4)
add_library(NUCLEO_L452REP INTERFACE)
target_compile_options(NUCLEO_L452REP INTERFACE
  "SHELL:-DSTM32L452xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L452REP_MCU}
)
target_compile_definitions(NUCLEO_L452REP INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L452RE_P"
	"BOARD_NAME=\"NUCLEO_L452RE_P\""
	"BOARD_ID=NUCLEO_L452RE_P"
	"VARIANT_H=\"variant_NUCLEO_L452RE_P.h\""
)
target_include_directories(NUCLEO_L452REP INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L452REP_VARIANT_PATH}
)

target_link_options(NUCLEO_L452REP INTERFACE
  "LINKER:--default-script=${NUCLEO_L452REP_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=163840"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L452REP_MCU}
)
target_link_libraries(NUCLEO_L452REP INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L476RG
# -----------------------------------------------------------------------------

set(NUCLEO_L476RG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")
set(NUCLEO_L476RG_MAXSIZE 1048576)
set(NUCLEO_L476RG_MAXDATASIZE 98304)
set(NUCLEO_L476RG_MCU cortex-m4)
add_library(NUCLEO_L476RG INTERFACE)
target_compile_options(NUCLEO_L476RG INTERFACE
  "SHELL:-DSTM32L476xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L476RG_MCU}
)
target_compile_definitions(NUCLEO_L476RG INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L476RG"
	"BOARD_NAME=\"NUCLEO_L476RG\""
	"BOARD_ID=NUCLEO_L476RG"
	"VARIANT_H=\"variant_NUCLEO_L476RG.h\""
)
target_include_directories(NUCLEO_L476RG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L476RG_VARIANT_PATH}
)

target_link_options(NUCLEO_L476RG INTERFACE
  "LINKER:--default-script=${NUCLEO_L476RG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L476RG_MCU}
)
target_link_libraries(NUCLEO_L476RG INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L496ZG
# -----------------------------------------------------------------------------

set(NUCLEO_L496ZG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496Z(E-G)T_L4A6ZGT")
set(NUCLEO_L496ZG_MAXSIZE 1048576)
set(NUCLEO_L496ZG_MAXDATASIZE 327680)
set(NUCLEO_L496ZG_MCU cortex-m4)
add_library(NUCLEO_L496ZG INTERFACE)
target_compile_options(NUCLEO_L496ZG INTERFACE
  "SHELL:-DSTM32L496xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L496ZG_MCU}
)
target_compile_definitions(NUCLEO_L496ZG INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L496ZG"
	"BOARD_NAME=\"NUCLEO_L496ZG\""
	"BOARD_ID=NUCLEO_L496ZG"
	"VARIANT_H=\"variant_NUCLEO_L496ZG.h\""
)
target_include_directories(NUCLEO_L496ZG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L496ZG_VARIANT_PATH}
)

target_link_options(NUCLEO_L496ZG INTERFACE
  "LINKER:--default-script=${NUCLEO_L496ZG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L496ZG_MCU}
)
target_link_libraries(NUCLEO_L496ZG INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L496ZG-P
# -----------------------------------------------------------------------------

set(NUCLEO_L496ZG-P_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L496ZGTxP_L4A6ZGTxP")
set(NUCLEO_L496ZG-P_MAXSIZE 1048576)
set(NUCLEO_L496ZG-P_MAXDATASIZE 327680)
set(NUCLEO_L496ZG-P_MCU cortex-m4)
add_library(NUCLEO_L496ZG-P INTERFACE)
target_compile_options(NUCLEO_L496ZG-P INTERFACE
  "SHELL:-DSTM32L496xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L496ZG-P_MCU}
)
target_compile_definitions(NUCLEO_L496ZG-P INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L496ZG_P"
	"BOARD_NAME=\"NUCLEO_L496ZG_P\""
	"BOARD_ID=NUCLEO_L496ZG_P"
	"VARIANT_H=\"variant_NUCLEO_L496ZG_P.h\""
)
target_include_directories(NUCLEO_L496ZG-P INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L496ZG-P_VARIANT_PATH}
)

target_link_options(NUCLEO_L496ZG-P INTERFACE
  "LINKER:--default-script=${NUCLEO_L496ZG-P_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=327680"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L496ZG-P_MCU}
)
target_link_libraries(NUCLEO_L496ZG-P INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L4R5ZI
# -----------------------------------------------------------------------------

set(NUCLEO_L4R5ZI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)T_L4R7ZIT_L4S5ZIT_L4S7ZIT")
set(NUCLEO_L4R5ZI_MAXSIZE 2097152)
set(NUCLEO_L4R5ZI_MAXDATASIZE 655360)
set(NUCLEO_L4R5ZI_MCU cortex-m4)
add_library(NUCLEO_L4R5ZI INTERFACE)
target_compile_options(NUCLEO_L4R5ZI INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L4R5ZI_MCU}
)
target_compile_definitions(NUCLEO_L4R5ZI INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L4R5ZI"
	"BOARD_NAME=\"NUCLEO_L4R5ZI\""
	"BOARD_ID=NUCLEO_L4R5ZI"
	"VARIANT_H=\"variant_NUCLEO_L4R5ZI.h\""
)
target_include_directories(NUCLEO_L4R5ZI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L4R5ZI_VARIANT_PATH}
)

target_link_options(NUCLEO_L4R5ZI INTERFACE
  "LINKER:--default-script=${NUCLEO_L4R5ZI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L4R5ZI_MCU}
)
target_link_libraries(NUCLEO_L4R5ZI INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L4R5ZI_P
# -----------------------------------------------------------------------------

set(NUCLEO_L4R5ZI_P_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5ZITxP")
set(NUCLEO_L4R5ZI_P_MAXSIZE 2097152)
set(NUCLEO_L4R5ZI_P_MAXDATASIZE 655360)
set(NUCLEO_L4R5ZI_P_MCU cortex-m4)
add_library(NUCLEO_L4R5ZI_P INTERFACE)
target_compile_options(NUCLEO_L4R5ZI_P INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L4R5ZI_P_MCU}
)
target_compile_definitions(NUCLEO_L4R5ZI_P INTERFACE
  "STM32L4xx"
	"ARDUINO_NUCLEO_L4R5ZI_P"
	"BOARD_NAME=\"NUCLEO_L4R5ZI_P\""
	"BOARD_ID=NUCLEO_L4R5ZI_P"
	"VARIANT_H=\"variant_NUCLEO_L4R5ZI_P.h\""
)
target_include_directories(NUCLEO_L4R5ZI_P INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${NUCLEO_L4R5ZI_P_VARIANT_PATH}
)

target_link_options(NUCLEO_L4R5ZI_P INTERFACE
  "LINKER:--default-script=${NUCLEO_L4R5ZI_P_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L4R5ZI_P_MCU}
)
target_link_libraries(NUCLEO_L4R5ZI_P INTERFACE
  arm_cortexM4lf_math
)

# NUCLEO_L552ZE_Q
# -----------------------------------------------------------------------------

set(NUCLEO_L552ZE_Q_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L5xx/L552Z(C-E)TxQ_L562ZETxQ")
set(NUCLEO_L552ZE_Q_MAXSIZE 524288)
set(NUCLEO_L552ZE_Q_MAXDATASIZE 196608)
set(NUCLEO_L552ZE_Q_MCU cortex-m33)
add_library(NUCLEO_L552ZE_Q INTERFACE)
target_compile_options(NUCLEO_L552ZE_Q INTERFACE
  "SHELL:-DSTM32L552xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_L552ZE_Q_MCU}
)
target_compile_definitions(NUCLEO_L552ZE_Q INTERFACE
  "STM32L5xx"
	"ARDUINO_NUCLEO_L552ZE_Q"
	"BOARD_NAME=\"NUCLEO_L552ZE_Q\""
	"BOARD_ID=NUCLEO_L552ZE_Q"
	"VARIANT_H=\"variant_NUCLEO_L552ZE_Q.h\""
)
target_include_directories(NUCLEO_L552ZE_Q INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L5xx/Source/Templates/gcc/
  ${NUCLEO_L552ZE_Q_VARIANT_PATH}
)

target_link_options(NUCLEO_L552ZE_Q INTERFACE
  "LINKER:--default-script=${NUCLEO_L552ZE_Q_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_L552ZE_Q_MCU}
)
target_link_libraries(NUCLEO_L552ZE_Q INTERFACE
  arm_ARMv8MMLlfsp_math
)

# NUCLEO_U575ZI_Q
# -----------------------------------------------------------------------------

set(NUCLEO_U575ZI_Q_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32U5xx/U575Z(G-I)TxQ_U585ZETxQ")
set(NUCLEO_U575ZI_Q_MAXSIZE 2097152)
set(NUCLEO_U575ZI_Q_MAXDATASIZE 262144)
set(NUCLEO_U575ZI_Q_MCU cortex-m33)
add_library(NUCLEO_U575ZI_Q INTERFACE)
target_compile_options(NUCLEO_U575ZI_Q INTERFACE
  "SHELL:-DSTM32U575xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${NUCLEO_U575ZI_Q_MCU}
)
target_compile_definitions(NUCLEO_U575ZI_Q INTERFACE
  "STM32U5xx"
	"ARDUINO_NUCLEO_U575ZI_Q"
	"BOARD_NAME=\"NUCLEO_U575ZI_Q\""
	"BOARD_ID=NUCLEO_U575ZI_Q"
	"VARIANT_H=\"variant_NUCLEO_U575ZI_Q.h\""
)
target_include_directories(NUCLEO_U575ZI_Q INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32U5xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32U5xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/
  ${NUCLEO_U575ZI_Q_VARIANT_PATH}
)

target_link_options(NUCLEO_U575ZI_Q INTERFACE
  "LINKER:--default-script=${NUCLEO_U575ZI_Q_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${NUCLEO_U575ZI_Q_MCU}
)
target_link_libraries(NUCLEO_U575ZI_Q INTERFACE
  arm_ARMv8MMLlfsp_math
)

# NUCLEO_WL55JC1
# -----------------------------------------------------------------------------

set(NUCLEO_WL55JC1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WLxx/WL54JCI_WL55JCI_WLE4J(8-B-C)I_WLE5J(8-B-C)I")
set(NUCLEO_WL55JC1_MAXSIZE 262144)
set(NUCLEO_WL55JC1_MAXDATASIZE 65536)
set(NUCLEO_WL55JC1_MCU cortex-m4)
add_library(NUCLEO_WL55JC1 INTERFACE)
target_compile_options(NUCLEO_WL55JC1 INTERFACE
  "SHELL:-DSTM32WLE5xx -DUSE_CM4_STARTUP_FILE "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${NUCLEO_WL55JC1_MCU}
)
target_compile_definitions(NUCLEO_WL55JC1 INTERFACE
  "STM32WLxx"
	"ARDUINO_NUCLEO_WL55JC1"
	"BOARD_NAME=\"NUCLEO_WL55JC1\""
	"BOARD_ID=NUCLEO_WL55JC1"
	"VARIANT_H=\"variant_NUCLEO_WL55JC1.h\""
)
target_include_directories(NUCLEO_WL55JC1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WLxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WLxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WLxx/Source/Templates/gcc/
  ${NUCLEO_WL55JC1_VARIANT_PATH}
)

target_link_options(NUCLEO_WL55JC1 INTERFACE
  "LINKER:--default-script=${NUCLEO_WL55JC1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${NUCLEO_WL55JC1_MCU}
)
target_link_libraries(NUCLEO_WL55JC1 INTERFACE
  arm_cortexM4lf_math
)

# OLIMEXINO_STM32F3
# -----------------------------------------------------------------------------

set(OLIMEXINO_STM32F3_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303R(B-C)T")
set(OLIMEXINO_STM32F3_MAXSIZE 262144)
set(OLIMEXINO_STM32F3_MAXDATASIZE 40960)
set(OLIMEXINO_STM32F3_MCU cortex-m4)
add_library(OLIMEXINO_STM32F3 INTERFACE)
target_compile_options(OLIMEXINO_STM32F3 INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${OLIMEXINO_STM32F3_MCU}
)
target_compile_definitions(OLIMEXINO_STM32F3 INTERFACE
  "STM32F3xx"
	"ARDUINO_OLIMEXINO_STM32F3"
	"BOARD_NAME=\"OLIMEXINO_STM32F3\""
	"BOARD_ID=OLIMEXINO_STM32F3"
	"VARIANT_H=\"variant_OLIMEXINO_STM32F3.h\""
)
target_include_directories(OLIMEXINO_STM32F3 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${OLIMEXINO_STM32F3_VARIANT_PATH}
)

target_link_options(OLIMEXINO_STM32F3 INTERFACE
  "LINKER:--default-script=${OLIMEXINO_STM32F3_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${OLIMEXINO_STM32F3_MCU}
)
target_link_libraries(OLIMEXINO_STM32F3 INTERFACE
  arm_cortexM4lf_math
)

# P_NUCLEO_WB55RG
# -----------------------------------------------------------------------------

set(P_NUCLEO_WB55RG_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB55R(C-E-G)V")
set(P_NUCLEO_WB55RG_MAXSIZE 524288)
set(P_NUCLEO_WB55RG_MAXDATASIZE 196608)
set(P_NUCLEO_WB55RG_MCU cortex-m4)
add_library(P_NUCLEO_WB55RG INTERFACE)
target_compile_options(P_NUCLEO_WB55RG INTERFACE
  "SHELL:-DSTM32WB55xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${P_NUCLEO_WB55RG_MCU}
)
target_compile_definitions(P_NUCLEO_WB55RG INTERFACE
  "STM32WBxx"
	"ARDUINO_P_NUCLEO_WB55RG"
	"BOARD_NAME=\"P_NUCLEO_WB55RG\""
	"BOARD_ID=P_NUCLEO_WB55RG"
	"VARIANT_H=\"variant_P_NUCLEO_WB55RG.h\""
)
target_include_directories(P_NUCLEO_WB55RG INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${P_NUCLEO_WB55RG_VARIANT_PATH}
)

target_link_options(P_NUCLEO_WB55RG INTERFACE
  "LINKER:--default-script=${P_NUCLEO_WB55RG_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${P_NUCLEO_WB55RG_MCU}
)
target_link_libraries(P_NUCLEO_WB55RG INTERFACE
  arm_cortexM4lf_math
)

# PRNTR_V1
# -----------------------------------------------------------------------------

set(PRNTR_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(PRNTR_V1_MAXSIZE 524288)
set(PRNTR_V1_MAXDATASIZE 131072)
set(PRNTR_V1_MCU cortex-m4)
add_library(PRNTR_V1 INTERFACE)
target_compile_options(PRNTR_V1 INTERFACE
  "SHELL:-DSTM32F407xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${PRNTR_V1_MCU}
)
target_compile_definitions(PRNTR_V1 INTERFACE
  "STM32F4xx"
	"ARDUINO_PRNTR_V1"
	"BOARD_NAME=\"PRNTR_V1\""
	"BOARD_ID=PRNTR_V1"
	"VARIANT_H=\"variant_PRNTR_V1.h\""
)
target_include_directories(PRNTR_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${PRNTR_V1_VARIANT_PATH}
)

target_link_options(PRNTR_V1 INTERFACE
  "LINKER:--default-script=${PRNTR_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${PRNTR_V1_MCU}
)
target_link_libraries(PRNTR_V1 INTERFACE
  arm_cortexM4lf_math
)

# PRNTR_V2
# -----------------------------------------------------------------------------

set(PRNTR_V2_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407V(E-G)T_F417V(E-G)T")
set(PRNTR_V2_MAXSIZE 524288)
set(PRNTR_V2_MAXDATASIZE 131072)
set(PRNTR_V2_MCU cortex-m4)
add_library(PRNTR_V2 INTERFACE)
target_compile_options(PRNTR_V2 INTERFACE
  "SHELL:-DSTM32F407xx   -DVECT_TAB_OFFSET=0x8000"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${PRNTR_V2_MCU}
)
target_compile_definitions(PRNTR_V2 INTERFACE
  "STM32F4xx"
	"ARDUINO_PRNTR_V2"
	"BOARD_NAME=\"PRNTR_V2\""
	"BOARD_ID=PRNTR_V2"
	"VARIANT_H=\"variant_PRNTR_V2.h\""
)
target_include_directories(PRNTR_V2 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${PRNTR_V2_VARIANT_PATH}
)

target_link_options(PRNTR_V2 INTERFACE
  "LINKER:--default-script=${PRNTR_V2_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x8000"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${PRNTR_V2_MCU}
)
target_link_libraries(PRNTR_V2 INTERFACE
  arm_cortexM4lf_math
)

# PX_HER0
# -----------------------------------------------------------------------------

set(PX_HER0_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072R(B-Z)T_L073R(B-Z)T_L083R(B-Z)T")
set(PX_HER0_MAXSIZE 131072)
set(PX_HER0_MAXDATASIZE 20480)
set(PX_HER0_MCU cortex-m0plus)
add_library(PX_HER0 INTERFACE)
target_compile_options(PX_HER0 INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${PX_HER0_MCU}
)
target_compile_definitions(PX_HER0 INTERFACE
  "STM32L0xx"
	"ARDUINO_PX_HER0"
	"BOARD_NAME=\"PX_HER0\""
	"BOARD_ID=PX_HER0"
	"VARIANT_H=\"variant_PX_HER0.h\""
)
target_include_directories(PX_HER0 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${PX_HER0_VARIANT_PATH}
)

target_link_options(PX_HER0 INTERFACE
  "LINKER:--default-script=${PX_HER0_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${PX_HER0_MCU}
)
target_link_libraries(PX_HER0 INTERFACE
  arm_cortexM0l_math
)

# PYBSTICK26_DUINO
# -----------------------------------------------------------------------------

set(PYBSTICK26_DUINO_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F072R8T_F072RB(H-I-T)")
set(PYBSTICK26_DUINO_MAXSIZE 131072)
set(PYBSTICK26_DUINO_MAXDATASIZE 16384)
set(PYBSTICK26_DUINO_MCU cortex-m0)
add_library(PYBSTICK26_DUINO INTERFACE)
target_compile_options(PYBSTICK26_DUINO INTERFACE
  "SHELL:-DSTM32F072xB  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${PYBSTICK26_DUINO_MCU}
)
target_compile_definitions(PYBSTICK26_DUINO INTERFACE
  "STM32F0xx"
	"ARDUINO_PYBSTICK26_DUINO"
	"BOARD_NAME=\"PYBSTICK26_DUINO\""
	"BOARD_ID=PYBSTICK26_DUINO"
	"VARIANT_H=\"variant_PYBSTICK26_DUINO.h\""
)
target_include_directories(PYBSTICK26_DUINO INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${PYBSTICK26_DUINO_VARIANT_PATH}
)

target_link_options(PYBSTICK26_DUINO INTERFACE
  "LINKER:--default-script=${PYBSTICK26_DUINO_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${PYBSTICK26_DUINO_MCU}
)
target_link_libraries(PYBSTICK26_DUINO INTERFACE
  arm_cortexM0l_math
)

# PYBSTICK26_LITE
# -----------------------------------------------------------------------------

set(PYBSTICK26_LITE_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401CC(F-U-Y)_F401C(B-D-E)(U-Y)")
set(PYBSTICK26_LITE_MAXSIZE 524288)
set(PYBSTICK26_LITE_MAXDATASIZE 98304)
set(PYBSTICK26_LITE_MCU cortex-m4)
add_library(PYBSTICK26_LITE INTERFACE)
target_compile_options(PYBSTICK26_LITE INTERFACE
  "SHELL:-DSTM32F401xE  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${PYBSTICK26_LITE_MCU}
)
target_compile_definitions(PYBSTICK26_LITE INTERFACE
  "STM32F4xx"
	"ARDUINO_PYBSTICK26_LITE"
	"BOARD_NAME=\"PYBSTICK26_LITE\""
	"BOARD_ID=PYBSTICK26_LITE"
	"VARIANT_H=\"variant_PYBSTICK26_LITE.h\""
)
target_include_directories(PYBSTICK26_LITE INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${PYBSTICK26_LITE_VARIANT_PATH}
)

target_link_options(PYBSTICK26_LITE INTERFACE
  "LINKER:--default-script=${PYBSTICK26_LITE_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${PYBSTICK26_LITE_MCU}
)
target_link_libraries(PYBSTICK26_LITE INTERFACE
  arm_cortexM4lf_math
)

# PYBSTICK26_PRO
# -----------------------------------------------------------------------------

set(PYBSTICK26_PRO_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F412R(E-G)(T-Y)x(P)")
set(PYBSTICK26_PRO_MAXSIZE 524288)
set(PYBSTICK26_PRO_MAXDATASIZE 262144)
set(PYBSTICK26_PRO_MCU cortex-m4)
add_library(PYBSTICK26_PRO INTERFACE)
target_compile_options(PYBSTICK26_PRO INTERFACE
  "SHELL:-DSTM32F412Rx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${PYBSTICK26_PRO_MCU}
)
target_compile_definitions(PYBSTICK26_PRO INTERFACE
  "STM32F4xx"
	"ARDUINO_PYBSTICK26_PRO"
	"BOARD_NAME=\"PYBSTICK26_PRO\""
	"BOARD_ID=PYBSTICK26_PRO"
	"VARIANT_H=\"variant_PYBSTICK26_PRO.h\""
)
target_include_directories(PYBSTICK26_PRO INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${PYBSTICK26_PRO_VARIANT_PATH}
)

target_link_options(PYBSTICK26_PRO INTERFACE
  "LINKER:--default-script=${PYBSTICK26_PRO_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=262144"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${PYBSTICK26_PRO_MCU}
)
target_link_libraries(PYBSTICK26_PRO INTERFACE
  arm_cortexM4lf_math
)

# PYBSTICK26_STD
# -----------------------------------------------------------------------------

set(PYBSTICK26_STD_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411R(C-E)T")
set(PYBSTICK26_STD_MAXSIZE 524288)
set(PYBSTICK26_STD_MAXDATASIZE 131072)
set(PYBSTICK26_STD_MCU cortex-m4)
add_library(PYBSTICK26_STD INTERFACE)
target_compile_options(PYBSTICK26_STD INTERFACE
  "SHELL:-DSTM32F411xE  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${PYBSTICK26_STD_MCU}
)
target_compile_definitions(PYBSTICK26_STD INTERFACE
  "STM32F4xx"
	"ARDUINO_PYBSTICK26_STD"
	"BOARD_NAME=\"PYBSTICK26_STD\""
	"BOARD_ID=PYBSTICK26_STD"
	"VARIANT_H=\"variant_PYBSTICK26_STD.h\""
)
target_include_directories(PYBSTICK26_STD INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${PYBSTICK26_STD_VARIANT_PATH}
)

target_link_options(PYBSTICK26_STD INTERFACE
  "LINKER:--default-script=${PYBSTICK26_STD_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${PYBSTICK26_STD_MCU}
)
target_link_libraries(PYBSTICK26_STD INTERFACE
  arm_cortexM4lf_math
)

# RAK811_TRACKER
# -----------------------------------------------------------------------------

set(RAK811_TRACKER_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(RAK811_TRACKER_MAXSIZE 131072)
set(RAK811_TRACKER_MAXDATASIZE 16384)
set(RAK811_TRACKER_MCU cortex-m3)
add_library(RAK811_TRACKER INTERFACE)
target_compile_options(RAK811_TRACKER INTERFACE
  "SHELL:-DSTM32L151xB  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${RAK811_TRACKER_MCU}
)
target_compile_definitions(RAK811_TRACKER INTERFACE
  "STM32L1xx"
	"ARDUINO_RAK811_TRACKER"
	"BOARD_NAME=\"RAK811_TRACKER\""
	"BOARD_ID=RAK811_TRACKER"
	"VARIANT_H=\"variant_RAK811_TRACKER.h\""
)
target_include_directories(RAK811_TRACKER INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${RAK811_TRACKER_VARIANT_PATH}
)

target_link_options(RAK811_TRACKER INTERFACE
  "LINKER:--default-script=${RAK811_TRACKER_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=16384"
  "SHELL:"
  -mcpu=${RAK811_TRACKER_MCU}
)
target_link_libraries(RAK811_TRACKER INTERFACE
  arm_cortexM3l_math
)

# RAK811_TRACKERA
# -----------------------------------------------------------------------------

set(RAK811_TRACKERA_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L1xx/L100C6Ux(A)_L151C(6-8-B)(T-U)x(A)_L152C(6-8-B)(T-U)x(A)")
set(RAK811_TRACKERA_MAXSIZE 131072)
set(RAK811_TRACKERA_MAXDATASIZE 32768)
set(RAK811_TRACKERA_MCU cortex-m3)
add_library(RAK811_TRACKERA INTERFACE)
target_compile_options(RAK811_TRACKERA INTERFACE
  "SHELL:-DSTM32L151xBA  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${RAK811_TRACKERA_MCU}
)
target_compile_definitions(RAK811_TRACKERA INTERFACE
  "STM32L1xx"
	"ARDUINO_RAK811_TRACKERA"
	"BOARD_NAME=\"RAK811_TRACKERA\""
	"BOARD_ID=RAK811_TRACKERA"
	"VARIANT_H=\"variant_RAK811_TRACKER.h\""
)
target_include_directories(RAK811_TRACKERA INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L1xx/Source/Templates/gcc/
  ${RAK811_TRACKERA_VARIANT_PATH}
)

target_link_options(RAK811_TRACKERA INTERFACE
  "LINKER:--default-script=${RAK811_TRACKERA_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=32768"
  "SHELL:"
  -mcpu=${RAK811_TRACKERA_MCU}
)
target_link_libraries(RAK811_TRACKERA INTERFACE
  arm_cortexM3l_math
)

# REMRAM_V1
# -----------------------------------------------------------------------------

set(REMRAM_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F7xx/F765V(G-I)(H-T)_F767V(G-I)(H-T)_F777VI(H-T)")
set(REMRAM_V1_MAXSIZE 2097152)
set(REMRAM_V1_MAXDATASIZE 524288)
set(REMRAM_V1_MCU cortex-m7)
add_library(REMRAM_V1 INTERFACE)
target_compile_options(REMRAM_V1 INTERFACE
  "SHELL:-DSTM32F765xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${REMRAM_V1_MCU}
)
target_compile_definitions(REMRAM_V1 INTERFACE
  "STM32F7xx"
	"ARDUINO_REMRAM_V1"
	"BOARD_NAME=\"REMRAM_V1\""
	"BOARD_ID=REMRAM_V1"
	"VARIANT_H=\"variant_REMRAM_V1.h\""
)
target_include_directories(REMRAM_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/
  ${REMRAM_V1_VARIANT_PATH}
)

target_link_options(REMRAM_V1 INTERFACE
  "LINKER:--default-script=${REMRAM_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${REMRAM_V1_MCU}
)
target_link_libraries(REMRAM_V1 INTERFACE
  arm_cortexM7lfsp_math
)

# RHF76_052
# -----------------------------------------------------------------------------

set(RHF76_052_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L051C(6-8)(T-U)")
set(RHF76_052_MAXSIZE 65536)
set(RHF76_052_MAXDATASIZE 8192)
set(RHF76_052_MCU cortex-m0plus)
add_library(RHF76_052 INTERFACE)
target_compile_options(RHF76_052 INTERFACE
  "SHELL:-DSTM32L051xx   -D__CORTEX_SC=0"
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${RHF76_052_MCU}
)
target_compile_definitions(RHF76_052 INTERFACE
  "STM32L0xx"
	"ARDUINO_RHF76_052"
	"BOARD_NAME=\"RHF76_052\""
	"BOARD_ID=RHF76_052"
	"VARIANT_H=\"variant_RHF76_052.h\""
)
target_include_directories(RHF76_052 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${RHF76_052_VARIANT_PATH}
)

target_link_options(RHF76_052 INTERFACE
  "LINKER:--default-script=${RHF76_052_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=65536"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=8192"
  "SHELL:"
  -mcpu=${RHF76_052_MCU}
)
target_link_libraries(RHF76_052 INTERFACE
  arm_cortexM0l_math
)

# RUMBA32
# -----------------------------------------------------------------------------

set(RUMBA32_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446V(C-E)T")
set(RUMBA32_MAXSIZE 524288)
set(RUMBA32_MAXDATASIZE 131072)
set(RUMBA32_MCU cortex-m4)
add_library(RUMBA32 INTERFACE)
target_compile_options(RUMBA32 INTERFACE
  "SHELL:-DSTM32F446xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${RUMBA32_MCU}
)
target_compile_definitions(RUMBA32 INTERFACE
  "STM32F4xx"
	"ARDUINO_RUMBA32"
	"BOARD_NAME=\"RUMBA32\""
	"BOARD_ID=RUMBA32"
	"VARIANT_H=\"variant_RUMBA32.h\""
)
target_include_directories(RUMBA32 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${RUMBA32_VARIANT_PATH}
)

target_link_options(RUMBA32 INTERFACE
  "LINKER:--default-script=${RUMBA32_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${RUMBA32_MCU}
)
target_link_libraries(RUMBA32 INTERFACE
  arm_cortexM4lf_math
)

# Sparky_V1
# -----------------------------------------------------------------------------

set(Sparky_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F3xx/F303C(B-C)T")
set(Sparky_V1_MAXSIZE 262144)
set(Sparky_V1_MAXDATASIZE 40960)
set(Sparky_V1_MCU cortex-m4)
add_library(Sparky_V1 INTERFACE)
target_compile_options(Sparky_V1 INTERFACE
  "SHELL:-DSTM32F303xC   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${Sparky_V1_MCU}
)
target_compile_definitions(Sparky_V1 INTERFACE
  "STM32F3xx"
	"ARDUINO_SPARKY_F303CC"
	"BOARD_NAME=\"SPARKY_F303CC\""
	"BOARD_ID=SPARKY_F303CC"
	"VARIANT_H=\"variant_SPARKY_F303CC.h\""
)
target_include_directories(Sparky_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F3xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F3xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/
  ${Sparky_V1_VARIANT_PATH}
)

target_link_options(Sparky_V1 INTERFACE
  "LINKER:--default-script=${Sparky_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=40960"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${Sparky_V1_MCU}
)
target_link_libraries(Sparky_V1 INTERFACE
  arm_cortexM4lf_math
)

# ST3DP001_EVAL
# -----------------------------------------------------------------------------

set(ST3DP001_EVAL_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F401V(B-C-D-E)T")
set(ST3DP001_EVAL_MAXSIZE 524288)
set(ST3DP001_EVAL_MAXDATASIZE 98304)
set(ST3DP001_EVAL_MCU cortex-m4)
add_library(ST3DP001_EVAL INTERFACE)
target_compile_options(ST3DP001_EVAL INTERFACE
  "SHELL:-DSTM32F401xE  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${ST3DP001_EVAL_MCU}
)
target_compile_definitions(ST3DP001_EVAL INTERFACE
  "STM32F4xx"
	"ARDUINO_ST3DP001_EVAL"
	"BOARD_NAME=\"ST3DP001_EVAL\""
	"BOARD_ID=ST3DP001_EVAL"
	"VARIANT_H=\"variant_ST3DP001_EVAL.h\""
)
target_include_directories(ST3DP001_EVAL INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${ST3DP001_EVAL_VARIANT_PATH}
)

target_link_options(ST3DP001_EVAL INTERFACE
  "LINKER:--default-script=${ST3DP001_EVAL_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=98304"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${ST3DP001_EVAL_MCU}
)
target_link_libraries(ST3DP001_EVAL INTERFACE
  arm_cortexM4lf_math
)

# STEVAL_MKSBOX1V1
# -----------------------------------------------------------------------------

set(STEVAL_MKSBOX1V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R9Z(G-I)J_L4S9ZIJ")
set(STEVAL_MKSBOX1V1_MAXSIZE 2097152)
set(STEVAL_MKSBOX1V1_MAXDATASIZE 655360)
set(STEVAL_MKSBOX1V1_MCU cortex-m4)
add_library(STEVAL_MKSBOX1V1 INTERFACE)
target_compile_options(STEVAL_MKSBOX1V1 INTERFACE
  "SHELL:-DSTM32L4R9xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${STEVAL_MKSBOX1V1_MCU}
)
target_compile_definitions(STEVAL_MKSBOX1V1 INTERFACE
  "STM32L4xx"
	"ARDUINO_STEVAL_MKSBOX1V1"
	"BOARD_NAME=\"STEVAL_MKSBOX1V1\""
	"BOARD_ID=STEVAL_MKSBOX1V1"
	"VARIANT_H=\"variant_STEVAL_MKSBOX1V1.h\""
)
target_include_directories(STEVAL_MKSBOX1V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${STEVAL_MKSBOX1V1_VARIANT_PATH}
)

target_link_options(STEVAL_MKSBOX1V1 INTERFACE
  "LINKER:--default-script=${STEVAL_MKSBOX1V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${STEVAL_MKSBOX1V1_MCU}
)
target_link_libraries(STEVAL_MKSBOX1V1 INTERFACE
  arm_cortexM4lf_math
)

# STM32MP157A_DK1
# -----------------------------------------------------------------------------

set(STM32MP157A_DK1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32MP1xx/MP153AAC_MP153CAC_MP153DAC_MP153FAC_MP157AAC_MP157CAC_MP157DAC_MP157FAC")
set(STM32MP157A_DK1_MAXSIZE 131072)
set(STM32MP157A_DK1_MAXDATASIZE 131072)
set(STM32MP157A_DK1_MCU cortex-m4)
add_library(STM32MP157A_DK1 INTERFACE)
target_compile_options(STM32MP157A_DK1 INTERFACE
  "SHELL:-DCORE_CM4 -DSTM32MP157Axx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${STM32MP157A_DK1_MCU}
)
target_compile_definitions(STM32MP157A_DK1 INTERFACE
  "STM32MP1xx"
	"ARDUINO_STM32MP157A_DK1"
	"BOARD_NAME=\"STM32MP157A_DK1\""
	"BOARD_ID=STM32MP157A_DK1"
	"VARIANT_H=\"variant_STM32MP157_DK.h\""
)
target_include_directories(STM32MP157A_DK1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32MP1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32MP1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32MP1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32MP1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/
  ${STM32MP157A_DK1_VARIANT_PATH}
)

target_link_options(STM32MP157A_DK1 INTERFACE
  "LINKER:--default-script=${STM32MP157A_DK1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${STM32MP157A_DK1_MCU}
)
target_link_libraries(STM32MP157A_DK1 INTERFACE
  arm_cortexM4l_math
)

# STM32MP157C_DK2
# -----------------------------------------------------------------------------

set(STM32MP157C_DK2_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32MP1xx/MP153AAC_MP153CAC_MP153DAC_MP153FAC_MP157AAC_MP157CAC_MP157DAC_MP157FAC")
set(STM32MP157C_DK2_MAXSIZE 131072)
set(STM32MP157C_DK2_MAXDATASIZE 131072)
set(STM32MP157C_DK2_MCU cortex-m4)
add_library(STM32MP157C_DK2 INTERFACE)
target_compile_options(STM32MP157C_DK2 INTERFACE
  "SHELL:-DCORE_CM4 -DSTM32MP157Cxx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${STM32MP157C_DK2_MCU}
)
target_compile_definitions(STM32MP157C_DK2 INTERFACE
  "STM32MP1xx"
	"ARDUINO_STM32MP157C_DK2"
	"BOARD_NAME=\"STM32MP157C_DK2\""
	"BOARD_ID=STM32MP157C_DK2"
	"VARIANT_H=\"variant_STM32MP157_DK.h\""
)
target_include_directories(STM32MP157C_DK2 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32MP1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32MP1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32MP1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32MP1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/
  ${STM32MP157C_DK2_VARIANT_PATH}
)

target_link_options(STM32MP157C_DK2 INTERFACE
  "LINKER:--default-script=${STM32MP157C_DK2_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${STM32MP157C_DK2_MCU}
)
target_link_libraries(STM32MP157C_DK2 INTERFACE
  arm_cortexM4l_math
)

# STM32WB5MM_DK
# -----------------------------------------------------------------------------

set(STM32WB5MM_DK_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32WBxx/WB5MMGH")
set(STM32WB5MM_DK_MAXSIZE 827392)
set(STM32WB5MM_DK_MAXDATASIZE 196608)
set(STM32WB5MM_DK_MCU cortex-m4)
add_library(STM32WB5MM_DK INTERFACE)
target_compile_options(STM32WB5MM_DK INTERFACE
  "SHELL:-DSTM32WB5Mxx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${STM32WB5MM_DK_MCU}
)
target_compile_definitions(STM32WB5MM_DK INTERFACE
  "STM32WBxx"
	"ARDUINO_STM32WB5MM_DK"
	"BOARD_NAME=\"STM32WB5MM_DK\""
	"BOARD_ID=STM32WB5MM_DK"
	"VARIANT_H=\"variant_STM32WB5MM_DK.h\""
)
target_include_directories(STM32WB5MM_DK INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32WBxx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32WBxx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/gcc/
  ${STM32WB5MM_DK_VARIANT_PATH}
)

target_link_options(STM32WB5MM_DK INTERFACE
  "LINKER:--default-script=${STM32WB5MM_DK_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=827392"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=196608"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${STM32WB5MM_DK_MCU}
)
target_link_libraries(STM32WB5MM_DK INTERFACE
  arm_cortexM4lf_math
)

# STORM32_V1_31_RC
# -----------------------------------------------------------------------------

set(STORM32_V1_31_RC_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103R(C-D-E)T")
set(STORM32_V1_31_RC_MAXSIZE 262144)
set(STORM32_V1_31_RC_MAXDATASIZE 49152)
set(STORM32_V1_31_RC_MCU cortex-m3)
add_library(STORM32_V1_31_RC INTERFACE)
target_compile_options(STORM32_V1_31_RC INTERFACE
  "SHELL:-DSTM32F103xE  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${STORM32_V1_31_RC_MCU}
)
target_compile_definitions(STORM32_V1_31_RC INTERFACE
  "STM32F1xx"
	"ARDUINO_STORM32_V1_31_RC"
	"BOARD_NAME=\"STORM32_V1_31_RC\""
	"BOARD_ID=STORM32_V1_31_RC"
	"VARIANT_H=\"variant_STORM32_V1_31_RC.h\""
)
target_include_directories(STORM32_V1_31_RC INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${STORM32_V1_31_RC_VARIANT_PATH}
)

target_link_options(STORM32_V1_31_RC INTERFACE
  "LINKER:--default-script=${STORM32_V1_31_RC_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=262144"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=49152"
  "SHELL:"
  -mcpu=${STORM32_V1_31_RC_MCU}
)
target_link_libraries(STORM32_V1_31_RC INTERFACE
  arm_cortexM3l_math
)

# SWAN_R5
# -----------------------------------------------------------------------------

set(SWAN_R5_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY")
set(SWAN_R5_MAXSIZE 2097152)
set(SWAN_R5_MAXDATASIZE 655360)
set(SWAN_R5_MCU cortex-m4)
add_library(SWAN_R5 INTERFACE)
target_compile_options(SWAN_R5 INTERFACE
  "SHELL:-DSTM32L4R5xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${SWAN_R5_MCU}
)
target_compile_definitions(SWAN_R5 INTERFACE
  "STM32L4xx"
	"ARDUINO_SWAN_R5"
	"BOARD_NAME=\"SWAN_R5\""
	"BOARD_ID=SWAN_R5"
	"VARIANT_H=\"variant_SWAN_R5.h\""
)
target_include_directories(SWAN_R5 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/
  ${SWAN_R5_VARIANT_PATH}
)

target_link_options(SWAN_R5 INTERFACE
  "LINKER:--default-script=${SWAN_R5_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=655360"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${SWAN_R5_MCU}
)
target_link_libraries(SWAN_R5 INTERFACE
  arm_cortexM4lf_math
)

# THUNDERPACK_F411
# -----------------------------------------------------------------------------

set(THUNDERPACK_F411_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F411C(C-E)(U-Y)")
set(THUNDERPACK_F411_MAXSIZE 524288)
set(THUNDERPACK_F411_MAXDATASIZE 131072)
set(THUNDERPACK_F411_MCU cortex-m4)
add_library(THUNDERPACK_F411 INTERFACE)
target_compile_options(THUNDERPACK_F411 INTERFACE
  "SHELL:-DSTM32F411xE   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${THUNDERPACK_F411_MCU}
)
target_compile_definitions(THUNDERPACK_F411 INTERFACE
  "STM32F4xx"
	"ARDUINO_THUNDERPACK_F411"
	"BOARD_NAME=\"THUNDERPACK_F411\""
	"BOARD_ID=THUNDERPACK_F411"
	"VARIANT_H=\"variant_THUNDERPACK_F411.h\""
)
target_include_directories(THUNDERPACK_F411 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${THUNDERPACK_F411_VARIANT_PATH}
)

target_link_options(THUNDERPACK_F411 INTERFACE
  "LINKER:--default-script=${THUNDERPACK_F411_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${THUNDERPACK_F411_MCU}
)
target_link_libraries(THUNDERPACK_F411 INTERFACE
  arm_cortexM4lf_math
)

# THUNDERPACK_L072
# -----------------------------------------------------------------------------

set(THUNDERPACK_L072_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T")
set(THUNDERPACK_L072_MAXSIZE 196608)
set(THUNDERPACK_L072_MAXDATASIZE 20480)
set(THUNDERPACK_L072_MCU cortex-m0plus)
add_library(THUNDERPACK_L072 INTERFACE)
target_compile_options(THUNDERPACK_L072 INTERFACE
  "SHELL:-DSTM32L072xx   -D__CORTEX_SC=0"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${THUNDERPACK_L072_MCU}
)
target_compile_definitions(THUNDERPACK_L072 INTERFACE
  "STM32L0xx"
	"ARDUINO_THUNDERPACK_L072"
	"BOARD_NAME=\"THUNDERPACK_L072\""
	"BOARD_ID=THUNDERPACK_L072"
	"VARIANT_H=\"variant_THUNDERPACK_L072.h\""
)
target_include_directories(THUNDERPACK_L072 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32L0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32L0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/
  ${THUNDERPACK_L072_VARIANT_PATH}
)

target_link_options(THUNDERPACK_L072 INTERFACE
  "LINKER:--default-script=${THUNDERPACK_L072_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=196608"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=20480"
  "SHELL:"
  -mcpu=${THUNDERPACK_L072_MCU}
)
target_link_libraries(THUNDERPACK_L072 INTERFACE
  arm_cortexM0l_math
)

# VAKE_V1
# -----------------------------------------------------------------------------

set(VAKE_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F446V(C-E)T")
set(VAKE_V1_MAXSIZE 524288)
set(VAKE_V1_MAXDATASIZE 131072)
set(VAKE_V1_MCU cortex-m4)
add_library(VAKE_V1 INTERFACE)
target_compile_options(VAKE_V1 INTERFACE
  "SHELL:-DSTM32F446xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${VAKE_V1_MCU}
)
target_compile_definitions(VAKE_V1 INTERFACE
  "STM32F4xx"
	"ARDUINO_VAKE_V1"
	"BOARD_NAME=\"VAKE_V1\""
	"BOARD_ID=VAKE_V1"
	"VARIANT_H=\"variant_VAKE_V1.h\""
)
target_include_directories(VAKE_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${VAKE_V1_VARIANT_PATH}
)

target_link_options(VAKE_V1 INTERFACE
  "LINKER:--default-script=${VAKE_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${VAKE_V1_MCU}
)
target_link_libraries(VAKE_V1 INTERFACE
  arm_cortexM4lf_math
)

# VCCGND_F103ZET6
# -----------------------------------------------------------------------------

set(VCCGND_F103ZET6_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(VCCGND_F103ZET6_MAXSIZE 524288)
set(VCCGND_F103ZET6_MAXDATASIZE 65536)
set(VCCGND_F103ZET6_MCU cortex-m3)
add_library(VCCGND_F103ZET6 INTERFACE)
target_compile_options(VCCGND_F103ZET6 INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${VCCGND_F103ZET6_MCU}
)
target_compile_definitions(VCCGND_F103ZET6 INTERFACE
  "STM32F1xx"
	"ARDUINO_VCCGND_F103ZET6"
	"BOARD_NAME=\"VCCGND_F103ZET6\""
	"BOARD_ID=VCCGND_F103ZET6"
	"VARIANT_H=\"variant_VCCGND_F103ZET6.h\""
)
target_include_directories(VCCGND_F103ZET6 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${VCCGND_F103ZET6_VARIANT_PATH}
)

target_link_options(VCCGND_F103ZET6 INTERFACE
  "LINKER:--default-script=${VCCGND_F103ZET6_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${VCCGND_F103ZET6_MCU}
)
target_link_libraries(VCCGND_F103ZET6 INTERFACE
  arm_cortexM3l_math
)

# VCCGND_F103ZET6_MINI
# -----------------------------------------------------------------------------

set(VCCGND_F103ZET6_MINI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F1xx/F103Z(C-D-E)(H-T)")
set(VCCGND_F103ZET6_MINI_MAXSIZE 524288)
set(VCCGND_F103ZET6_MINI_MAXDATASIZE 65536)
set(VCCGND_F103ZET6_MINI_MCU cortex-m3)
add_library(VCCGND_F103ZET6_MINI INTERFACE)
target_compile_options(VCCGND_F103ZET6_MINI INTERFACE
  "SHELL:-DSTM32F103xE   "
  "SHELL:"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${VCCGND_F103ZET6_MINI_MCU}
)
target_compile_definitions(VCCGND_F103ZET6_MINI INTERFACE
  "STM32F1xx"
	"ARDUINO_VCCGND_F103ZET6_MINI"
	"BOARD_NAME=\"VCCGND_F103ZET6_MINI\""
	"BOARD_ID=VCCGND_F103ZET6_MINI"
	"VARIANT_H=\"variant_VCCGND_F103ZET6_MINI.h\""
)
target_include_directories(VCCGND_F103ZET6_MINI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F1xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F1xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/
  ${VCCGND_F103ZET6_MINI_VARIANT_PATH}
)

target_link_options(VCCGND_F103ZET6_MINI INTERFACE
  "LINKER:--default-script=${VCCGND_F103ZET6_MINI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=524288"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=65536"
  "SHELL:"
  -mcpu=${VCCGND_F103ZET6_MINI_MCU}
)
target_link_libraries(VCCGND_F103ZET6_MINI INTERFACE
  arm_cortexM3l_math
)

# VCCGND_F407ZG_MINI
# -----------------------------------------------------------------------------

set(VCCGND_F407ZG_MINI_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F4xx/F407Z(E-G)T_F417Z(E-G)T")
set(VCCGND_F407ZG_MINI_MAXSIZE 1048576)
set(VCCGND_F407ZG_MINI_MAXDATASIZE 131072)
set(VCCGND_F407ZG_MINI_MCU cortex-m4)
add_library(VCCGND_F407ZG_MINI INTERFACE)
target_compile_options(VCCGND_F407ZG_MINI INTERFACE
  "SHELL:-DSTM32F407xx   "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${VCCGND_F407ZG_MINI_MCU}
)
target_compile_definitions(VCCGND_F407ZG_MINI INTERFACE
  "STM32F4xx"
	"ARDUINO_VCCGND_F407ZG_MINI"
	"BOARD_NAME=\"VCCGND_F407ZG_MINI\""
	"BOARD_ID=VCCGND_F407ZG_MINI"
	"VARIANT_H=\"variant_VCCGND_F407ZG_MINI.h\""
)
target_include_directories(VCCGND_F407ZG_MINI INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F4xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F4xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/
  ${VCCGND_F407ZG_MINI_VARIANT_PATH}
)

target_link_options(VCCGND_F407ZG_MINI INTERFACE
  "LINKER:--default-script=${VCCGND_F407ZG_MINI_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=1048576"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=131072"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${VCCGND_F407ZG_MINI_MCU}
)
target_link_libraries(VCCGND_F407ZG_MINI INTERFACE
  arm_cortexM4lf_math
)

# WeActMiniH743VITX
# -----------------------------------------------------------------------------

set(WeActMiniH743VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(WeActMiniH743VITX_MAXSIZE 2097152)
set(WeActMiniH743VITX_MAXDATASIZE 524288)
set(WeActMiniH743VITX_MCU cortex-m7)
add_library(WeActMiniH743VITX INTERFACE)
target_compile_options(WeActMiniH743VITX INTERFACE
  "SHELL:-DSTM32H743xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${WeActMiniH743VITX_MCU}
)
target_compile_definitions(WeActMiniH743VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_WeActMiniH743VITX"
	"BOARD_NAME=\"WeActMiniH743VITX\""
	"BOARD_ID=WeActMiniH743VITX"
	"VARIANT_H=\"variant_WeActMiniH7xx.h\""
)
target_include_directories(WeActMiniH743VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${WeActMiniH743VITX_VARIANT_PATH}
)

target_link_options(WeActMiniH743VITX INTERFACE
  "LINKER:--default-script=${WeActMiniH743VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${WeActMiniH743VITX_MCU}
)
target_link_libraries(WeActMiniH743VITX INTERFACE
  arm_cortexM7lfsp_math
)

# WeActMiniH750VBTX
# -----------------------------------------------------------------------------

set(WeActMiniH750VBTX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32H7xx/H742V(G-I)(H-T)_H743V(G-I)(H-T)_H750VBT_H753VI(H-T)")
set(WeActMiniH750VBTX_MAXSIZE 131072)
set(WeActMiniH750VBTX_MAXDATASIZE 524288)
set(WeActMiniH750VBTX_MCU cortex-m7)
add_library(WeActMiniH750VBTX INTERFACE)
target_compile_options(WeActMiniH750VBTX INTERFACE
  "SHELL:-DSTM32H750xx  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  "SHELL:"
  -mcpu=${WeActMiniH750VBTX_MCU}
)
target_compile_definitions(WeActMiniH750VBTX INTERFACE
  "STM32H7xx"
	"ARDUINO_WeActMiniH750VBTX"
	"BOARD_NAME=\"WeActMiniH750VBTX\""
	"BOARD_ID=WeActMiniH750VBTX"
	"VARIANT_H=\"variant_WeActMiniH7xx.h\""
)
target_include_directories(WeActMiniH750VBTX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${WeActMiniH750VBTX_VARIANT_PATH}
)

target_link_options(WeActMiniH750VBTX INTERFACE
  "LINKER:--default-script=${WeActMiniH750VBTX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=131072"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${WeActMiniH750VBTX_MCU}
)
target_link_libraries(WeActMiniH750VBTX INTERFACE
  arm_cortexM7lfsp_math
)

# WRAITH32_V1
# -----------------------------------------------------------------------------

set(WRAITH32_V1_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/STM32F0xx/F051K(6-8)U")
set(WRAITH32_V1_MAXSIZE 32768)
set(WRAITH32_V1_MAXDATASIZE 7936)
set(WRAITH32_V1_MCU cortex-m0)
add_library(WRAITH32_V1 INTERFACE)
target_compile_options(WRAITH32_V1 INTERFACE
  "SHELL:-DSTM32F051x8  "
  "SHELL:-DCUSTOM_PERIPHERAL_PINS"
  "SHELL:"
  "SHELL:"
  "SHELL:"
  -mcpu=${WRAITH32_V1_MCU}
)
target_compile_definitions(WRAITH32_V1 INTERFACE
  "STM32F0xx"
	"ARDUINO_WRAITH32_V1"
	"BOARD_NAME=\"WRAITH32_V1\""
	"BOARD_ID=WRAITH32_V1"
	"VARIANT_H=\"variant_WRAITH32_V1.h\""
)
target_include_directories(WRAITH32_V1 INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32F0xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32F0xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/gcc/
  ${WRAITH32_V1_VARIANT_PATH}
)

target_link_options(WRAITH32_V1 INTERFACE
  "LINKER:--default-script=${WRAITH32_V1_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0"
	"LINKER:--defsym=LD_MAX_SIZE=32768"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=7936"
  "SHELL:"
  -mcpu=${WRAITH32_V1_MCU}
)
target_link_libraries(WRAITH32_V1 INTERFACE
  arm_cortexM0l_math
)

