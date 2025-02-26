set_global_assignment -entity "segdisplay" -library "lib_segdisplay" -name IP_TOOL_NAME "altera_gpio_lite"
set_global_assignment -entity "segdisplay" -library "lib_segdisplay" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "segdisplay" -library "lib_segdisplay" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_segdisplay" -name SPD_FILE [file join $::quartus(sip_path) "segdisplay.spd"]

set_global_assignment -library "lib_segdisplay" -name MISC_FILE [file join $::quartus(sip_path) "segdisplay_sim/segdisplay.v"]
set_global_assignment -library "lib_segdisplay" -name MISC_FILE [file join $::quartus(sip_path) "segdisplay_sim/altera_gpio_lite/altera_gpio_lite.sv"]
