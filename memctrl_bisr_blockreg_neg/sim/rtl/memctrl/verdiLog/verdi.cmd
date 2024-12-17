verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
wvSetCursor -win $_nWave2 139472003.250975
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvRestoreSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoom -win $_nWave2 0.000000 629583500.000000
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM/UBIST/DETECT_REPAIR_ADDR\[15:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/UFSM"
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvZoom -win $_nWave2 0.000000 629583500.000000
wvSetCursor -win $_nWave2 268511108.609272 -snap {("G2" 8)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1536076894.039735 2979758185.430463
wvZoom -win $_nWave2 1755975368.886594 2054272430.418983
wvZoom -win $_nWave2 1795089818.014088 1842106176.056941
wvZoom -win $_nWave2 1809288135.409723 1813024534.724386
wvPrevView -win $_nWave2
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
wvSetCursor -win $_nWave2 1543006119.875838 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 1546182059.293302 -snap {("G3" 2)}
wvZoom -win $_nWave2 1542134293.369083 1546680245.868591
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
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3407087847.682119 4954714192.052980
wvZoom -win $_nWave2 3925696410.762567 4380760051.094131
wvZoom -win $_nWave2 4087228934.747244 4202953728.050106
wvZoom -win $_nWave2 4129073793.782340 4157430200.088339
wvZoom -win $_nWave2 4134932865.813438 4143383450.474166
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2667923026.490066 5890219668.874172
wvZoom -win $_nWave2 4170238812.078351 4985415843.462940
wvZoom -win $_nWave2 4483353168.503869 4625874185.911506
wvZoom -win $_nWave2 4562258844.365771 4577549178.683677
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 4542815579.739299 4610017542.914290
wvZoom -win $_nWave2 4575927010.601380 4591948670.696080
wvSetCursor -win $_nWave2 4580722898.258486 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 4587067900.070825 -snap {("G2" 2)}
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 369582410.596026 1293538437.086093
wvZoom -win $_nWave2 487065560.984141 613115191.088084
wvZoom -win $_nWave2 520289238.322755 536817600.415855
wvSetCursor -win $_nWave2 523988964.407116 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 526112475.828348 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 527666798.621210 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 530053012.486306 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6401022294.439491 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 6401022294.439491 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6403977696.932960 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6401153645.661423 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6403999588.803281 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6401066078.180135 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6404065264.414248 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6400934726.958203 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6404021480.673603 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6401022294.439491 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 6403999588.803281 -snap {("G2" 2)}
wvZoom -win $_nWave2 6403452292.045232 6405969857.132260
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 6399249052.943410 -snap {("G2" 3)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
