
################
#MCMM
################
#mode
set m_constr(func) func
#소괄호를 치면 해당 변수를 리스트로 넣음
#corner
set c_constr(ss_125c) ss_125c
set c_constr(ss_n40c) ss_n40c
set c_constr(ff_125c) ff_125c
set c_constr(ff_n40c) ff_n40c

#scenarios
set s_constr(func.ss_125c) func.ss_125c 
set s_constr(func.ss_n40c) func.ss_n40c 
set s_constr(func.ff_125c) func.ff_125c 
set s_constr(func.ff_n40c) func.ff_n40c

#creation

foreach m [array names m_constr] {
	create_mode $m
}

foreach c [array names c_constr] {
	create_corner $c
}

foreach s [array names s_constr] {
lassign [split $s "."] m c
	create_scenario -name $s -mode $m -corner $c
}

#report
report_modes
report_corners
report_scenarios

#set parasitics
current_corner ff_n40c
set_parasitic_parameters -corners ff_n40c -library MEMCTRL -late_spec minTLU -early_spec minTLU -late_temperature -40 -early_temperature -40

current_corner ss_n40c
set_parasitic_parameters -corners ss_n40c -library MEMCTRL -late_spec maxTLU -early_spec maxTLU -late_temperature -40 -early_temperature -40

current_corner ff_125c
set_parasitic_parameters -corners ff_125c -library MEMCTRL -late_spec minTLU -early_spec minTLU -late_temperature 125 -early_temperature 125

current_corner ss_125c
set_parasitic_parameters -corners ss_125c -library MEMCTRL -late_spec maxTLU -early_spec maxTLU -late_temperature 125 -early_temperature 125

#pvt

set_process_number 1.01 -corners ff_n40c
set_temperature -40 -min -40 -corners ff_n40c
set_voltage 1.16 -corner ff_n40c -object_list [get_supply_nets VDD]
set_voltage 0 -corner ff_n40c -object_list [get_supply_nets VSS]

set_process_number 0.99 -corners ss_n40c
set_temperature -40 -min -40 -corners ss_n40c
set_voltage 0.95 -corner ss_n40c -object_list [get_supply_nets VDD]
set_voltage 0 -corner ss_n40c -object_list [get_supply_nets VSS]

set_process_number 1.01 -corners ff_125c
set_temperature 125 -min 125 -corners ff_125c
set_voltage 1.16 -corner ff_125c -object_list [get_supply_nets VDD]
set_voltage 0 -corner ff_125c -object_list [get_supply_nets VSS]

set_process_number 0.99 -corners ss_125c
set_temperature 125 -min 125 -corners ss_125c
set_voltage 0.95 -corner ss_125c -object_list [get_supply_nets VDD]
set_voltage 0 -corner ss_125c -object_list [get_supply_nets VSS]

report_corners

#all about ss corner
set_scenario_status {*.ss*} -setup true -hold true \
		-active true -max_transition true \
		-max_capacitance true \
		-min_capacitance false \
		-leakage_power true \
		-dynamic_power true

#all about ff corner
set_scenario_status {*.ff*} -setup true -hold true \
		-active true -max_transition true \
		-max_capacitance true \
		-min_capacitance false \
		-leakage_power true \
		-dynamic_power true

report_modes


################
#read SDC
################
current_mode func
set scefunc [get_scenarios -modes func]
foreach_in_collection scen $scefunc {
	current_scenario $scen
	source -e ./../../syn/memctrl/sdc/${TOPDESIGN}.sdc}
# write_sdc -output ./../../syn/memctrl/sdc/MEMCTRL_FC.sdc

################
#TIE_CELL SETTING
################
set_lib_cell_purpose -include optimization [get_lib_cells */TIE*] ;# set TIE cell used in optimizaiton
set_dont_touch [get_lib_cells */TIE*] false ;# set TIE cells "dont_touch" value false

################
# IDEAL_NETWORK
################
set mode "func"
current_mode $mode

remove_propagated_clocks [all_clocks]
set clock_sink [get_pins -hier -filter "is_clock_pin == true"]
#set clock_sink [get_pins -hier -filter "is_clock_pin == true || full_name == I_CLOCK_GEN/I_*/CLK_*X"]
remove_ideal_network $clock_sink
set_ideal_network [get_pins $clock_sink] ; # CTS에서 하기 때문에 clk line의 버퍼들 제거
#set_ideal_network [get_nets buf_sdram_clk]

################
# FALSE PATH & APP OPTIONS
################
#mode setting
current_mode "func"

#set_false_path -from scan_en -to [get_clocks "PCI* SD* SYS*"]

report_net_fanout -high_fanout

#set_disable_timing

#set_app_options for placement

