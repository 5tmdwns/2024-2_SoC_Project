verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/dice13/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/dice13/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/dice13/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "271" "83" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
wvSetCursor -win $_nWave2 229872627.416520
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
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
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
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
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
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
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 484265001.757469 -snap {("G1" 11)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetCursor -win $_nWave2 635980935.852373 -snap {("G1" 10)}
wvZoomAll -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/mnt/home/dice13/soc_proj/memctrl_bisr_blockreg_neg/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
