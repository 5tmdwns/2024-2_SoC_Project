set TOPDESIGN MEMCTRL
set RTL_FILES { \
./../rtl/FSM.v \
./../rtl/SRAM64KB.v \
./../rtl/MEMCTRL.v \
}
read_file -format verilog $RTL_FILES
current_design $TOPDESIGN
analyze -format verilog $RTL_FILES
elaborate ${TOPDESIGN}
link
check_design
source ./sdc/${TOPDESIGN}.sdc -verbose
check_timing
write_file -format ddc -output ./outputs/${TOPDESIGN}_unmapped.ddc
compile_ultra -no_autoungroup
report_constraint -all_violators
write_file -format verilog -hierarchy -output ./outputs/${TOPDESIGN}_gate.v
write_file -format ddc -output ./outputs/${TOPDESIGN}_gate.ddc
write_sdf ./outputs/${TOPDESIGN}_gate.sdf
