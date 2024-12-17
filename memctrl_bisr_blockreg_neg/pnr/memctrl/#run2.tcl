
###############
#NDR 
################
#set routing Layer
set CTS_NDR_MIN_ROUTING_LAYER "M4" ; # clk가 존재하는 metal layer
set CTS_NDR_MAX_ROUTING_LAYER "M6"
set CTS_LEAF_NDR_MIN_ROUTING_LAYER "M1" ;# FF까지오는 경로
set CTS_LEAF_NDR_MAX_ROUTING_LAYER "M6"	
set CTS_NDR_RULE_NAME "cts_w2_s2_vlg" ; # width와 spacing을 둘다 기존에 2배씩 증가시킴 coupling을 방지하기위해
set CTS_LEAF_NDR_RULE_NAME "cts_w1_s2"

#remove_routing rules
if {$CTS_NDR_RULE_NAME != ""} {
remove_routing_rules $CTS_NDR_RULE_NAME > /dev/null

#create_routing rules for routing layers
create_routing_rule $CTS_NDR_RULE_NAME \
-default_reference_rule \
-widths { M1 0.1 M2 0.11 M3 0.11 M4 0.11 M5 0.11 M6 0.11 } \
-spacings { M2 0.16 M3 0.45 M4 0.45 M5 1.1 M6 1.1 } 

#set min & max clock routing rules
#This command assigns the routing rules used in clock tree synthesis. You can associate a rule with specific clocks or nets. If a net already has a nondefault routing rule, this rule is also honored
set_clock_routing_rules -rules $CTS_NDR_RULE_NAME \
-min_routing_layer $CTS_NDR_MIN_ROUTING_LAYER \
-max_routing_layer $CTS_NDR_MAX_ROUTING_LAYER
}

#create routing rules for leaf
if {$CTS_LEAF_NDR_RULE_NAME != ""} {
remove_routing_rules $CTS_LEAF_NDR_RULE_NAME > /dev/null

create_routing_rule $CTS_LEAF_NDR_RULE_NAME \
-default_reference_rule \
-spacings { M2 0.16 M3 0.45 M4 0.45 M5 1.1 M6 1.1}

#set min & max clock routing rules
#This command assigns the routing rules used in clock tree synthesis. You can associate a rule with specific clocks or nets. If a net already has a nondefault routing rule, this rule is also honored

set_clock_routing_rules -net_type sink -rules $CTS_LEAF_NDR_RULE_NAME \
-min_routing_layer $CTS_LEAF_NDR_MIN_ROUTING_LAYER \
-max_routing_layer $CTS_LEAF_NDR_MAX_ROUTING_LAYER
}

###############
#Clock uncertainty & transition
################
current_mode func

foreach_in_collection scen [all_scenarios] {
current_scenario $scen
set_clock_uncertainty 0.3 -setup [all_clocks] ;#Specifies the clock uncertainty (skew characteristics) of the specified clock networks
set_clock_uncertainty 0.1 -hold [all_clocks]
}

set_max_transition 0.5 -clock_path [get_clocks] -corners [all_corners]


#report_scenarios
get_scenario  -filter active&&hold
report_scenarios

#report_clock_balance_points after setting
report_clock_balance_points

#report_clock_routing_rules after setting
report_clock_routing_rules

################
# Cell list (example uses RVT,here we just use HVT)  #CTS에 사용할 Cell(buffer, inv) 목록
################
#cts
set CTS_LIB_CELL_PATTERN_LIST "*/INVX2_HVT */INVX4_HVT */INVX8_HVT */INVX16_HVT" ; #duty가 깨지지 않게 invertor로만 사용함
set CTS_CELLS [get_lib_cells $CTS_LIB_CELL_PATTERN_LIST]
set_dont_touch $CTS_CELLS false
suppress_message ATTR-12
set_lib_cell_purpose -exclude cts [get_lib_cells] ;#Defines the valid purposes for the specified library cells(exclude CTS)
set_lib_cell_purpose -include cts $CTS_CELLS ;#Defines the valid purposes for the specified library cells(include CTS)
#set hold & optimization cells at CTS
set_lib_cell_purpose -exclude hold [get_lib_cells]
set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX2_HVT saed32hvt/DELLN1X2_HVT"]

set_lib_cell_purpose -exclude optimization [get_lib_cells]
set_lib_cell_purpose -include optimization [get_lib_cells "*/NBUFFX2_*VT */NBUFFX4_*VT */NBUFFX8_*VT */NBUFFX16_*VT"]
unsuppress_message ATTR-12

################
# Clock Tree Routing (Latency, Skew) 각 모드별로 clk 특성 setting
################

#remove_ideal_network
set mode "func"

