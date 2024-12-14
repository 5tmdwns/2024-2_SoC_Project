verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc32/soc/proj3/p1/sim/proj/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc32/soc/proj3/p1/sim/proj/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc32/soc/proj3/p1/sim/proj/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1439" "829"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
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
{/TB_MEMCTRL/address\[15:0\]} \
{/TB_MEMCTRL/command_str\[15:0\]} \
{/TB_MEMCTRL/data\[7:0\]} \
{/TB_MEMCTRL/expected_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
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
{/TB_MEMCTRL/address\[15:0\]} \
{/TB_MEMCTRL/command_str\[15:0\]} \
{/TB_MEMCTRL/data\[7:0\]} \
{/TB_MEMCTRL/expected_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 67980899.712092 76548355.566219
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 139686780.230326 152910462.092131
wvZoomAll -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc32/soc/proj3/p1/sim/proj/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
