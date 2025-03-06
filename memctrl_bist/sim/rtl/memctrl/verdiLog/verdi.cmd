verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-f" "list.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/mnt/home/dice13/soc_proj/memctrl_bist/sim/rtl/memctrl/result.fsdb}
verdiWindowResize -win $_Verdi_1 "270" "100" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debExit