foreach MODE $mode {
current_mode $MODE 

echo "current mode is $MODE"
	switch $MODE {
		func {
			set clock_sink [get_pins -hier -filter "is_clock_pin == true"]
			remove_ideal_network $clock_sink
			remove_ideal_network [remove_from_collection [all_fanout -flat -clock_tree] [get_ports [all_output]] ]
			remove_clock_latency [get_clocks *]
			remove_clock_latency [get_pins -hier -filter "is_clock_pin == true"]
			set_propagated_clock [all_clocks]
		}
	}
}
#latency & skew
foreach MODE $mode {
current_mode $MODE

echo "current mode is $MODE"
	switch $MODE {
		func {
			set_clock_tree_options -target_skew 0.3 -corners [get_corners ss*] ;# Specifies the required value for maximum skew for the specified clock trees (The default is 0)
			set_clock_tree_options -target_skew 0.3 -corners [get_corners ff*]
			set_clock_tree_options -target_latency 0.5 -corners [get_corners ss*] ;# Specifies the minimum early insertion delay constraint for the specified clock trees (There is no default for this option)
			set_clock_tree_options -target_latency 0.5 -corners [get_corners ff*]
		}
	}
}

report_clock_tree_options

##################################################################
### CTS - Configure (Classic CTS)
################################################################## CTS 전략을 설정해야 함 classic CTS vs CCD

#setup for Non-ccd flow

#Non-ccd flow 
set_app_options -name clock_opt.flow.enable_ccd -value false ;#;# This app option controls whether the clock_opt command performs concurrent clock and data (CCD) optimization (default : true)

#common setup for CTS
set_app_options -name opt.dft.clock_aware_scan_reorder -value false ; #scan이 없기때문에 false
#This app option check hold violation status in scan chain first, and if there exists hold violations along scan path, clock driver aware reordering only will be employed to reduce the hold violations along scan path witin each scan chain to save the hold fixing resource on scan path
set_app_options -name time.remove_clock_reconvergence_pessimism -value true ;# When this option is set to true, the tool removes clock reconvergence pessimism from the slack calculation
#clock같은경우 공통으로 들어가기때문에 괜찮다
#set max_fanout for CTS step
set_app_options -list {opt.tie_cell.max_fanout {16}} 
set_app_options -list {cts.common.max_fanout {16}}
set_app_options -list {opt.common.max_fanout {16}}

#check before CTS

#check_clock_trees
check_clock_trees

#report_ideal_networks
report_ideal_network -modes {func} ;#if ideal network exist, you must remove them

##################################################################
### CTS - Run CTS (Classic CTS)
##################################################################
clock_opt -to route_clock

save_block -as ${TOPDESIGN}_05_CTSCLASSIC
save_lib