set_app_options -list {opt.tie_cell.max_fanout {8}} ;#Specifies the maximum fanout a tie-cell can drive
set_app_options -list {cts.common.max_fanout {16}} ;#Fanout constraint for clock tree synthesis
set_app_options -list {opt.common.max_fanout {16}} ;#Fanout constraint for data path optimization
set_app_options -list {place.coarse.congestion_layer_aware {true}} ;#Controls whether the tool considers the congestion of each layer separately during coarse placement
#set_app_options -list {place.coarse.continue_on_missing_scandef {true}} ;#When this option is true scandef checking prior to coarse placement is disabled
set_app_options -list {opt.common.drc_mode_buffering {true}} ;#Buffering mode for drc stages of place_opt and clock_opt
set_app_options -list {place_opt.initial_drc.global_route_based {1}} ;#Run global route based buffering (GRopto flow) during the initial_drc place_opt stage
set_app_options -list {place_opt.initial_place.buffering_aware {true}} ;#Runs buffering-aware timing-driven placement for the initial placement step inside the place_opt command

set_app_options -list {place.coarse.pin_density_aware {true}} ;#Enables pin density-aware coarse placement
set_app_options -list {place_opt.congestion.effort {high}} ;#set congestion effort during placement
set_app_options -list {place_opt.final_place.effort {high}} ;#Specifies the CPU effort level for the final coarse placement invoked in place_opt

################
#place opt
################
#compile_fusion -to initial_opto
#check_legality
#legalize_placement
compile_fusion -to final_opto	;# congestion이 심하면?
#report 
report_congestion -rerun_global_router	; # congestion 확인
report_timing -significant_digits 5					; # setup time 확인
report_timing -significant_digits 5 -delay_type min	; # hold time 확인	place 단계에서는 아직 보상이 안된다는 듯
report_qor -summary	;	

############################################################
#report Timing & constraints for placement after place_opt
############################################################
update_timing -full

save_block -as ${TOPDESIGN}_041_PLACEMENT_FINAL_OPT
save_lib
################
#report_placements step all 
################
report_qor -summary -nosplit -significant_digits 5
#redirect -file ./otuputs/report.qor.snap.rpt {report_qor -summary -nosplit -significant_digits 5}
report_utilization
report_congestion
check_legality
report_net_fanout -high_fanout
report_constraints -max_transition -all_violators -corners *


################
#insert spare cell 
################	Core bound에 맞게 균일하게 배치되는데 겹치는 경우가 발생할 수 있음
#add NBUFFX2_RVT
add_spare_cells -num_instances 100 \
	-boundary $COREBND \
	-cell_name MEMCTRL_spare_cell_NBUF \
	-lib_cell "sae32hvt/NBUFFX2_HVT"

#add INV_HVT
add_spare_cells -num_instances 100 \
	-boundary $COREBND \
	-cell_name MEMCTRL_spare_cell_INV \
	-lib_cell "sae32hvt/INVX2_HVT"

#add AND_HVT
add_spare_cells -num_instances 50 \
	-boundary $COREBND \
	-cell_name MEMCTRL_spare_cell_AND \
	-lib_cell "sae32hvt/AND2X2_HVT"

#add FF_HVT
add_spare_cells -num_instances 50 \
	-boundary $COREBND \
	-cell_name MEMCTRL_spare_cell_FF \
	-lib_cell "sae32hvt/SDFFARX1_HVT"

#add OR2x2_HVT
add_spare_cells -num_instances 50 \
	-boundary $COREBND \
	-cell_name MEMCTRL_spare_cell_XOR \
	-lib_cell "sae32hvt/OR2X2_HVT"



#spread & legalize spare cells after adding

spread_spare_cells -cells [get_cells -phy -filter "full_name =~ MEMCTRL_spare_cell*"] \
		   -boundary $COREBND  

legalize_placement -incremental	;	# 겹치는 부분 재배치
set_placement_status legalize_only \
	[get_flat_cells -filter is_spare_cell]

#connect_pg_connection

set spare_cells [get_cells -filter "full_name =~ *MEMCTRL_spare_cell*"]

set i 0

foreach x $spare_cells {
set pins [get_pins -of_objects $x -filter "port_type == power"]
connect_pg_net -net VDD [get_pins $pins]

incr i
}

foreach x $spare_cells {
set pins [get_pins -of_objects $x -filter "port_type == ground"]
connect_pg_net -net VSS [get_pins $pins]

incr i
}

update_timing -full
check_mv_design
report_qor -summary -nosplit -significant_digits 5
report_utilization
report_congestion
check_legality
report_net_fanout -high_fanout
report_constraints -max_transition -all_violators -corners *

save_block -as ${TOPDESIGN}_042_PLACEMENT_FINAL_OPT_SPARE
save_lib