verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc32/soc/proj3/p1/sim/gate/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc32/soc/proj3/p1/sim/gate/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc32/soc/proj3/p1/sim/gate/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "829"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TIEH_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/BIST_EN} \
{/TB_MEMCTRL/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/BIST_PASS} \
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
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/BIST_EN} \
{/TB_MEMCTRL/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/BIST_PASS} \
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
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 8577152.080227 22807427.122422
wvZoomAll -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM/UBIST"
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/BIST_EN} \
{/TB_MEMCTRL/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/BIST_PASS} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIN_ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_CE} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 19 20 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/ADDR\[15:0\]} \
{/TB_MEMCTRL/BIST_EN} \
{/TB_MEMCTRL/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/BIST_PASS} \
{/TB_MEMCTRL/CE} \
{/TB_MEMCTRL/CLK} \
{/TB_MEMCTRL/CSB} \
{/TB_MEMCTRL/IDATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
{/TB_MEMCTRL/OEB} \
{/TB_MEMCTRL/RSTN} \
{/TB_MEMCTRL/WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIN_ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_CE} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBIST/BIST_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 19 20 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 7)}
wvZoom -win $_nWave2 12865728.120341 20858074.376916
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj3/p1/sim/gate/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
