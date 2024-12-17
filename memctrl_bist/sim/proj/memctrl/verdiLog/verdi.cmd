verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/proj/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/proj/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/proj/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 509259.105614
wvZoomAll -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj3/p1/sim/proj/memctrl/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoom -win $_nWave2 0.000000 311726.841093
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvZoom -win $_nWave2 0.000000 311726.841093
wvSetCursor -win $_nWave2 129910.900475 -snap {("G2" 5)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4515233.349191 10925384.300666
wvZoom -win $_nWave2 8766303.961159 9364015.467576
wvZoom -win $_nWave2 8926110.748316 9215014.121542
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetCursor -win $_nWave2 8796060.129660 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 8799358.740962 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 8760600.058160 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 5199692.555714 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 5190621.374632 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 5195860.295366 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 5188988.188486 -snap {("G1" 4)}
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 8905068.573495 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 5169445.548086 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5189350.308052 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5209255.068018 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5188781.600625 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5196743.504611 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 5200155.749177 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5230297.242840 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5250202.002806 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5238259.146827 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5290011.522739 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5271244.177628 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5279774.789042 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5299110.841581 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5319584.308975 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5209823.775446 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5199587.041749 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 5241102.683965 -snap {("G2" 6)}
wvZoom -win $_nWave2 5187075.478342 5259870.029076
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 5154659.154968 5275793.837049
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 5176270.037217 5224041.461136
wvSetCursor -win $_nWave2 5199723.942776 -snap {("G2" 5)}
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 5177407.452072 5258163.906793
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 5199018.334321 -snap {("G2" 6)}
wvZoom -win $_nWave2 5162052.351527 5251339.417662
wvPrevView -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bist/sim/proj/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
