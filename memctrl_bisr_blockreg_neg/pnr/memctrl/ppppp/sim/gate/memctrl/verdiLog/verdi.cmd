verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc22/project/sim/gate/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc22/project/sim/gate/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc22/project/sim/gate/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "1536" "794"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USPARE"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USPARE/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_CE} \
{/TB_MEMCTRL/DUT/USPARE/MEM_CSB\[2:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_OEB\[2:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_WEB} \
{/TB_MEMCTRL/DUT/USPARE/ODATA\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 1107313.196567 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 1795643.021459 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 81439892.869099 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USPARE"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USPARE/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_CE} \
{/TB_MEMCTRL/DUT/USPARE/MEM_CSB\[2:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_OEB\[2:0\]} \
{/TB_MEMCTRL/DUT/USPARE/MEM_WEB} \
{/TB_MEMCTRL/DUT/USPARE/ODATA\[7:0\]} \
{/TB_MEMCTRL/ODATA\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 84440113.084120 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 83213090.352790 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 83422582.038627 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 83265463.274249 -snap {("G1" 8)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc22/project/sim/gate/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
