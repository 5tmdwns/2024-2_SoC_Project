verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc32/soc/p9/sim/gate/memctrl/TB_MEMCTRL.fsdb.fsdb" \
           "/mnt/home/soc32/soc/p9/sim/gate/memctrl/TB_MEMCTRL.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc32/soc/p9/sim/gate/memctrl/TB_MEMCTRL.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "829"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
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
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomAll -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvRestoreSignal -win $_nWave2 "/mnt/home/soc32/soc/p9/sim/rtl/memctrl/rc/bist.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoom -win $_nWave2 0.000000 34225227.272727
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/AND2X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM/UBIST/BIN_ADDR_GEN"
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvZoom -win $_nWave2 0.000000 34225227.272727
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 11
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
wvSetCursor -win $_nWave2 8498881.940207 -snap {("G4" 2)}
wvZoom -win $_nWave2 7547269.676632 9614565.283710
wvZoom -win $_nWave2 8449110.042136 8601729.180913
wvZoom -win $_nWave2 8500617.172384 8509689.451007
wvZoom -win $_nWave2 8504200.852913 8504740.144643
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 6716548.418025 26866193.672100
wvSetCursor -win $_nWave2 12570184.575248 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 10483740.004356 -snap {("G4" 2)}
wvZoom -win $_nWave2 10155318.173753 11488324.427378
wvZoom -win $_nWave2 10454381.896999 10554069.804748
wvZoom -win $_nWave2 10499208.003159 10507618.871694
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvZoom -win $_nWave2 91661131.351870 119317507.190796
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 126429146.692234 167321073.825503
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 11 )} 
wvZoom -win $_nWave2 6914093.959732 19359463.087248
wvSetCursor -win $_nWave2 11496089.880121 -snap {("G2" 8)}
wvSetCursor -win $_nWave2 11281308.821352 -snap {("G2" 6)}
wvSetCursor -win $_nWave2 11281308.821352 -snap {("G2" 6)}
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetCursor -win $_nWave2 11269376.540310 -snap {("G2" 6)}
wvSetCursor -win $_nWave2 10517642.834621 -snap {("G2" 6)}
wvSetCursor -win $_nWave2 10517642.834621 -snap {("G2" 6)}
wvSetCursor -win $_nWave2 10529575.115663 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 11484157.599078 -snap {("G2" 6)}
wvZoom -win $_nWave2 11293241.102395 11973381.121828
wvZoom -win $_nWave2 11485610.523035 11532561.703667
wvZoom -win $_nWave2 11502536.356125 11504832.147316
wvZoom -win $_nWave2 11503636.927161 11503958.293905
wvZoom -win $_nWave2 11503811.013651 11503847.987773
wvZoom -win $_nWave2 11503826.576104 11503832.957065
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 8099367.209971 18174189.837009
wvZoom -win $_nWave2 11074482.616613 11895537.193121
wvZoom -win $_nWave2 11468085.002280 11547592.684186
wvZoomAll -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/p9/sim/gate/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
