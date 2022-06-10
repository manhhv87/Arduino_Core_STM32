{% for pnum, config in allcfg | dictsort %}
# {{pnum}}
# -----------------------------------------------------------------------------

set({{pnum}}_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/{{config.build.variant}}")
set({{pnum}}_MAXSIZE {{config.upload.maximum_size}})
set({{pnum}}_MAXDATASIZE {{config.upload.maximum_data_size}})
set({{pnum}}_MCU {{config.build.mcu}})
add_library({{pnum}} INTERFACE)
target_compile_options({{pnum}} INTERFACE
  "SHELL:{{config.build.extra_flags}}"
  "SHELL:{{config.build.peripheral_pins}}"
  "SHELL:{{config.build.startup_file}}"
  "SHELL:{{config.build.flags.fp}}"
  "SHELL:{{config.build.startup_file}}"
  -mcpu={{ "${" }}{{pnum}}_MCU{{ "}" }}
)
target_compile_definitions({{pnum}} INTERFACE
  "{{config.build.series}}"
	"ARDUINO_{{config.build.board}}"
	"BOARD_NAME=\"{{config.build.board}}\""
	"BOARD_ID={{config.build.board}}"
	"VARIANT_H=\"{{config.build.variant_h or "variant_generic.h"}}\""
)
target_include_directories({{pnum}} INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/{{config.build.series}}
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/{{config.build.series}}_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/{{config.build.series}}_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/{{config.build.series}}/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/{{config.build.series}}/Source/Templates/gcc/
  {{ "${" }}{{pnum}}_VARIANT_PATH{{ "}" }}
)

target_link_options({{pnum}} INTERFACE
  "LINKER:--default-script={{ "${" }}{{pnum}}_VARIANT_PATH{{ "}" }}/{{config.build.ldscript or "ldscript.ld"}}"
  "LINKER:--defsym=LD_FLASH_OFFSET={{config.build.flash_offset or "0"}}"
	"LINKER:--defsym=LD_MAX_SIZE={{config.upload.maximum_size}}"
	"LINKER:--defsym=LD_MAX_DATA_SIZE={{config.upload.maximum_data_size}}"
  "SHELL:{{config.build.flags.fp}}"
  -mcpu={{ "${" }}{{pnum}}_MCU{{ "}" }}
)
target_link_libraries({{pnum}} INTERFACE
  {{config.build.cmsis_lib_gcc}}
)

{% endfor %}
