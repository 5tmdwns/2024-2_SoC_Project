sh rm ./outputs/* -rf
################################################################
# Common Setting
################################################################
set_host_options -max_cores 4
#78 server
set EDKPATH "/home/eda/soc/lib/gpdk/32n"
set TFFILE "${EDKPATH}/tech/milkyway/saed32nm_1p9m_mw.tf"
set PARAMAX "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"
set PARAMIN "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"
set PARATYP "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_norminal.tluplus"
## 159 server
#set EDKPATH "/home/eda/pdk/GPDK/32nm/new/EDK/SAED32_EDK"
#set TFFILE "${EDKPATH}/tech/milkyway/saed32nm_1p9m_mw.tf"
#set PARAMAX "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"
#set PARAMIN "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"
#set PARATYP "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_norminal.tluplus"

set WORKDIR [file dirname [pwd]]
set PROJNAME memctrl
set TOPDESIGN MEMCTRL
set RTLFILES [glob ${WORKDIR}/../rtl/${PROJNAME}/*.v]
set MIN_ROUTING_LAYER M1
set MAX_ROUTING_LAYER M6
set HOR_ROUTING_LAYER "M1 M3 M5 M7 M9"
set VER_ROUTING_LAYER "M2 M4 M6 M8 MRDL"

set NDMFILE [glob -nocomplain ${WORKDIR}/../ndm/*.ndm ] 
#hold setting
set_app_options -name ccd.hold_control_effort -value high

################################################################
# READ DESIGN
################################################################

#02_Create_lib
create_lib ${WORKDIR}/${PROJNAME}/outputs/$TOPDESIGN \
	-technology ${TFFILE} \
	-ref_libs $NDMFILE

#03_read_netlist (RTL)

foreach i $RTLFILES {
	analyze -format verilog $i
}

elaborate $TOPDESIGN
set_top_module $TOPDESIGN
check_design -checks { dp_pre_floorplan }
source ./../../syn/memctrl/sdc/${TOPDESIGN}.sdc
compile_fusion -to initial_map

#04_load_upf
source ./upf/${TOPDESIGN}.upf
commit_upf
connect_pg_net -automatic

#06_Routing_direction
# set routing direction & site_defs unit symmetry
set_attribute [get_layers $HOR_ROUTING_LAYER] routing_direction horizontal
set_attribute [get_layers $VER_ROUTING_LAYER] routing_direction vertical
set_attribute [get_site_defs unit] symmetry Y

# check site_defs unit
get_attribute [get_site_defs unit] is_default
get_attribute [get_site_defs unit] symmetry

# check routing diredtion
get_attribute [get_layers M?] routing_direction

report_ignored_layers

# set ignore_layers & recheck
set_ignored_layers -min_routing_layer $MIN_ROUTING_LAYER
set_ignored_layers -max_routing_layer $MAX_ROUTING_LAYER

report_ignored_layers

save_block -as ${TOPDESIGN}_01_READ_DESIGN
save_lib

################################################################
# Floorplan
################################################################
set core_x 1873
set core_y 1900
set core_bbox "{0 0} {$core_x $core_y}"
	
initialize_floorplan -shape R -boundary $core_bbox -core_offset {50.0 50.0}

# offset은 ring을 치기 위해 0,0 2000,2000은 core(SRAM+CTRL)사이즈
# soft_blockage
set COREBND [get_attribute [get_core_area] bbox] ;# core의 사이즈를 가져오고 리스트형식으로 저장 {{0,0}, {2000,2000}} 
set MACROX 600	; #FSM 공간
set MACROY 700	;	
set STDBND_00 [expr [lindex [lindex $COREBND 0] 0] + $MACROX] ; # {0,0}에서 0번째 원소 여기선MACROY가 커질수록 boundary가 작아짐
set STDBND_01 [expr [lindex [lindex $COREBND 0] 1] + $MACROY] ;
set STDBND_10 [expr [lindex [lindex $COREBND 1] 0] - $MACROX] ;
set STDBND_11 [expr [lindex [lindex $COREBND 1] 1] - $MACROY] ; # {2000,2000}에서 1번째 원소
set STDBND "{$STDBND_00 $STDBND_01} {$STDBND_10 $STDBND_11}"

set MACROX2 1000	; #FSM 공간
set MACROY2 50	;	
set STDBND2_00 [expr [lindex [lindex $COREBND 0] 0] + $MACROX2] ; # {0,0}에서 0번째 원소 여기선MACROY가 커질수록 boundary가 작아짐
set STDBND2_01 [expr [lindex [lindex $COREBND 0] 1] + $MACROY2] ;
set STDBND2_10 [expr [lindex [lindex $COREBND 1] 0] - $MACROX2] ;
set STDBND2_11 [expr [lindex [lindex $COREBND 1] 1] - $MACROY2] ; # {2000,2000}에서 1번째 원소
set STDBND2 "{$STDBND2_00 $STDBND2_01} {$STDBND2_10 $STDBND2_11}";

set CORE [compute_polygons -operation NOT -objects1 ${COREBND} -objects2 ${STDBND}] ;# core 경계보다 작게 포함되어있는 STD 경계의 차집합, 즉 사각링 모양
set CORE [compute_polygons -operation NOT -objects1 ${CORE} -objects2 ${STDBND2}] ;# core 경계보다 작게 포함되어있는 STD 경계의 차집합, 즉 사각링 모양
create_placement_blockage -type soft -name CORE -boundary $CORE

#Create Terminal
source ./create_terminals.tcl

#Place Macro
source ./place_macro2.tcl

set ALLMACRO [get_cells -hierarchical -filter "is_hard_macro && !is_physical_only"] ; # hard macro이면서 physical only가 아닌 친구들을 리스트를 저장
change_selection $ALLMACRO
set_fixed_objects [get_selection] ; # 그 선택된 macro친구들을 fixed로 설정함

check_legality
check_mv_design

save_block -as ${TOPDESIGN}_02_FLOORPLAN
save_lib
################################################################
# Powerplan
################################################################
#Remove PG contraints
remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_placement_blockage [get_placement_blockages -filter "blockage_type == hard"]

##############################
#create_core_Ring
##############################

#create blockage for macro
set MACROBBOX [get_attr [get_cells $ALLMACRO] bbox] ; # bbox는 최외곽을 기준으로, macro로 설정했던 친구들의 외곽 사이즈
set i 0
foreach x $MACROBBOX {
		  set llx [expr [lindex $x 0 0] + 0.5] ; # 선택된 모든 macro들에 대해 좌하단 우상단 좌표리스트 값 변환
		  set urx [expr [lindex $x 1 0] - 0.5] ; # 위의 lindex의 간략 버전
		  set lly [expr [lindex $x 0 1] + 0.5] ; # 각 macro들보다 0.5
		  set ury [expr [lindex $x 1 1] - 0.5]
		  set new_bboxes "{$llx $lly} {$urx $ury}"
		  create_placement_blockage -name "MC_BLKG_HARD_${i}" -type hard -boundary $new_bboxes ;# hard macro는 그 위로 메탈이 지나가면 short 될 수 있기떄문에 hard

		  incr i
}

#create_core_ring
set pg via_master_rule
set_pg_via_master_rule pgvia_10x10 -via_array_dimension {10 10} ;# 하나의 via안에 10 x 10 짜리가 들어있음

#create_ring_pattern {set vertical & horizontal (layer, width, spacing), corner bridge & via_rule}
create_pg_ring_pattern core_ring_pattern -horizontal_layer M7 \
	-horizontal_width {5} -horizontal_spacing {2.188} \
	-vertical_layer M6 -vertical_width {4} -vertical_spacing {5.12} \
                      -corner_bridge false \
                      -via_rule { {intersection: adjacent} {via_master : pgvia_10x10} }
#core_ring_pattern이라는 이름으로 수평방향 메탈 M7 width 5 um 수직간경 2.188
#corner_bridge가 false일 경우 코너가 꼬이는 방식이 아닌 액자형식

#set_pg_strategy 
set_pg_strategy core_ring -core -pattern {{name: core_ring_pattern} \
	{nets: {VDD VSS VDD VSS}} {offset: {10 10}}} ;	# power metla과 core경계까지의 여유 10
# set pg_strategy core area & pattern {strategy name, nets, offset}

#compile_pg
compile_pg -strategies {core_ring} -tag {CORE_RING}
# compile_pg to create core_ring (tag CORE_RING) 

#####################################
#create Macro Ring
#####################################

#create_Ring_pattern
create_pg_ring_pattern Macro_ring -horizontal_layer M5 \
	-horizontal_width {1} -horizontal_spacing {0.16} -vertical_layer M6 -vertical_width {1} -vertical_spacing {0.16} -corner_bridge false ;#create ring pattern (layer(vertical & horizontal), width, spacing, corner bridge)
#set_pg_strategy
set_pg_strategy MEMCTRL_macro_ring  -macros $ALLMACRO \
	-pattern { {pattern: Macro_ring} {nets: {VSS VDD}}  {offset: {2 2}} }; #macro 마다 ring을 칠건데 blockage 고려해서 offset 설정 줄여가면서 확인
#set strategy for Macros / -pattern {pattern name} {net name} {offset}

#create_via_rule
set_pg_strategy_via_rule M_ring_vias -via_rule { \
	{{{strategies: {MEMCTRL_macro_ring}} {layers: {M5}}} {existing: {strap }}{via_master: {default}}} \
	{{{strategies: {MEMCTRL_macro_ring}} {layers: {M6}}} {existing: {strap }}{via_master: {default}}} \ 
} ;#create via rules for each layers

#compile_pg
compile_pg -strategies {MEMCTRL_macro_ring} -via_rule {M_ring_vias} -tag {MACRO_RING} ;# compile_pg to create macro_ring (tag MACRO_RING) 

#################################
#create Macro Ring connection
#################################

#create_macro_Ring_conn_pattern(vias)
create_pg_macro_conn_pattern Macro_ring_pin -pin_conn_type scattered_pin -layers {M5 M6} ;#create macro_ring pin connection pattern (M5 to M6)
#set_pg_strategy
set_pg_strategy Macro_pins_via -macros $ALLMACRO \
-pattern { {pattern: Macro_ring_pin} {nets: {VSS VDD}} } ;#set strategy for Macros / -pattern {pattern name} {net name}

#compile_pg
compile_pg -strategies {Macro_pins_via} -tag {Macro_RING_con} ;# compile_pg to create Via & stripe (tag MACRO_RING_con)

#################################
#create Power Mesh
#################################
#높은메탈부터
#set M8 MESH boundary 세로
set core_bbox "{0 0} {$core_x $core_y}"

set M8_MESH_bdry  "{0 -36.5640} {$core_x [expr $core_y + 35.852]}" ; # 최외곽 Core Ring 상,하 좌우는??
#{-2.3200 -36.5640} {2.3200 1935.9560}			{1729.2640 -36.5640} {1733.9040 1935.9560}
#create_pg_reigion 

create_pg_region MESH -polygon $M8_MESH_bdry

#create_M8_mesh_pattern
create_pg_mesh_pattern METAL8_PG_PATTERN -layers {{vertical_layer: M8} \
	{width: 4.64}	\
	{spacing: 5.088} \
	{pitch: 19.456} \
	{trim: false}} \
	-parameters {4.64 19.456 5.088} ;# create mesh_pattern {name layer, width, spacing, pitch, trim}

#creat_M8_pg_stretegy
set_pg_strategy METAL8_MAPPING_STRATEGY \
		-pg_regions MESH \
		-pattern {\
			{name: METAL8_PG_PATTERN} \
			{nets: {VDD VSS}} \
	          	{parameters: {4.64 19.456 5.088}} \
	          	{offset_start: {0 0}}} \
                -blockage {placement_blockages: all} ;# create strategy {pattern name, net, parameters, offset}

#create_M8_via_rule

set_pg_strategy_via_rule M8_via \
                   -via_rule {via_master: NIL} ;# create via rule {NIL - no via creation} 나중에 via 박을 예정임 따라서 NIL
		

compile_pg -strategies {METAL8_MAPPING_STRATEGY} -via_rule {M8_via} -tag MESH_8 ;#compile_pg to create vertical MESH (tag MESH_8)

#create_M7_mesh_pattern  가로 #########################################################################################################
#탑에서 메쉬가 링이랑 컨텍이되어서 가로는 굳이 컨택을 박을 필요가없다 코어사이즈에 바운더리를 맞춰놓음
create_pg_mesh_pattern METAL7_PG_PATTERN -layers {{horizontal_layer: M7} \
	{width: 1.104}	\
	{spacing: 5.584} 
	{pitch: 13.376} \
	{trim: false}} \
-parameters {1.104 13.376 5.584} ;# create mesh_pattern {name layer, width, spacing, pitch, trim}

#create_M7_MESH_strategy

set_pg_strategy METAL7_MAPPING_STRATEGY \
		-core \
		-pattern {\
			{name: METAL7_PG_PATTERN} \
			{nets: {VDD VSS}} \
	          	{parameters: {1.104 13.376 5.584}} \
	          	{offset_start: {0 0}}} \
                -blockage {placement_blockages: all} ;# create strategy {pattern name, net, parameters, offset}

#create_M7_via_rule

set_pg_strategy_via_rule M7_via \
                   -via_rule {via_master: NIL} ;# create via rule {NIL - no via creation}

#compile_pg		
compile_pg -strategies {METAL7_MAPPING_STRATEGY} -via_rule {M7_via} -tag MESH_7 ;#compile_pg to create horizontal MESH (tag MESH_7)

#remove placement blockages if you create MESH78 done

remove_placement_blockages [get_placement_blockages -filter "full_name =~ MESH_pblk_*"] ;#remove placement_blockage (MESH_pblk_1 MESH_pblk_2)

#########################
#create_M2 Low MESH
#########################

#create_M2_mesh_pattern     Top에서 M1으로 standard rail이 깔려있으니 M2로 vertical로 깔아줌 
create_pg_mesh_pattern P_m2_triple \
	-layers { \
		{ {vertical_layer: M2} \
		{width: 0.44 0.192 0.192} \
		{spacing: 2.724 3.456} \
		{pitch: 9.728} {offset: 1.216} {trim : false} } \
		} ;# create mesh_pattern {name layer, width, spacing, pitch, trim}

#create_M2_pg_strategy
set_pg_strategy S_m2_vddvss \
	-core  \
	-pattern   { {name: P_m2_triple} {nets: {VDD VSS VSS}} {offset_start: {0 0}} } \
	-blockage  { {{nets: VDD VSS} {placement_blockages : all}}
} ;# create strategy {pattern name, net, parameters, offset}

#create_M2_via_rule
set_pg_strategy_via_rule M2_via \
                   -via_rule {via_master: NIL} ;# create via rule {NIL - no via creation}


#compile_pg
compile_pg -strategies {S_m2_vddvss} -tag {low_MESH_2} \
           -via_rule {M2_via} -drc no_check ;#compile_pg to create vertical low MESH (tag low_MESH_2) 

######################
#create_STD_RAIL
######################
#set via master rule for connect M1 to M2
set_pg_via_master_rule pgvia_1x2 -via_array_dimension {2 1} ;#set via_master_rule {2 1} = 1행 2열 가로2개 세로1개

#create_M1_std_cell_conn_pattern
create_pg_std_cell_conn_pattern std_rail_pattern -layers M1 -rail_width {0.06} \
                                                 -rail_shift {3.344} \
                                                 -parameters {M1 0.06 3.344} ;#create std_cell conn pattern {layer, width, rail_shift}
# VSS 부터 다음 VSS까지 3.344
#create_M1_pg_strategy
set_pg_strategy M1_std_cell_rail \
	-core \
	-blockage {{macros_with_keepout: all}{placement_blockages: all}} \
	-pattern {{pattern: std_rail_pattern} {nets: {VDD VSS}} {parameters: {M1 0.06 3.344}}} \
	-extension {{stop: outermost_ring} {direction: L B R T }} ;#create std_cell conn pattern {core area, blockage, pattern, extension}

#create_M1_via_rule
set_pg_strategy_via_rule M2_via_stdcellrail \
	-via_rule { \
    	  { {strategies: {M1_std_cell_rail}} \
      	  {{existing: strap}{layers: M2}} \
          {via_master: pgvia_1x2} {between_parallel: true} } \
          { {intersection: undefined}{via_master: NIL} }} ;# create via rule strategy name, existing, layer, via_master, between_parallel, {NIL - no via creation}

#compile_pg
compile_pg -strategies {M1_std_cell_rail} -via_rule {M2_via_stdcellrail} -tag {STD_RAIL_M1} ;#compile_pg to create STD Rail (tag STD_RAIL_M1)

#################################
#remove Settings (default value)
#################################

remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all

################
#check_Powerplan
################

#Drc check
check_pg_drc

#missing via check
check_pg_missing_vias

#connectivity check (exclude std cell)
check_pg_connectivity -check_std_cell_pins none ;# std cells are not placed 


################
#Additional (Fix DRC & via)
################

######################################
#change & create via for fixing DRC01
######################################

#create CoreRing M7 to M8 via
set_pg_via_master_rule pgvia_10x10 -via_array_dimension {10 10} ;#set via_master_rule

set core_M7_M8_shape [get_shapes -filter "tag == CORE_RING && layer.name == M7 || tag == MESH_8"] ;#set CoreRing(M7) MESH(M8) shapes & selection
change_selection $core_M7_M8_shape

create_pg_vias -nets {VDD VSS} -to_types {lib_cell_pin_connect stripe} -from_layers M7 \
               -to_layers M8 -via_masters {pgvia_10x10} -tag {core_M7_8_via} -shapes [get_selection] ;#create vias for CoreRing(M7) to MESH(M8)

#create MacroRing M6 to M7 via
set_pg_via_master_rule pgvia_3x3 -via_array_dimension {3 3} ;#set via_master_rule

set M6_M7_shape [get_shapes -filter "tag == MACRO_RING && layer.name == M6 || tag == MESH_7"] ;#set MacroRing(M6) MESH(M7) shapes & selection
change_selection $M6_M7_shape

create_pg_vias -nets {VDD VSS} -to_types {lib_cell_pin_connect stripe} -from_layers M6 \
               -to_layers M7 -via_masters {pgvia_3x3} -tag {M6_7_via} -shapes [get_selection] ;#create vias for MacroRing(M6) to MESH(M7)

#create M7 to M8 via

set_pg_via_master_rule pgvia_5x8 -via_array_dimension {8 5} ;#set via_master_rule

set M7_M8_shape [get_shapes -filter "tag == MESH_8 || tag == MESH_7"] ;#set MESH(M7) MESH(M8) shapes & selection
change_selection $M7_M8_shape

create_pg_vias -nets {VDD VSS} -to_types {lib_cell_pin_connect stripe} -from_layers M7 \
                               -to_layers M8 -via_masters {pgvia_5x8} -tag {M7_8_via} -shapes [get_selection] ;#create vias for MacroRing(M7) to MESH(M8)

#change_selection

########################################
#change & create via for fixing DRC02
######################################## M1 -M2 via와 M2-M7 via

#change via def M1 to M2 vias

set M1_M2_via [get_vias -filter "tag == STD_RAIL_M1"] ;#set StdRail(M1) LowMesh(M2) vias & selection
change_selection $M1_M2_via

set_attribute -objects [get_selection] -name via_def -value [get_via_defs -library [current_lib] VIA12SQ_C] ;#change via defs for StdRail(M1) to LowMesh(M2)
change_selection

#create M2 to M7 vias

set_pg_via_master_rule pgvia_2x4 -via_array_dimension {2 4}

set M2_M7_shape [get_shapes -filter "tag == low_MESH_2 || tag == MESH_7"] ;#set LowMesh(M2) MESH(M7) shapes & selection
change_selection $M2_M7_shape

create_pg_vias -nets {VDD VSS} -to_types {lib_cell_pin_connect stripe} -from_layers M2 \
                               -to_layers M7  -via_masters {pgvia_2x4} -tag {M2_7_via} -shapes [get_selection] ;#create vias for LowMesh(M2) to MESH(M7)

#change M2 to M7 vias columns
set ch_M2_via [get_vias -filter "tag == M2_7_via && owner.name == VSS"] ;#set LowMesh(M2) MESH(M7) vias & selection
change_selection $ch_M2_via
set_attribute -objects [get_selection] -name number_of_columns -value 1 ;#change via coluns for LowMesh(M2) to MESH(M7)  가로 2개 세로 4개에서 가로1개로 바꿈
#change_selection

#remove placement_blockage
remove_placement_blockage [get_placement_blockages -filter "blockage_type == hard"]

###########################################
#create_placement_blockage_for macros
########################################### 메쉬 까려고 했던 잔여 blockage를 지우고 다시 설정
set macro_bbox [get_attr [get_cells $ALLMACRO] bbox] 	 
set i 0

foreach x $macro_bbox {
set llx [expr [lindex $x 0 0] - 2] 
set urx [expr [lindex $x 1 0] + 2]
set lly [expr [lindex $x 0 1] - 2]
set ury [expr [lindex $x 1 1] + 2]
set new_bboxes "{$llx $lly} {$urx $ury}"
create_placement_blockage -name "mc_blkg_hard_${i}" -type hard -boundary $new_bboxes

incr i}

#create 3um placement blockage around the macro (Macro pblk bbox {llx-2 lly-2} {urx+2 ury+2})

################
#check_Powerplan
################
#Drc check
check_pg_drc

#missing via check
check_pg_missing_via

#connectivity check
check_pg_connectivity ;# default

check_pg_connectivity -nets {VDD VSS} -check_std_cell_pins none ;# check pg_net & except std cells

save_block -as ${TOPDESIGN}_03_POWERPLAN
save_lib
##################################################################
### PLACEMENT
##################################################################
################
#create_routing_blockage
################
set i 0
foreach x $MACROBBOX {
   set llx [ expr [ lindex $x 0 0] + 2.1 ]
   set urx [ expr [ lindex $x 1 0] - 2.1 ]
   set lly [ expr [ lindex $x 0 1] + 2.1 ]
   set ury [ expr [ lindex $x 1 1] - 2.1 ]
	set new_bboxes "{$llx $lly} {$urx $ury}"
	create_routing_blockage -name "mc_routing_blk_${i}" -layers "M2 M3 M4 M5 M6 M7 M8 M9 MRDL" -boundary $new_bboxes
	incr i
}

################
#insert_guide_buffer    input단에 바짝붙여서 load effect 줄임
################
set SIGPINS [get_pins -of $ALLMACRO -filter "port_type == signal && net_name !~ *VDD* && net_name !~ *VSS* && net_name !~ *UNCONNECTED*"]
set BUF "sae32hvt/NBUFFX2_HVT"
#-of 변수 변수의 핀 get
foreach x $SIGPINS {
   add_buffer $x -lib_cell $BUF -new_cell_names macro_guide_buf -new_net_names guide_buf
	incr i
}

set GUIDE_BUF [get_attribute [get_cells -physical_context -quiet {*macro_guide_buf*}] full_name]

legalize_placement -cells "$GUIDE_BUF"

set GUIDE_BUF [get_cells -physical_context -design [current_block] -quiet {*guide_buf*}]
change_selection $GUIDE_BUF
set_fixed_objects [get_selection]

################
#read_tluplus    맨해튼 distance로 metal이 연결된다는 가정하에 그때 RC parastic 값
################
remove_scenarios -all
remove_modes -all
remove_corners -all

read_parasitic_tech -name {minTLU} -tlup $PARAMIN
read_parasitic_tech -name {maxTLU} -tlup $PARAMAX

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

##################################################################
### CTS - Setting
##################################################################
################
#clock balancing 
################
#set all_modes "func"

# tunning clock balancing
#foreach mode $all_modes {
#   current_mode $mode
#   set_clock_balance_points \
#      -consider_for_balancing true \
#      -balance_points [get_pins "I_ORCA_TOP/I_SDRAM_IF/*sd_mux_*/S0"]
#}
#
## set Size only cells
#
#set_size_only [get_cells "I_ORCA_TOP/I_SDRAM_IF/*sd_mux_*"] ;# This command applies size-only settings to the specified leaf cells



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
#set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX2_HVT saed32hvt/DELLN1X2_HVT"]
set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX32_HVT */DELLN1X2_HVT"]


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
			set_clock_tree_options -target_skew 0.1 -corners [get_corners ss*] ;# Specifies the required value for maximum skew for the specified clock trees (The default is 0)
			set_clock_tree_options -target_skew 0.1 -corners [get_corners ff*]
			set_clock_tree_options -target_latency 0.1 -corners [get_corners ss*] ;# Specifies the minimum early insertion delay constraint for the specified clock trees (There is no default for this option)
			set_clock_tree_options -target_latency 0.1 -corners [get_corners ff*]
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
#set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX2_HVT */DELLN1X2_HVT"]
set_lib_cell_purpose -include hold [get_lib_cells "*/NBUFFX32_HVT */DELLN1X2_HVT"]
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

