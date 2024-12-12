#lib setup
set target_library "saed32hvt_ss0p95v125c.db"
set link_library "* $target_library \
       saed32sram_ss0p95v125c.db \
       dw_foundation.sldb"

read_ddc ./../../syn/memctrl/outputs/MEMCTRL_gate.ddc
link
source  ./../../syn/memctrl/sdc/MEMCTRL_pt.sdc
check_timing -verbose
report_analysis_coverage
write_sdf MEMCTRL_pt_ss.sdf
