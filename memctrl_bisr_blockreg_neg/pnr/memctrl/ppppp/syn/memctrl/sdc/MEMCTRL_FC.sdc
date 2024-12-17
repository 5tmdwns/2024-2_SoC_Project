################################################################################
#
# Design name:  MEMCTRL
#
# Created by fc write_sdc on Wed Nov 20 21:26:27 2024
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: ss_125c
# Scenario: func.ss_125c

# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 5; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 6
create_clock -name CLOCK -period 10 -waveform {0 5} [get_ports {CLK}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 12; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 13
create_generated_clock -name CLOCKCE -divide_by 2 -invert -source [get_ports \
    {CLK}] [get_pins {UFSM/MEM_CE}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 17; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 18
create_generated_clock -name CLOCKB -divide_by 1 -invert -source [get_ports \
    {CLK}] [get_pins {UFSM/I_1/Z}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 5; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 46
group_path -name CLOCK -weight 5 -to [get_clocks {CLOCK}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 42; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 47
group_path -name INPUTS -from [get_ports {ADDR[10] ADDR[9] ADDR[8] ADDR[7] \
    ADDR[6] ADDR[5] ADDR[4] ADDR[3] ADDR[2] ADDR[1] ADDR[0] CE CLK CSB IDATA[7] \
    IDATA[6] IDATA[5] IDATA[4] IDATA[3] IDATA[2] IDATA[1] IDATA[0] OEB RSTN WEB}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 43; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 48
group_path -name OUTPUTS -to [get_ports {ODATA[7] ODATA[6] ODATA[5] ODATA[4] \
    ODATA[3] ODATA[2] ODATA[1] ODATA[0]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 44; \
#   /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 49
group_path -name COMBO -from [get_ports {ADDR[10] ADDR[9] ADDR[8] ADDR[7] \
    ADDR[6] ADDR[5] ADDR[4] ADDR[3] ADDR[2] ADDR[1] ADDR[0] CE CLK CSB IDATA[7] \
    IDATA[6] IDATA[5] IDATA[4] IDATA[3] IDATA[2] IDATA[1] IDATA[0] OEB RSTN \
    WEB}] -to [get_ports {ODATA[7] ODATA[6] ODATA[5] ODATA[4] ODATA[3] ODATA[2] \
    ODATA[1] ODATA[0]}]
set_load -pin_load 1.94151 [get_ports {ODATA[7]}]
set_load -pin_load 1.94151 [get_ports {ODATA[6]}]
set_load -pin_load 1.94151 [get_ports {ODATA[5]}]
set_load -pin_load 1.94151 [get_ports {ODATA[4]}]
set_load -pin_load 1.94151 [get_ports {ODATA[3]}]
set_load -pin_load 1.94151 [get_ports {ODATA[2]}]
set_load -pin_load 1.94151 [get_ports {ODATA[1]}]
set_load -pin_load 1.94151 [get_ports {ODATA[0]}]
set_voltage 0.95 -object_list {VDD}
set_voltage 0 -object_list {VSS}
# Warning: Libcell power domain derates are skipped!

set_ideal_network [get_ports {RSTN}]
# -origin user
set_clock_latency 1 [get_clocks {CLOCK}]
# -origin user
set_clock_latency 1 [get_clocks {CLOCKCE}]
# -origin user
set_clock_latency 1 [get_clocks {CLOCKB}]
# Set latency for io paths.
set_clock_uncertainty -setup 0.1 [get_clocks {CLOCK}]
set_clock_uncertainty -hold 0.05 [get_clocks {CLOCK}]
set_clock_uncertainty -setup 0.1 [get_clocks {CLOCKCE}]
set_clock_uncertainty -hold 0.05 [get_clocks {CLOCKCE}]
set_clock_uncertainty -setup 0.1 [get_clocks {CLOCKB}]
set_clock_uncertainty -hold 0.05 [get_clocks {CLOCKB}]
set_clock_transition 0.05 [get_clocks {CLOCK}]
set_clock_transition 0.05 [get_clocks {CLOCKCE}]
set_clock_transition 0.05 [get_clocks {CLOCKB}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[7]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[6]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[5]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[4]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[3]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[2]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[1]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_output_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ODATA[0]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[10]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[9]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[8]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[7]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[6]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[5]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[4]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[3]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[2]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[1]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {ADDR[0]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {CE}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {CSB}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[7]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[6]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[5]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[4]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[3]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[2]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[1]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {IDATA[0]}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {OEB}]
# /home/jhpark/soc/proj/syn/memctrl/sdc/MEMCTRL.sdc, line 29
set_input_delay -clock [get_clocks {CLOCK}] 4 [get_ports {WEB}]
