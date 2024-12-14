################################################################
# PRE
################################################################
set TOPDESIGN MEMCTRL
set listCorner "ff1p16vn40c ss0p95v125c ff1p16v125c ss0p95vn40c"
set listMode "func"

#search_path
set synopsys32 "/home/eda/soc/lib/gpdk/32n/lib"
set_app_var search_path ""
set_app_var search_path [concat ${search_path} ${synopsys32}/stdcell_hvt/db_nldm ]
set_app_var search_path [concat ${search_path} ${synopsys32}/sram/db_nldm ]

# Loop over corners and modes
foreach corner ${listCorner} {
    foreach mode ${listMode} {
        ################################################################
        # SETUP
        ################################################################
        #target_library
        if { $corner == "ss0p95v125c" } {
                  set TARGET_LIBRARY_FILES_HVT ""
                  set TARGET_LIBRARY_FILES_HVT [concat $TARGET_LIBRARY_FILES_HVT saed32hvt_ss0p95v125c.db ]
                  set TARGET_LIBRARY_FILES_MEM ""
                  set TARGET_LIBRARY_FILES_MEM [concat $TARGET_LIBRARY_FILES_MEM saed32sram_ss0p95v125c.db ]
                  set SPEFFILENAME "./spef/MEMCTRL.maxTLU_125.spef"
        }

        if { $corner == "ff1p16vn40c" } {
                  set TARGET_LIBRARY_FILES_HVT ""
                  set TARGET_LIBRARY_FILES_HVT [concat $TARGET_LIBRARY_FILES_HVT saed32hvt_ff1p16vn40c.db ]
                  set TARGET_LIBRARY_FILES_MEM ""
                  set TARGET_LIBRARY_FILES_MEM [concat $TARGET_LIBRARY_FILES_MEM saed32sram_ff1p16vn40c.db ]
                  set SPEFFILENAME "./spef/MEMCTRL.minTLU_-40.spef"
        }

        if { $corner == "ss0p95vn40c" } {
                  set TARGET_LIBRARY_FILES_HVT ""
                  set TARGET_LIBRARY_FILES_HVT [concat $TARGET_LIBRARY_FILES_HVT saed32hvt_ss0p95vn40c.db ]
                  set TARGET_LIBRARY_FILES_MEM ""
                  set TARGET_LIBRARY_FILES_MEM [concat $TARGET_LIBRARY_FILES_MEM saed32sram_ss0p95vn40c.db ]
                  set SPEFFILENAME "./spef/MEMCTRL.maxTLU_-40.spef"
        }

        if { $corner == "ff1p16v125c" } {
                  set TARGET_LIBRARY_FILES_HVT ""
                  set TARGET_LIBRARY_FILES_HVT [concat $TARGET_LIBRARY_FILES_HVT saed32hvt_ff1p16v125c.db ]
                  set TARGET_LIBRARY_FILES_MEM ""
                  set TARGET_LIBRARY_FILES_MEM [concat $TARGET_LIBRARY_FILES_MEM saed32sram_ff1p16v125c.db ]
                  set SPEFFILENAME "./spef/MEMCTRL.minTLU_125.spef"
        }

        set_app_var target_library "$TARGET_LIBRARY_FILES_HVT"
        set_app_var link_path "* $target_library $TARGET_LIBRARY_FILES_MEM "

        ################################################################
        # Main Code
        ################################################################
        #netlist
        read_verilog ./netlist/${TOPDESIGN}.v
        current_design ${TOPDESIGN}
        link_design
        read_sdc ./../../pnr/memctrl/outputs/${TOPDESIGN}_FC.sdc

        read_parasitics -format SPEF -verbose ${SPEFFILENAME}

        # Set up report directory
        set rpt_dir ./rpt/${corner}_${mode}
        file mkdir $rpt_dir

        # Generate reports
        report_annotated_parasitics -check > $rpt_dir/annotated_parasitics_check.rpt

        set_propagated_clock [all_clocks]

        report_design > $rpt_dir/design.rpt

        check_timing -verbose > $rpt_dir/timing_check.rpt

        report_analysis_coverage > $rpt_dir/analysis_coverage.rpt

        report_constraint -all_violators > $rpt_dir/constraint_violators.rpt

        # Write SDF for the current corner and mode
        write_sdf ./sdf/${TOPDESIGN}_${corner}_${mode}.sdf
    }
}

