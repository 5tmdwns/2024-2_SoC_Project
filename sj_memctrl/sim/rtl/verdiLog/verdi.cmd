verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
wvSetCursor -win $_nWave2 277053.448276
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 2882853.448276
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM1RW32x50"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT/USRAM"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_MEMCTRL/DUT/USRAM/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CE} \
{/TB_MEMCTRL/DUT/USRAM/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_ODATA_SELECT\[5:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/USRAM/MEM_WEB} \
{/TB_MEMCTRL/DUT/USRAM/ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/USRAM/TMP_ODATA\[511:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "837"
wvSetCursor -win $_nWave2 1489726.335520 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 1422566.541706 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 1911001.405811 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 1031818.650422 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 970764.292409 -snap {("G1" 3)}
wvZoom -win $_nWave2 1410355.670103 2020899.250234
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3790337.768322 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3949410.978516 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 4002626.117177 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3902490.103566 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 4002463.750843 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 3984153.165497 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 3732094.318809 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 3585609.636041 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 3823075.039747 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 4297004.997287 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 4921515.699334
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/sj_memctrl/sim/rtl/verdiLog/novas_autosave.ses.wave.0"
debExit
