verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/gate/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/gate/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/gate/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "270" "100" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSetCursor -win $_nWave2 577014.887242
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X1_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/MEM_CE} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/MEM_CE} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetCursor -win $_nWave2 419733.325203 -snap {("G4" 2)}
wvSelectGroup -win $_nWave2 {G2} {G3} {G4}
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4/G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4/G2}
wvSelectGroup -win $_nWave2 {G4}
wvSetCursor -win $_nWave2 506901.419827 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G3} {G4}
wvSelectGroup -win $_nWave2 {G5}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X1_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
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
wvAddSignal -win $_nWave2 -group {"G4/G2" \
}
wvAddSignal -win $_nWave2 -group {"G4" {/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/CLK} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
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
wvAddSignal -win $_nWave2 -group {"G4/G2" \
}
wvAddSignal -win $_nWave2 -group {"G4" {/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/CLK} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G4" 9)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G4" 12 )} 
wvSetPosition -win $_nWave2 {("G4" 11)}
wvSetPosition -win $_nWave2 {("G4/G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 12 )} 
wvSetPosition -win $_nWave2 {("G4/G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 10)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 13 )} 
wvSetPosition -win $_nWave2 {("G4/G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 11)}
wvSetPosition -win $_nWave2 {("G4" 10)}
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetCursor -win $_nWave2 2039123.991250 -snap {("G5" 0)}
wvSetCursor -win $_nWave2 1996487.423227 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 2009752.133278 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 2046703.825565 -snap {("G4" 8)}
wvZoom -win $_nWave2 407416.094440 664182.981867
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1538311.160714 2064187.500000
wvSetCursor -win $_nWave2 1742438.701439 -snap {("G4" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 12 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 11 12 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X1_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G4" 15)}
wvSetPosition -win $_nWave2 {("G4" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4/G2" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 )} 
wvSetPosition -win $_nWave2 {("G4" 15)}
wvSetPosition -win $_nWave2 {("G4" 15)}
wvSetPosition -win $_nWave2 {("G4" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4/G2" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 )} 
wvSetPosition -win $_nWave2 {("G4" 15)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 1600639.902810 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1617543.070859 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1606743.824606 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1513306.867893 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1511428.738110 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1830241.268802 -snap {("G4" 11)}
wvSetCursor -win $_nWave2 1806295.114067 -snap {("G4" 7)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1557970.089286 2157567.410714
wvSetCursor -win $_nWave2 1743751.408878 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1955766.978211 -snap {("G4" 8)}
wvSetCursor -win $_nWave2 1753388.480211 -snap {("G4" 8)}
wvSetCursor -win $_nWave2 1635602.052804 -snap {("G4" 8)}
wvSetCursor -win $_nWave2 1749105.337396 -snap {("G4" 9)}
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 1487288.300836 2197711.234912
wvZoom -win $_nWave2 1669346.545779 1801272.810232
wvZoom -win $_nWave2 1735003.442480 1755827.458224
wvSetCursor -win $_nWave2 1754454.658671 -snap {("G4" 7)}
wvZoom -win $_nWave2 1753124.595532 1756005.541072
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 1754323.378240 -snap {("G4" 9)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 1754420.000000
wvSetCursor -win $_nWave2 1753878.668526 -snap {("G4" 8)}
wvSetCursor -win $_nWave2 1754980.775209 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1754342.713445 -snap {("G4" 9)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 1753740.000000
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1754884.099184 -snap {("G4" 10)}
wvSelectSignal -win $_nWave2 {( "G4" 9 )} 
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 1753740.000000
wvSetCursor -win $_nWave2 1870610.027855 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1747947.075209 -snap {("G4" 8)}
wvZoom -win $_nWave2 1420845.868152 2427704.271123
wvZoom -win $_nWave2 1633062.077506 1843408.540522
wvZoom -win $_nWave2 1713333.568963 1771144.667434
wvSetCursor -win $_nWave2 1754397.162584 -snap {("G4" 7)}
wvZoom -win $_nWave2 1749566.151570 1766259.978519
wvZoom -win $_nWave2 1752914.217141 1757579.808517
wvZoom -win $_nWave2 1754218.156791 1755626.065052
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1451511.606314 2831469.823584
wvZoom -win $_nWave2 1605267.396538 2113942.802533
wvZoom -win $_nWave2 1706341.246940 1859841.253391
wvZoom -win $_nWave2 1740689.902050 1783162.512935
wvZoom -win $_nWave2 1751377.067834 1764509.267857
wvZoom -win $_nWave2 1752450.079535 1757205.472301
wvSetCursor -win $_nWave2 1754406.104600 -snap {("G4" 7)}
wvSetCursor -win $_nWave2 1754384.027568 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1754419.350820 -snap {("G4" 9)}
wvSetCursor -win $_nWave2 1754406.104600 -snap {("G4" 7)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/gate/verdiLog/novas_autosave.ses.wave.0"
debExit
