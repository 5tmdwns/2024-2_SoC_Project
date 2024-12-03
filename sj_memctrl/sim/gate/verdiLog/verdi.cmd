verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-f" "list.f"
wvCreateWindow
wvOpenFile -win $_nWave2 {/home/jhpark/soc/proj/sim/gate/memctrl/result.fsdb}
verdiWindowResize -win $_Verdi_1 "819" "322" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