save_block -as ${TOPDESIGN}_START_ROUTE
save_lib

### set_app_options_before_routing
set_app_options -name opt.tie_cell.add_to_highest_hierarchy -value false ;# During optimization, tie-cells will be inserted to drive constant pins if tie-cells were available for optimization purpose
set_attribute -objects [get_blocks -all -lib_cells *:TIEH_HVT.frame] -name dont_touch -value false ;#set TIEH cell dont_touch value false
set_attribute -objects [get_blocks -all -lib_cells *:TIEL_HVT.frame] -name dont_touch -value false ;#set TIEL cell dont_touch value false

set_app_options -name route.global.timing_driven -value true ;# enables or disables timing-driven global routing
set_app_options -name route.global.crosstalk_driven -value true ;# enables or disables crosstalk-driven global routing
set_app_options -name route.track.timing_driven -value true ;# enables or disables timing-driven track assignment
set_app_options -name route.track.crosstalk_driven -value true ;# enables or disables crosstalk-driven track assignment
set_app_options -name route.detail.timing_driven -value true ;# This app option specifies whether timing-driven routing is enabled
set_app_options -name route.detail.force_max_number_iterations -value false ;# This app option controls whether the max number of iterations must be run when DRCs do not converge

set_app_options -name route.detail.generate_extra_off_grid_pin_tracks -value false ;# This app option specifies whether to generate extra off-grid routing tracks for pin connections
set_app_options -name route.detail.generate_off_grid_feed_through_tracks -value off ;# This app option specifies the effort level used to generate extra off-grid routing tracks for feedthrough nets between blockages
#set_app_options -name route.detail.diff_net_spacing -value 0.2 
set_app_options -name route.common.concurrent_redundant_via_mode -value off
set_app_options -name route.common.post_detail_route_redundant_via_insertion -value off

