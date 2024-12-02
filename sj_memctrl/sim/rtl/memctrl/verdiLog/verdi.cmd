debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/proj/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/proj/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/proj/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "853"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSetCursor -win $_nWave2 6105490.256864
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
{/TB_MEMCTRL/DUT/USRAM/GATE_ODATA\[31:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[8:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[3:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[3:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/OR_ODATA\[23:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
{/TB_MEMCTRL/DUT/USRAM/GATE_ODATA\[31:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[8:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[3:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[3:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/OR_ODATA\[23:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 12857934.080717 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 76376665.190434 92859167.404783
wvSetCursor -win $_nWave2 98622169.212230 -snap {("G2" 0)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/proj/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
