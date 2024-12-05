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
wvSetCursor -win $_nWave2 258780.552952
verdiWindowResize -win $_Verdi_1 "237" "108" "1440" "837"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 162054.358013
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
wvSetCursor -win $_nWave2 314993.158388 -snap {("G1" 19)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 511484.067479 2587805.529522
wvSetCursor -win $_nWave2 1464996.266543 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 3646140.208762 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 1432214.241859 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 4271936.482091 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 4254422.992721 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 3670640.013702 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 3641450.864751 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 3682315.673282 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 3723180.481814 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 3581126.623586 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 3662856.240648 -snap {("G1" 6)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/rtl/verdiLog/novas_autosave.ses.wave.0"
debExit
