verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiWindowResize -win $_Verdi_1 "569" "198" "900" "700"
wvSetCursor -win $_nWave2 237472.253259
wvSetCursor -win $_nWave2 820098.372006
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK1\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK2\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK3\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK4\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK1\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK2\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK3\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK4\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[3:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK1\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK2\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK3\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK4\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
{/TB_MEMCTRL/DUT/n1} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 )} 
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK1\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK2\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK3\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_CSB_BANK4\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK1\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK2\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK3\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_BANK4\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[3:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK1\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK2\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK3\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB_BANK4\[15:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
{/TB_MEMCTRL/DUT/n1} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 )} 
wvSetPosition -win $_nWave2 {("G1" 27)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 909435.893559 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 3130351.316635 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 3300403.660886 -snap {("G1" 13)}
wvZoom -win $_nWave2 3255287.732820 4390126.846500
wvSetCursor -win $_nWave2 3350255.784362 -snap {("G1" 7)}
wvZoom -win $_nWave2 3302150.850834 3549964.144766
wvZoom -win $_nWave2 3327457.410715 3415791.629169
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2963769.428388 4122901.734104
wvZoom -win $_nWave2 3237732.619462 3615176.472383
wvZoom -win $_nWave2 3317730.353221 3459544.517613
wvZoom -win $_nWave2 3345783.508411 3376204.787093
wvZoom -win $_nWave2 3349691.187111 3358600.694548
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 3630096.981374 -snap {("G1" 7)}
wvZoom -win $_nWave2 3470456.005138 4549767.822736
wvZoom -win $_nWave2 3564037.954641 3923115.360881
wvZoom -win $_nWave2 3615927.753230 3698720.809646
wvZoom -win $_nWave2 3643950.836550 3647513.543538
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1221600.513809 2342557.803468
wvSetCursor -win $_nWave2 1454143.355529 -snap {("G1" 7)}
wvZoom -win $_nWave2 1395107.711501 1605332.199992
wvZoom -win $_nWave2 1434668.260715 1488945.874314
wvSetCursor -win $_nWave2 1453771.749637 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 1451575.545619 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 1452237.892863 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 1452168.172100 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 1452516.775913 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 1452168.172100 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 1452621.357056 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 1252216.066769 -snap {("G1" 7)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1100134.553629 -snap {("G1" 2)}
wvZoom -win $_nWave2 943964.033398 1995512.202954
wvZoom -win $_nWave2 1052698.301412 1264088.524322
wvSetCursor -win $_nWave2 1149907.935069 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1099402.371214 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 1151129.843872 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 1149500.632135 -snap {("G1" 3)}
wvZoom -win $_nWave2 1150179.470358 1151944.449740
wvPrevView -win $_nWave2
wvSetMarker -win $_nWave2 1152070.000000
wvSetMarker -win $_nWave2 1152450.000000
wvZoom -win $_nWave2 1141354.573448 1183035.240393
wvSetMarker -win $_nWave2 600.000000
wvSetMarker -win $_nWave2 1152070.000000
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2981121.708414 4279072.254335
wvSetCursor -win $_nWave2 3362087.282906 -snap {("G1" 13)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/verdiLog/novas_autosave.ses.wave.0"
debExit
