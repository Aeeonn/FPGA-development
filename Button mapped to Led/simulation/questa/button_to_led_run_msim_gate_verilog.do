transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {button_to_led.vo}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Projects/Button\ mapped\ to\ Led {C:/intelFPGA_lite/Projects/Button mapped to Led/button_to_led_tb.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  button_to_led_tb

add wave *
view structure
view signals
run 1 us
