verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
wvSetCursor -win $_nWave2 323333.434959
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "387" "165" "865" "579"
wvSetCursor -win $_nWave2 475569.300775
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 679863.155334 -snap {("G1" 8)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 3199196.581197 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 2446444.444444 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 2817593.067426 -snap {("G1" 9)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
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
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 )} 
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
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
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 )} 
wvSetPosition -win $_nWave2 {("G1" 25)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1359135.802469 -snap {("G1" 21)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 17
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvZoom -win $_nWave2 1150037.986705 1526414.055081
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1265488.575579 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 1328039.204227 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 1366641.877906 -snap {("G1" 16)}
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 2445298.031865 -snap {("G1" 21)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetCursor -win $_nWave2 2543316.307404 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 2543316.307404 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 2553634.020619 -snap {("G1" 14)}
wvZoom -win $_nWave2 2646493.439550 3110790.534208
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetCursor -win $_nWave2 2744835.654538 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 2793136.476944 -snap {("G1" 15)}
wvZoom -win $_nWave2 2755714.218143 2821420.742317
wvZoom -win $_nWave2 2783733.401366 2805902.425455
wvPrevView -win $_nWave2
wvPrevView -win $_nWave2
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 2481410.028116 3291350.515464
wvSetCursor -win $_nWave2 2738738.824002 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 2735702.496027 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 2750125.053909 -snap {("G1" 16)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 2725075.348115 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 2727352.594096 -snap {("G1" 17)}
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 2532998.594189 3121108.247423
wvZoom -win $_nWave2 2731974.774899 2772210.955485
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 2847171.511099 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 2745754.288798 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 2756226.719362 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetCursor -win $_nWave2 2771659.774929 -snap {("G1" 17)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 19 20 21 22 23 24 25 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetCursor -win $_nWave2 2581502.483115 -snap {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
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
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 )} 
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
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
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 )} 
wvSetPosition -win $_nWave2 {("G1" 24)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetCursor -win $_nWave2 918276.476101 -snap {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetCursor -win $_nWave2 856370.196813 -snap {("G1" 15)}
wvZoom -win $_nWave2 722239.925023 1005977.038425
wvSetCursor -win $_nWave2 748566.048947 -snap {("G1" 15)}
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 484932.521087 1501227.272727
wvZoom -win $_nWave2 674475.778422 833539.717995
wvPrevView -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetCursor -win $_nWave2 1354432.197566 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 1456347.416334 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 1338240.060004 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetCursor -win $_nWave2 1358242.112286 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 1358242.112286 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 1296330.998081 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 1350622.282845 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1356337.154926 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1352527.240205 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1300140.912801 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 1352527.240205 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetCursor -win $_nWave2 1305855.784882 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetCursor -win $_nWave2 1363004.505686 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 1350622.282845 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1341097.496045 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 1388721.430048 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 1347764.846805 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 1523973.402619 -snap {("G1" 12)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 2456694.390089 -snap {("G1" 17)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 2491727.741331 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 2362756.326148 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 2037748.359888 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 1614722.118088 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 809940.487348 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 557156.513590 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1289714.151828 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 2099654.639175 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 2538157.450797 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 1067883.317713 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 593268.509841 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 1480591.846298 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 2084178.069353 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 2961183.692596 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 3250079.662605 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 3451275.070291 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 3735012.183693 -snap {("G1" 20)}
wvSetCursor -win $_nWave2 3353256.794752 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 3652470.477976 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 2816735.707591 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 2197672.914714 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 1733375.820056 -snap {("G1" 15)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3038566.541706 -snap {("G1" 20)}
wvSetCursor -win $_nWave2 2584587.160262 -snap {("G1" 19)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/verdiLog/novas_autosave.ses.wave.0"
debExit
