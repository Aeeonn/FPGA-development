transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/DE10-Lite_v.2.1.0_SystemCD/Demonstrations/Button\ mapped\ to\ Led {C:/intelFPGA_lite/DE10-Lite_v.2.1.0_SystemCD/Demonstrations/Button mapped to Led/button_to_led.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/DE10-Lite_v.2.1.0_SystemCD/Demonstrations/Button\ mapped\ to\ Led {C:/intelFPGA_lite/DE10-Lite_v.2.1.0_SystemCD/Demonstrations/Button mapped to Led/button_to_led_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  button_to_led_tb

add wave *
view structure
view signals
run 1 us
