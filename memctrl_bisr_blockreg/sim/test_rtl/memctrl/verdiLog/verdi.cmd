verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/test_rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/test_rtl/memctrl/result.fsdb"
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg/sim/test_rtl/memctrl/result.fsdb.fsdb}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
debExit
