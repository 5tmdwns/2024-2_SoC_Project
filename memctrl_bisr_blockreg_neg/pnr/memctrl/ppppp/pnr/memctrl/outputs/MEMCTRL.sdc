################################################################################
#
# Design name:  MEMCTRL
#
# Created by fc write_sdc on Sun Dec 15 06:33:32 2024
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
# Corner: ss_n40c
# Scenario: func.ss_n40c

# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 6; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 7; \
#   /mnt/home/soc26/soc/ppppp/pnr/memctrl/run_fc.tcl, line 910
create_clock -name CLOCK -period 10 -waveform {0 5} [get_ports {CLK}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 18; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 19; \
#   /mnt/home/soc26/soc/ppppp/pnr/memctrl/run_fc.tcl, line 910
create_generated_clock -name CLOCKCE -divide_by 2 -source [get_ports {CLK}] \
    [get_pins {UFSM/MEM_CE_reg/Q}]
set_propagated_clock [get_clocks {CLOCK}]
set_propagated_clock [get_clocks {CLOCKCE}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 6; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 54
group_path -name CLOCK -weight 5 -to [get_clocks {CLOCK}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 50; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 55
group_path -name INPUTS -from [get_ports {ADDR[15] ADDR[14] ADDR[13] ADDR[12] \
    ADDR[11] ADDR[10] ADDR[9] ADDR[8] ADDR[7] ADDR[6] ADDR[5] ADDR[4] ADDR[3] \
    ADDR[2] ADDR[1] ADDR[0] CE CLK CSB IDATA[7] IDATA[6] IDATA[5] IDATA[4] \
    IDATA[3] IDATA[2] IDATA[1] IDATA[0] OEB RSTN WEB BIST_EN BISR_EN \
    BIST_MODE[2] BIST_MODE[1] BIST_MODE[0]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 51; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 56
group_path -name OUTPUTS -to [get_ports {ODATA[7] ODATA[6] ODATA[5] ODATA[4] \
    ODATA[3] ODATA[2] ODATA[1] ODATA[0] BIST_PASS}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 52; \
#   /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 57
group_path -name COMBO -from [get_ports {ADDR[15] ADDR[14] ADDR[13] ADDR[12] \
    ADDR[11] ADDR[10] ADDR[9] ADDR[8] ADDR[7] ADDR[6] ADDR[5] ADDR[4] ADDR[3] \
    ADDR[2] ADDR[1] ADDR[0] CE CLK CSB IDATA[7] IDATA[6] IDATA[5] IDATA[4] \
    IDATA[3] IDATA[2] IDATA[1] IDATA[0] OEB RSTN WEB BIST_EN BISR_EN \
    BIST_MODE[2] BIST_MODE[1] BIST_MODE[0]}] -to [get_ports {ODATA[7] ODATA[6] \
    ODATA[5] ODATA[4] ODATA[3] ODATA[2] ODATA[1] ODATA[0] BIST_PASS}]
set_load -pin_load 0.1 [get_ports {ODATA[7]}]
set_load -pin_load 0.1 [get_ports {ODATA[6]}]
set_load -pin_load 0.1 [get_ports {ODATA[5]}]
set_load -pin_load 0.1 [get_ports {ODATA[4]}]
set_load -pin_load 0.1 [get_ports {ODATA[3]}]
set_load -pin_load 0.1 [get_ports {ODATA[2]}]
set_load -pin_load 0.1 [get_ports {ODATA[1]}]
set_load -pin_load 0.1 [get_ports {ODATA[0]}]
set_load -pin_load 0.1 [get_ports {BIST_PASS}]
# /mnt/home/soc26/soc/ppppp/pnr/memctrl/run_fc.tcl, line 580
set_voltage 0.95 -object_list {VDD}
# /mnt/home/soc26/soc/ppppp/pnr/memctrl/run_fc.tcl, line 581
set_voltage 0 -object_list {VSS}
# Warning: Libcell power domain derates are skipped!

set_ideal_network [get_ports {RSTN}]
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.591412 [get_clocks {CLOCK}]
# -origin user
set_clock_latency -max 0.646286 [get_clocks {CLOCK}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {CLK}]
set_clock_uncertainty -setup 0.3 [get_clocks {CLOCK}]
set_clock_uncertainty -hold 0.1 [get_clocks {CLOCK}]
set_clock_uncertainty -setup 0.3 [get_clocks {CLOCKCE}]
set_clock_uncertainty -hold 0.1 [get_clocks {CLOCKCE}]
set_clock_transition 0.5 [get_clocks {CLOCK}]
set_clock_transition 0.5 [get_clocks {CLOCKCE}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[7]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[6]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[5]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[4]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[3]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[2]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[1]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ODATA[0]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 42
set_output_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BIST_PASS}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[15]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[14]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[13]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[12]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[11]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[10]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[9]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[8]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[7]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[6]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[5]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[4]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[3]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[2]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[1]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {ADDR[0]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {CE}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {CSB}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[7]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[6]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[5]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[4]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[3]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[2]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[1]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {IDATA[0]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {OEB}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {WEB}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BIST_EN}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BISR_EN}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BIST_MODE[2]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BIST_MODE[1]}]
# /mnt/home/soc26/soc/ppppp/syn/memctrl/sdc/MEMCTRL.sdc, line 35
set_input_delay -clock [get_clocks {CLOCK}] 1 [get_ports {BIST_MODE[0]}]
set_max_transition 0.5 [get_clocks {CLOCK}] -clock_path
set_max_transition 0.5 [get_clocks {CLOCKCE}] -clock_path
