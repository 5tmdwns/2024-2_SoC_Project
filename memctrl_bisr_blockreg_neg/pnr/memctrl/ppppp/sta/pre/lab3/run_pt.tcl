#lib setup
#set target_library "saed14rvt_ss0p72v125c.db"
#set target_library "saed14rvt_tt0p8v25c.db"
set target_library "saed14rvt_ff0p88vm40c.db"

set link_library "* $target_library dwfoundation.sldb"

read_ddc ./../../../syn/lab3/outputs/alu_1_gate.ddc
link
source ./../../../syn/lab3/sdc/alu.sdc
check_timing -verbose
report_analysis_coverage
write_sdf alu_pt_ff.sdf
