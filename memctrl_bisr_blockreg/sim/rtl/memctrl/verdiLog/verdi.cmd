verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 271269405.776515
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
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
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 8)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 8)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 8)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G3" 8)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 356525504.734848 -snap {("G3" 3)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1196329491.362764 5304935825.335893
wvSetCursor -win $_nWave2 4685884775.014801 -snap {("G3" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 2860275626.617912 3297948662.194704
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 2887545670.312890 -snap {("G3" 3)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvZoom -win $_nWave2 120841362.763916 332313747.600768
wvZoom -win $_nWave2 214806539.519622 245451769.951834
wvSetCursor -win $_nWave2 220247391.371768 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSetCursor -win $_nWave2 224570662.843491 -snap {("G1" 3)}
wvPrevView -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvSetCursor -win $_nWave2 653578781.215840 -snap {("G1" 4)}
wvZoom -win $_nWave2 646272633.563128 696197975.856665
wvZoom -win $_nWave2 650584803.242964 659065403.613363
wvPrevView -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 247724793.666027 1111740537.428023
wvZoom -win $_nWave2 534624455.222287 712071066.705077
wvZoom -win $_nWave2 619260698.894893 665240147.167785
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1069446060.460653 -snap {("G1" 4)}
wvZoom -win $_nWave2 906310220.729367 1468222557.581574
wvZoom -win $_nWave2 1009309507.042900 1142507536.987714
wvZoom -win $_nWave2 1065426527.335448 1101857850.304999
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1395717739.923224 -snap {("G2" 3)}
wvZoom -win $_nWave2 1250708104.606526 2761225139.155470
wvZoom -win $_nWave2 1342034950.264909 1824762563.033430
wvZoom -win $_nWave2 1422180705.550904 1567647567.747944
wvZoom -win $_nWave2 1449124183.864807 1498683431.542301
wvZoom -win $_nWave2 1457114542.414690 1473808684.386668
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 1455925500.963695 1464771969.359102
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 1459445063.658641 1468767148.634447
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoom -win $_nWave2 30210340.690979 416902701.535509
wvZoom -win $_nWave2 42085729.891570 83649592.093669
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 108757226.487524 580038541.266795
wvZoom -win $_nWave2 208259999.281588 262534238.987454
wvSetCursor -win $_nWave2 220187831.232213 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 224979798.653461 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 228521687.616991 -snap {("G1" 4)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1238623968.330134 1776368032.629559
wvZoom -win $_nWave2 1413055344.273575 1510076346.277694
wvZoom -win $_nWave2 1459051865.376680 1465383370.305932
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1782410100.767754 2356406573.896353
wvZoom -win $_nWave2 1944363040.402133 2009364560.391743
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1788452168.905950 2398701050.863724
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2519542413.627639 3359389884.836852
wvZoom -win $_nWave2 2689607496.568597 2845164657.742664
wvZoom -win $_nWave2 2725734975.458714 2747232318.269718
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3111665091.170825 3522525724.568138
wvZoom -win $_nWave2 3231532300.913554 3295803206.137894
wvSetCursor -win $_nWave2 3248309351.029142 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 3882046492.521968 -snap {("G2" 2)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
