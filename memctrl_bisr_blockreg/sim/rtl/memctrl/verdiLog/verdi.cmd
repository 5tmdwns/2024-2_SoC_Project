verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 41242144.886364
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/read"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 78721848.484848 -snap {("G1" 19)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 732228958.333333 1164909706.439394
wvZoomAll -win $_nWave2
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 855149625.408885 936687001.235690
wvZoom -win $_nWave2 871673298.161581 897462581.803771
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 873449206.915384 894296831.416556
wvZoomAll -win $_nWave2
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 878325497.873434 882708237.115157
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 353090643.939394 662768503.787879
wvZoom -win $_nWave2 446932419.650962 513501429.296422
wvZoom -win $_nWave2 289463086.538462 379093788.461538
verdiWindowResize -win $_Verdi_1 "2" "32" "1436" "826"
wvSetCursor -win $_nWave2 293991016.399950 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 293651504.336913 -snap {("G1" 10)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 325072288.698955 664656733.143400
wvZoom -win $_nWave2 454714213.358602 523727576.237151
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 1077393769.648878 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1079753200.858402 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1081588314.021364 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1021330748.355347 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1023231401.274129 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1021723986.890267 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1023362480.785769 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1026049610.774393 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1025459752.972012 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1027622564.914075 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1029129979.297937 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1031423870.751639 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1033193444.158782 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 1035421795.856665 -snap {("G1" 10)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 628376343.779677 938936476.733143
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 515181528.964862 837351386.514720
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 535498547.008547 921521889.838556
wvZoom -win $_nWave2 655741335.658303 758387618.652038
wvZoom -win $_nWave2 702044264.834011 729728542.488542
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 701361905.877738 719493158.144437
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 692296279.744388 714619165.599625
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 692783678.998869 717446081.275616
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 695903034.227548 718420879.784579
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 702336704.386700 722222593.969532
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
