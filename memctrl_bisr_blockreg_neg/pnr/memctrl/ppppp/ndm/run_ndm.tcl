################################################################
# lm_shell setup 
################################################################
set_app_options -name file.lef.allow_site_conflicts -value true
set_app_options -name file.lef.auto_rename_conflict_sites -value true
set_app_options -name lib.workspace.allow_commit_workspace_overwrite -value true
set_app_options -name lib.workspace.group_libs_create_slg -value false
set_app_options -name lib.workspace.allow_missing_related_pg_pins -value true
set_app_options -name lib.logic_model.auto_remove_incompatible_timing_designs -value true
set_app_options -name lib.workspace.remove_frame_bus_properties -value true
set_app_options -name lib.logic_model.require_same_opt_attrs -value false
set_app_options -name lib.logic_model.use_db_rail_names -value true
set_app_options -name lib.logic_model.auto_remove_timing_only_designs -value true
set_app_options -name lib.workspace.save_design_views -value false
set_app_options -name lib.workspace.save_layout_views -value false
set_app_options -name file.lef.non_real_cut_obs_mode -value true
set_app_options -as_user_default -name lib.physical_model.block_all -value false
set_app_options -as_user_default -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value {{M2 0} {M3 0} {M4 0} {M5 0} {M6 0} {M7 0} {M8 0} {M9 0} {MRDL 0}}
set_app_options -as_user_default -name lib.physical_model.trim_metal_blockage_around_pin -value {{PO none} {M1 none} {M2 none} {M3 none} {M4 none} {M5 none} {M6 none} {M7 none} {M8 none} {M9 none} {MRDL none}}
set_app_options -name lib.workspace.group_libs_macro_grouping_strategy -value single_cell_per_lib
set_app_options -name lib.workspace.group_libs_naming_strategies -value common_prefix
set_app_options -name lib.workspace.group_libs_fix_cell_shadowing -value false


################################################################
# hvt 
################################################################
create_workspace -technology /home/eda/soc/lib/gpdk/32n/tech/milkyway/saed32nm_1p9m_mw.tf saed32hvt

read_db /home/eda/soc/lib/gpdk/32n/lib/stdcell_hvt/db_nldm/saed32hvt_ff1p16v125c.db
read_db /home/eda/soc/lib/gpdk/32n/lib/stdcell_hvt/db_nldm/saed32hvt_ff1p16vn40c.db
read_db /home/eda/soc/lib/gpdk/32n/lib/stdcell_hvt/db_nldm/saed32hvt_ss0p95v125c.db
read_db /home/eda/soc/lib/gpdk/32n/lib/stdcell_hvt/db_nldm/saed32hvt_ss0p95vn40c.db
read_lef /home/eda/soc/lib/gpdk/32n/lib/stdcell_hvt/lef/saed32nm_hvt_1p9m.lef

check_workspace
#report_workspace
commit_workspace -output ./sae32hvt.ndm
remove_workspace 

################################################################
# sram 
################################################################
create_workspace -technology /home/eda/soc/lib/gpdk/32n/tech/milkyway/saed32nm_1p9m_mw.tf saed32sram

read_db /home/eda/soc/lib/sram/db_nldm/saed32sram_ff1p16v125c.db
read_db /home/eda/soc/lib/sram/db_nldm/saed32sram_ff1p16vn40c.db
read_db /home/eda/soc/lib/sram/db_nldm/saed32sram_ss0p95v125c.db
read_db /home/eda/soc/lib/sram/db_nldm/saed32sram_ss0p95vn40c.db
read_lef /home/eda/soc/lib/sram/lef/saed32sram.lef

check_workspace
#report_workspace
commit_workspace -output ./sae32sram.ndm
remove_workspace 

