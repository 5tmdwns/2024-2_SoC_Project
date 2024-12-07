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
verdiWindowResize -win $_Verdi_1 "301" "71" "900" "700"
wvSetCursor -win $_nWave2 316873.250564
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
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
wvSetCursor -win $_nWave2 154862.866817 -snap {("G1" 19)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 6001578.431373 7668078.431373
wvSetCursor -win $_nWave2 532330.620549 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 783238.046796 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 5600816.593332 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 5833075.494654 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 5687277.936160 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 5885630.428530 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 6134842.534329 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 6334890.347147 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 6504422.391908 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 6267077.529242 -snap {("G1" 2)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl/sim/gate/verdiLog/novas_autosave.ses.wave.0"
debExit
