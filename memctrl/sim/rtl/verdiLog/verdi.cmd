verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/rtl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/rtl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl/sim/rtl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "837"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSetCursor -win $_nWave2 141291.143393
verdiSetActWin -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 192439.550141
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
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
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
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
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 326134.395501 -snap {("G1" 22)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3367692.127460 4319761.480787
wvSetCursor -win $_nWave2 4250935.599838 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 1454513.740571 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 3350377.343761 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 3649293.213831 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3948209.083901 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 4246171.976052 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3644490.467837 -snap {("G1" 7)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/rtl/verdiLog/novas_autosave.ses.wave.0"
debExit