set_app_options -name route.common.via_on_grid_by_layer_name -value {{V1 true}}

###FIX_XDFF_ADDER_VIA(Create_Custom_Via_For_Routing)
create_via_def -is_default -lower_layer M1 -upper_layer M2 -cut_size {0.050 0.050} -lower_enclosure {0.005 0.005} -cut_layer VIA1 -upper_enclosure {0.005 0.005} -force VIA12SQ_C

create_via_def -is_default -lower_layer M1 -upper_layer M2 -cut_size {0.050 0.050} -lower_enclosure {0.005 0.005} -cut_layer VIA1 -upper_enclosure {0.005 0.005} VIA12_thin
create_via_def -is_default -lower_layer M1 -upper_layer M2 -cut_size {0.10 0.10} -lower_enclosure {0.005 0.005} -cut_layer VIA1 -upper_enclosure {0.005 0.005} VIA12_fat
return
##################################################################
### Routing - Detailed Route
##################################################################
route_auto ;# The route_auto command performs all routing stages in a single step (global routing, track assignment, detail routing)

#set app option for second route_auto
set_app_options -name place.legalize.stream_place -value true ;# Stream placement improves the largest displacements in the design (For each large-displacement cell, it attempts to move out other cells to make room, such that a single very large displacement is replaced by a stream of small displacements)
set_app_options -list {place.legalize.stream_place {true}}

