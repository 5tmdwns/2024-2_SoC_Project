verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc32/soc/proj8/p1/sim/pnr_bist/memctrl/TB_MEMCTRL.fsdb.fsdb" \
           "/mnt/home/soc32/soc/proj8/p1/sim/pnr_bist/memctrl/TB_MEMCTRL.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc32/soc/proj8/p1/sim/pnr_bist/memctrl/TB_MEMCTRL.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
wvSelectGroup -win $_nWave2 {G1}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "829"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj2/p5/sim/post/memctrl/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoom -win $_nWave2 5006271.099311 5455252.277187
wvAddSignal -win $_nWave2 "/TB_MEMCTRL/data\[7:0\]"
wvAddSignal -win $_nWave2 "/TB_MEMCTRL/expected_data\[7:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetScope -win $_nWave2 "/AND2X4_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvZoom -win $_nWave2 5006271.099311 5455252.277187
wvUnknownSaveResult -win $_nWave2 -clear
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 13645453.834437 20858050.861211
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 17544154.929991 20858050.861211
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 36452855.243425 37622465.572091
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 11891038.341438 16569479.656102
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 34893374.805203 46199607.982308
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 16959349.765658 38597140.845979
wvZoom -win $_nWave2 21913318.962848 23653349.465995
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj8/p1/sim/pnr_bist/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
