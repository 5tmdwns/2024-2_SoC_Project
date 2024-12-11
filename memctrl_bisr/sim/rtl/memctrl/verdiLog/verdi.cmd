verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list2.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 30943650.608045
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_ODATA} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 )} 
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_ODATA} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 )} 
wvSetPosition -win $_nWave2 {("G1" 28)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 23712608.044902 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 20455381.665108 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 23256596.351731 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 22605151.075772 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 19478213.751169 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 20911393.358279 -snap {("G1" 5)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 410410523.854069 481418058.933583
wvZoom -win $_nWave2 9697942.115630 25108370.682934
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetCursor -win $_nWave2 24679901.984633 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 28399111.919051 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 464571704.881205 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 465580792.847908 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 453563903.312611 -snap {("G1" 11)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 442925324.976787 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 455857451.253482 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 443571931.290622 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 461676908.077994 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 435812655.524605 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 452624419.684308 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 436459261.838440 -snap {("G1" 23)}
wvZoom -win $_nWave2 10345701.021356 71773300.835655
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 13578732.590529 77592757.660167
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 24571039.925720 84705427.112349
wvSetCursor -win $_nWave2 27303356.856325 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 20826486.927217 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 19988960.643281 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 20491476.413643 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 24455767.490941 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 28531728.739431 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 28308388.397048 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/SPARE_USRAM"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_ODATA} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/ADDR_COUNT\[11:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BIST_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BIST_PASS} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/CLK} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/CSB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/FAULT_COUNT\[11:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/NEED_REPAIR_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/NEED_REPAIR_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/OEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/RSTN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 29 30 31 32 33 34 35 36 37 38 39 40 41 42 \
           43 44 45 46 47 48 49 )} 
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_ODATA} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/ADDR_COUNT\[11:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BIST_EN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/BIST_PASS} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/CLK} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/CSB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/FAULT_COUNT\[11:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/NEED_REPAIR_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/NEED_REPAIR_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/OEB} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/RSTN} \
{/TB_MEMCTRL/DUT/UFSM/UBISR/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 29 30 31 32 33 34 35 36 37 38 39 40 41 42 \
           43 44 45 46 47 48 49 )} 
wvSetPosition -win $_nWave2 {("G1" 49)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 29 30 31 32 33 34 35 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G1" 45)}
wvSetPosition -win $_nWave2 {("G1" 43)}
wvSetPosition -win $_nWave2 {("G1" 42)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetCursor -win $_nWave2 24064921.891771 -snap {("G1" 35)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 20547311.499238 -snap {("G1" 43)}
wvSetCursor -win $_nWave2 20603146.584834 -snap {("G1" 41)}
wvSetCursor -win $_nWave2 24344097.319750 -snap {("G1" 41)}
wvSetCursor -win $_nWave2 28420058.568240 -snap {("G1" 41)}
wvSetCursor -win $_nWave2 440822075.239659 -snap {("G1" 45)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSetCursor -win $_nWave2 441331209.279809 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 440765504.790753 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 440822075.239659 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 440765504.790753 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 440482652.546225 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 441727202.422148 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 440595793.444036 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 441331209.279809 -snap {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 443763738.582749 -snap {("G1" 20)}
wvSetCursor -win $_nWave2 36544509.993003 -snap {("G1" 13)}
wvZoom -win $_nWave2 29020640.288561 42654118.474806
wvPrevView -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 35299960.117081 42258125.332467
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 444828038.570085 -snap {("G1" 22)}
wvSetCursor -win $_nWave2 440242182.502352 -snap {("G1" 21)}
wvZoom -win $_nWave2 415347535.277516 464481707.431797
wvSetCursor -win $_nWave2 441416842.046093 -snap {("G1" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 12447323.612418 79269797.742239
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 440394510.571680 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 441840340.209485 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 441400305.102327 -snap {("G1" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 442552630.232966 -snap {("G1" 22)}
wvSetCursor -win $_nWave2 440918214.120666 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 441798284.334982 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 441924008.651312 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 442929803.181959 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 441798284.334982 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 441735422.176816 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 442678354.549297 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 442049732.967643 -snap {("G1" 22)}
wvSetCursor -win $_nWave2 442741216.707463 -snap {("G1" 22)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 441425963.986863 -snap {("G1" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 20807374.352748 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 14
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetCursor -win $_nWave2 28728006.281588 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 24390517.368176 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 28916592.756085 -snap {("G1" 10)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