#optimize_routability
optimize_routability ;#  The  optimize_routability  command  helps  to  improve routability of a design by spacing cells further apart with the use of the keepout  margins  or by flipping cells


route_auto ;# The route_auto command performs all routing stages in a single step (global routing, track assignment, detail routing)


set_app_options -name place.legalize.stream_place -value false
set_app_options -list {place.legalize.stream_place {false}}
### search_and_repair
route_eco ;
route_detail -incremental true -initial_drc_from_input true -max_number_iterations 60 ;# This command performs detail routing on a block
compute_clock_latency ;# This command is used primarily to correct your block's timing constraints after CTS
update_timing


##################################################################
### Check Routing
##################################################################
###connect_pg
#FILLER CELL
connect_pg_net -net VSS [get_pins -filter "full_name =~ */VSS"]
connect_pg_net -net VDD [get_pins -filter "full_name =~ */VDD"]

check_lvs
check_route

save_block -as ${TOPDESIGN}_Routed
save_lib

#check_route after route_auto
check_route ;# Verifies, checks, and reports routing statistics for a block

#check_lvs (short, open)
check_lvs ;# Checks for inconsistencies in the physical layout of the current design

#report_timing & QoR

report_timing -significant_digits 5
report_qor -summary -significant_digits 5

save_block -as ${TOPDESIGN}_07_ROUTE
save_lib

