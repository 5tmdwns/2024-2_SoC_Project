verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc04/project_nobisr/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc04/project_nobisr/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc04/project_nobisr/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "9" "35" "1500" "782"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc04/project_nobisr/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
