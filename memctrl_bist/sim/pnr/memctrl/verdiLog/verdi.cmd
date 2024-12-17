verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/pnr/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/pnr/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/pnr/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "829"
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 467079.850993
wvRestoreSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj2/p5/sim/post/memctrl/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoom -win $_nWave2 0.000000 237077.672658
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
wvZoom -win $_nWave2 0.000000 237077.672658
wvSetCursor -win $_nWave2 80969.763320 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 82764.107106 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 104071.939558 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 115062.295245 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 76932.489803 -snap {("G2" 0)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/pnr/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