##################################################################
### Chip Finish -filler cells
##################################################################
##DCAP
#set SH_DCAPS "*/DCAP_HVT"
#create_stdcell_fillers -lib_cells $SH_DCAPS -rules {post_route_auto_delete} ;# it allows route_opt & eco_opt to automatically remove filler cells
#
##connect pg_net for all STD filler cell (VDD, VSS)
#set DCAPS [get_cells -filter "full_name =~ *DCAP*"]
#
#set i 0
#
#foreach x $DCAPS {
#set pins [get_pins -of_objects $x -filter "port_type == power"]
#connect_pg_net -net VDD [get_pins $pins]
#
#incr i
#}
#
#foreach x $DCAPS {
#set pins [get_pins -of_objects $x -filter "port_type == ground"]
#connect_pg_net -net VSS [get_pins $pins]
#
#incr i
#}

#Filler
set SH_FILLERS "*/SHFILL128_HVT */SHFILL64_HVT */SHFILL3_HVT */SHFILL2_HVT */SHFILL1_HVT"
create_stdcell_fillers -lib_cells $SH_FILLERS -rules {post_route_auto_delete} ;# it allows route_opt & eco_opt to automatically remove filler cells

#connect pg_net for all STD filler cell (VDD, VSS)
set FILLERS [get_cells -filter "full_name =~ *SHFILL*"]