##################################################################
### CTS - Report CTS (Classic CTS)
##################################################################
update_timing -full ;#Updates timing information on the current design
#./rpt/파일이름 {명령어} 저장
redirect -file ./rpt/rpt_cts_classicCTS.qor.snap.rpt {report_qor -summary -nosplit -significant_digits 3 }
redirect -file ./rpt/rpt_cts_classicCTS.util.rpt {report_utilization}
redirect -file ./rpt/rpt_cts_classicCTS.congestion.rpt {report_congestion}
redirect -file ./rpt/rpt_cts_classicCTS.fanout.rpt {report_net_fanout -high_fanout}
redirect -file ./rpt/rpt_cts_classicCTS.max_tran.rpt {report_constraints -max_transition -all_violators -corners *}
redirect -file ./rpt/rpt_cts_classicCTS.latnecy.rpt {report_clock_qor -type latency -show_paths}
redirect -file ./rpt/rpt_cts_classicCTS.clocks.rpt {report_clocks -skew -nosplit -significant_digits 3 }
redirect -file ./rpt/rpt_cts_classicCTS.structure.rpt {report_clock_qor -type structure}
redirect -file ./rpt/rpt_cts_classicCTS.local.skew.rpt {report_clock_qor -nosplit -sig 4 -type local_skew -show_paths}
redirect -file ./rpt/rpt_cts_classicCTS.clocks.vio.rpt {report_clock_qor -sig 3 -type drc_violators}
set all_sce [get_attribute -objects [get_scenarios -filter "active == true" ] -name name] 
foreach x $all_sce {
	redirect -file ./rpt/timing_report_max_cts_classicCTS${x} \
	{report_timing -scenarios $x -significant_digits 3 -delay_type max -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
	redirect -file ./rpt/timing_report_min_cts_classicCTS_${x} \
	{report_timing -scenarios $x -significant_digits 3 -delay_type min -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
}

##################################################################
### CTS - PSYN (Classic CTS)
##################################################################
clock_opt -from final_opto

save_block -as ${TOPDESIGN}_06_PSYNCLASSIC
save_lib

##################################################################
### CTS - Report PSYN (Classic CTS)
##################################################################
update_timing -full ;#Updates timing information on the current design

redirect -file ./rpt/rpt_psyn_classicCTS.qor.snap.rpt {report_qor -summary -nosplit -significant_digits 3 }
redirect -file ./rpt/rpt_psyn_classicCTS.util.rpt {report_utilization}
redirect -file ./rpt/rpt_psyn_classicCTS.congestion.rpt {report_congestion}
redirect -file ./rpt/rpt_psyn_classicCTS.fanout.rpt {report_net_fanout -high_fanout}
redirect -file ./rpt/rpt_psyn_classicCTS.max_tran.rpt {report_constraints -max_transition -all_violators -corners *}
redirect -file ./rpt/rpt_psyn_classicCTS.latnecy.rpt {report_clock_qor -type latency -show_paths}
redirect -file ./rpt/rpt_psyn_classicCTS.clocks.rpt {report_clocks -skew -nosplit -significant_digits 3 }
redirect -file ./rpt/rpt_psyn_classicCTS.structure.rpt {report_clock_qor -type structure}
redirect -file ./rpt/rpt_psyn_classicCTS.local.skew.rpt {report_clock_qor -nosplit -sig 4 -type local_skew -show_paths}
redirect -file ./rpt/rpt_psyn_classicCTS.clocks.vio.rpt {report_clock_qor -sig 3 -type drc_violators}
set all_sce [get_attribute -objects [get_scenarios -filter "active == true" ] -name name] 
foreach x $all_sce {
	redirect -file ./rpt/timing_report_max_psyn_classicCTS${x} \
	{report_timing -scenarios $x -significant_digits 3 -delay_type max -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
	redirect -file ./rpt/timing_report_min_psyn_classicCTS_${x} \
	{report_timing -scenarios $x -significant_digits 3 -delay_type min -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
}

###################################################################
#### CTS - Configure (CCD)
###################################################################
#
##setup for CCD flow
#set_app_options -name ccd.optimize_boundary_timing -value false ;#This app option controls whether CCD performs optimization on boundary timing paths (default : true) 
#set_app_options -name ccd.ignore_scan_reset_for_boundary_identification -value true ;#This app option used o ignore the connectivities on scan/reset pins when concurrent clock and data optimization (CCD) performs boundary flop identification (default : false)
#set_app_options \
#	-name ccd.ignore_ports_for_boundary_identification \
#	-value {scan_en prst_n} ;# This app option specifies the ports to exclude when concurrent clock and data optimization (CCD) performs boundary identification (Typically you would specify high-fanout ports, such as scan enable and reset ports, to prevent large numbers of flip-flops from being identified as boundary flip-flops)
#set_app_options -name ccd.hold_control_effort -value high ;# This app option specifies the effort level for hold during CCD optimization
#set_app_options -name clock_opt.flow.enable_ccd -value true ;# This app option controls whether the clock_opt command performs concurrent clock and data (CCD) optimization
#
##common setup for CTS
#set_app_options -name opt.dft.clock_aware_scan_reorder -value true ;#This app option check hold violation status in scan chain first, and if there exists hold violations along scan path, clock driver aware reordering only will be employed to reduce the hold violations along scan path witin each scan chain to save the hold fixing resource on scan path
#set_app_options -name time.remove_clock_reconvergence_pessimism -value true ;# When this option is set to true, the tool removes clock reconvergence pessimism from the slack calculation
#set_app_options -name clock_opt.hold.effort -value high ;#The hold fixing effort can be: none, low, medium, or high (default : medium)
#
#
##set max_fanout for CTS step
#set_app_options -list {opt.tie_cell.max_fanout {16}} 
#set_app_options -list {cts.common.max_fanout {16}}
#set_app_options -list {opt.common.max_fanout {16}}
#
##check before CTS
#
##report_ideal_networks
#report_ideal_network -modes {func scan_capture scan_shift} ;#if ideal network exist, you must remove them
#
###################################################################
#### CTS - Run CTS (Classic CCD)
###################################################################
#clock_opt -to route_clock
#
#save_block -as ${TOPDESIGN}_05_CTSCCD
#save_lib
#
###################################################################
#### CTS - Report CTS (CCD)
###################################################################
#update_timing -full ;#Updates timing information on the current design
#
#redirect -file ./rpt/rpt_cts_CCD.qor.snap.rpt {report_qor -summary -nosplit -significant_digits 3 }
#redirect -file ./rpt/rpt_cts_CCD.util.rpt {report_utilization}
#redirect -file ./rpt/rpt_cts_CCD.congestion.rpt {report_congestion}
#redirect -file ./rpt/rpt_cts_CCD.fanout.rpt {report_net_fanout -high_fanout}
#redirect -file ./rpt/rpt_cts_CCD.max_tran.rpt {report_constraints -max_transition -all_violators -corners *}
#redirect -file ./rpt/rpt_cts_CCD.latnecy.rpt {report_clock_qor -type latency -show_paths}
#redirect -file ./rpt/rpt_cts_CCD.clocks.rpt {report_clocks -skew -nosplit -significant_digits 3 }
#redirect -file ./rpt/rpt_cts_CCD.structure.rpt {report_clock_qor -type structure}
#redirect -file ./rpt/rpt_cts_CCD.local.skew.rpt {report_clock_qor -nosplit -sig 4 -type local_skew -show_paths}
#redirect -file ./rpt/rpt_cts_CCD.clocks.vio.rpt {report_clock_qor -sig 3 -type drc_violators}
#set all_sce [get_attribute -objects [get_scenarios -filter "active == true" ] -name name] 
#foreach x $all_sce {
#	redirect -file ./rpt/timing_report_max_cts_CCD${x} \
#	{report_timing -scenarios $x -significant_digits 3 -delay_type max -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
#	redirect -file ./rpt/timing_report_min_cts_CCD_${x} \
#	{report_timing -scenarios $x -significant_digits 3 -delay_type min -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
#}
#
###################################################################
#### CTS - PSYN (CCD)
###################################################################
#clock_opt -from final_opto
#
#save_block -as ${TOPDESIGN}_06_PSYNCCD
#save_lib
#
###################################################################
#### CTS - Report PSYN (CCD)
###################################################################
#update_timing -full ;#Updates timing information on the current design
#
#redirect -file ./rpt/rpt_psyn_CCD.qor.snap.rpt {report_qor -summary -nosplit -significant_digits 3 }
#redirect -file ./rpt/rpt_psyn_CCD.util.rpt {report_utilization}
#redirect -file ./rpt/rpt_psyn_CCD.congestion.rpt {report_congestion}
#redirect -file ./rpt/rpt_psyn_CCD.fanout.rpt {report_net_fanout -high_fanout}
#redirect -file ./rpt/rpt_psyn_CCD.max_tran.rpt {report_constraints -max_transition -all_violators -corners *}
#redirect -file ./rpt/rpt_psyn_CCD.latnecy.rpt {report_clock_qor -type latency -show_paths}
#redirect -file ./rpt/rpt_psyn_CCD.clocks.rpt {report_clocks -skew -nosplit -significant_digits 3 }
#redirect -file ./rpt/rpt_psyn_CCD.structure.rpt {report_clock_qor -type structure}
#redirect -file ./rpt/rpt_psyn_CCD.local.skew.rpt {report_clock_qor -nosplit -sig 4 -type local_skew -show_paths}
#redirect -file ./rpt/rpt_psyn_CCD.clocks.vio.rpt {report_clock_qor -sig 3 -type drc_violators}
#set all_sce [get_attribute -objects [get_scenarios -filter "active == true" ] -name name] 
#foreach x $all_sce {
#	redirect -file ./rpt/timing_report_max_psyn_CCD${x} \
#	{report_timing -scenarios $x -significant_digits 3 -delay_type max -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
#	redirect -file ./rpt/timing_report_min_psyn_CCD_${x} \
#	{report_timing -scenarios $x -significant_digits 3 -delay_type min -transition_time -max_paths 100 -nets -input_pins -report_by group -physical -attributes -nosplit -derate -crosstalk_delta -path_type full_clock}
#}

##################################################################
### Routing - setup
##################################################################
### antenna_rule
remove_antenna_rules
define_antenna_rule -mode 4 -diode_mode 2 -metal_ratio 1000 -cut_ratio 20

define_antenna_layer_rule -mode 4 -layer "M1" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M2" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M3" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M4" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M5" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M6" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M7" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M8" -ratio 1000 -diode_ratio {0.06 0 400 40000}
define_antenna_layer_rule -mode 4 -layer "M9" -ratio 1000 -diode_ratio {0.06 0 8000 50000}


define_antenna_layer_rule -mode 4 -layer "VIA1" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA2" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA3" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA4" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA5" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA6" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA7" -ratio 20 -diode_ratio {0.06 0 200 1000}
define_antenna_layer_rule -mode 4 -layer "VIA8" -ratio 20 -diode_ratio {0.06 0 200 1000}

### optimization
#set include hold Timing optimization cell
set_lib_cell_purpose -exclude hold [get_lib_cells]
set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX2_HVT */DELLN1X2_HVT"]

#### clock setting
##latency
#current_mode func
#remove_clock_latency [get_clocks *]
#remove_clock_latency [get_flat_pins -filter "is_clock_pin == true"]
#remove_ideal_network [remove_from_collection [all_fanout -flat -clock_tree] [get_ports [all_output]]]
#set_propagated_clock [all_clocks]
##set max_transition for all Scenarios
#set_max_transition 0.5 -clock_path [get_clocks] -corners [all_corners]
report_clock
