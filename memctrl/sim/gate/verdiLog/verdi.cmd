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
verdiWindowResize -win $_Verdi_1 "270" "100" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 579077.122153
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TNBUFFX8_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
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
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/verdiLog/novas_autosave.ses.wave.0"
debExit