set i 0

foreach x $FILLERS {
set pins [get_pins -of_objects $x -filter "port_type == power"]
connect_pg_net -net VDD [get_pins $pins]

incr i
}

foreach x $FILLERS {
set pins [get_pins -of_objects $x -filter "port_type == ground"]
connect_pg_net -net VSS [get_pins $pins]

incr i
}

#remove Filler Cell with violation
remove_stdcell_fillers_with_violation
remove_routing_blockages *

save_block -as ${TOPDESIGN}_08_FILL
save_lib

######################
#extract_spef (ICC2)
######################
write_parasitics -output ./outputs/${TOPDESIGN}
write_sdc -output ./outputs/MEMCTRL_FC.sdc

######################
#write Netlist file
######################
write_verilog ./outputs/${TOPDESIGN}.v -exclude {leaf_module_declarations \
        corner_cells pad_spacer_cells \
        filler_cells flip_chip_pad_cells \
        empty_modules unconnected_ports \
        pg_objects \
        spare_cells}

######################
#write gds
######################
write_gds ./outputs/${TOPDESIGN}.gds -exclude_empty_block -skip_unplaced_cells -lib_cell_view layout


######################
#write def
######################
write_def ./outputs/${TOPDESIGN}.def -include_tech_via_definitions -include {rows_tracks vias cells ports blockages bounds specialnets nets routing_rules}


