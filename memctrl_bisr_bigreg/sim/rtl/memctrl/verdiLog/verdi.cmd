verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list3.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_bigreg/sim/rtl/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_bigreg/sim/rtl/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr_bigreg/sim/rtl/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "8" "31" "892" "566"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDrag -win $_nTrace1
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 43374875.687854
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G1" 44)}
wvSetPosition -win $_nWave2 {("G1" 44)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/NEED_REPAIR_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/NEED_REPAIR_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/UBISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_CE} \
{/TB_MEMCTRL/DUT/UBISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/UBIST_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_CE} \
{/TB_MEMCTRL/DUT/UBIST_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_WEB} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 )} 
wvSetPosition -win $_nWave2 {("G1" 44)}
wvSetPosition -win $_nWave2 {("G1" 44)}
wvSetPosition -win $_nWave2 {("G1" 44)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/ADDR\[15:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_ODATA_SELECT\[4:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/BIST_EN} \
{/TB_MEMCTRL/DUT/BIST_MODE\[2:0\]} \
{/TB_MEMCTRL/DUT/BIST_PASS} \
{/TB_MEMCTRL/DUT/CE} \
{/TB_MEMCTRL/DUT/CLK} \
{/TB_MEMCTRL/DUT/CSB} \
{/TB_MEMCTRL/DUT/IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
{/TB_MEMCTRL/DUT/NEED_REPAIR_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/NEED_REPAIR_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/OEB} \
{/TB_MEMCTRL/DUT/RSTN} \
{/TB_MEMCTRL/DUT/UBISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_CE} \
{/TB_MEMCTRL/DUT/UBISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBISR_MEM_WEB} \
{/TB_MEMCTRL/DUT/UBIST_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_CE} \
{/TB_MEMCTRL/DUT/UBIST_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/UBIST_MEM_WEB} \
{/TB_MEMCTRL/DUT/WEB} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 )} 
wvSetPosition -win $_nWave2 {("G1" 44)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 34140224.734956 -snap {("G1" 31)}
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 33951867.356538 199525357.478833
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 59532041.392286 241383824.082785
wvZoom -win $_nWave2 78863416.222032 127619538.580256
wvZoom -win $_nWave2 87990855.873287 92577508.964371
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 14
wvPrevView -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetCursor -win $_nWave2 20592830.382391 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 24399752.447990 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 28619473.291788 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 443725059.711690 -snap {("G1" 26)}
wvSetCursor -win $_nWave2 440433354.842393 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 439516024.224176 -snap {("G1" 3)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_bigreg/sim/rtl/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
