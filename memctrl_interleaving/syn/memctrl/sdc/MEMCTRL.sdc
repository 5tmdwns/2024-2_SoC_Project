###################################################################
# CLOCK
###################################################################
#MAINCLOCK
create_clock -name "CLOCK" -period 10 -waveform {0 5} [get_ports CLK]
set_clock_latency 1 [get_clock CLOCK]
set_clock_uncertainty -setup 0.3 [get_clock CLOCK]
set_clock_uncertainty -hold 0.1 [get_clock CLOCK]
set_clock_transition 0.5 [get_clock CLOCK]

#GENCLK
create_generated_clock -name "CLOCKCE" -divide_by 2 -source [get_ports CLK] [get_pins UFSM/MEM_CE]
set_clock_latency 1 [get_clock CLOCKCE]
set_clock_uncertainty -setup 0.3 [get_clock CLOCKCE]
set_clock_uncertainty -hold 0.1 [get_clock CLOCKCE]
set_clock_transition 0.5 [get_clock CLOCKCE]

#create_generated_clock -name "CLOCKB" -invert -divide_by 1 -source [get_ports CLK] [get_pins -of_objects [get_net UFSM/CLKB] -filter "direction==out"]
#set_clock_latency 1 [get_clock CLOCKB]
#set_clock_uncertainty -setup 0.3 [get_clock CLOCKB]
#set_clock_uncertainty -hold 0.1 [get_clock CLOCKB]
#set_clock_transition 0.5 [get_clock CLOCKB]

#RESET
set_ideal_network [get_port RSTN]

###################################################################
# INPUT
###################################################################
set_input_delay 2 -clock [get_clock CLOCK] [remove_from_collection [all_inputs] [get_port {CLK RSTN}]]


###################################################################
# OUTPUT
###################################################################
set_output_delay 2 -clock [get_clock CLOCK] [all_outputs]
#set_load [expr 3 * [load_of saed32hvt_ss0p95v125c/INVX1_HVT/A]] [all_outputs]
set_load [expr 3 * 0.64717] [all_outputs]

###################################################################
# user-defined path group
###################################################################
group_path -name INPUTS -from [all_inputs]
group_path -name OUTPUTS -to [all_outputs]
group_path -name COMBO -from [all_inputs] -to [all_outputs]

group_path -name CLOCK -weight 5 -critical 0.5
group_path -name INPUTS -weight 1 -critical 0.5
group_path -name OUTPUTS -weight 1 -critical 0.5
group_path -name COMBO -weight 1 -critical 1.0

