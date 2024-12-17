set TOPDESIGN MEMCTRL
set RTL_FILES { \
./../../rtl/memctrl/FSM.v \
./../../rtl/memctrl/SRAM64KB.v \
./../../rtl/memctrl/MEMCTRL.v \
./../../rtl/memctrl/BinaryCounter.v \
./../../rtl/memctrl/BIST.v \
./../../rtl/memctrl/GrayCounter.v \
./../../rtl/memctrl/LFSR16B.v \
./../../rtl/memctrl/LFSR8B.v \
./../../rtl/memctrl/Toggle8B.v \
./../../rtl/memctrl/BISR.v \
./../../rtl/memctrl/SPARE_SRAM3KB.v \
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
write_file -format ddc -hierarchy -output ./outputs/${TOPDESIGN}_gate.ddc
write_sdf ./outputs/${TOPDESIGN}_gate.sdf
