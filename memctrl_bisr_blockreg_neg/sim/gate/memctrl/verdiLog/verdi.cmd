verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "list.f"
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/gate/memctrl/result.fsdb.fsdb" \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/gate/memctrl/result.fsdb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/gate/memctrl/result.fsdb.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
wvSetCursor -win $_nWave2 201290423.087720
verdiWindowResize -win $_Verdi_1 "8" "31" "1440" "829"
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiDockWidgetRestore -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 2605061215.979155
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 480952117.459593
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
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
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 345658554.400634 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 207890109.090596 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 226039245.598505 -snap {("G1" 9)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1460180528.136329 6228453665.214285
wvZoom -win $_nWave2 2637587613.071995 4852556496.993732
wvZoom -win $_nWave2 3825749729.611800 4175702240.127344
wvZoom -win $_nWave2 3980364509.564415 4064459057.975908
wvZoom -win $_nWave2 4016086791.717984 4037090538.908744
wvZoom -win $_nWave2 4023518581.167657 4032679155.864857
wvZoom -win $_nWave2 4029697852.462273 4029957849.851976
wvPrevView -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 7)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/BISR_MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_CE} \
{/TB_MEMCTRL/DUT/BISR_MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/BISR_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 2136648343.431126 -snap {("G3" 1)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 404230767.676159 1006452115.438600
wvZoom -win $_nWave2 436706280.280129 562620109.850138
wvZoom -win $_nWave2 468274080.503423 501866984.892016
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 466010728.789298 479948210.397331
wvSetCursor -win $_nWave2 471997121.078743 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 474133234.626994 -snap {("G2" 2)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2474882251.078524 4108304536.790349
wvZoom -win $_nWave2 2841127361.497776 3317091471.241619
wvZoom -win $_nWave2 3015842663.843842 3097796748.965298
wvZoom -win $_nWave2 3055928058.363145 3070737169.298053
wvSetCursor -win $_nWave2 3060915800.551105 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 3064012123.651025 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 3060971842.598163 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 3057959582.568830 -snap {("G3" 2)}
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 3031039447.839032 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AND3X2_HVT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvGetSignalSetScope -win $_nWave2 "/TB_MEMCTRL/DUT"
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
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
{/TB_MEMCTRL/DUT/MEM_ADDR\[9:0\]} \
{/TB_MEMCTRL/DUT/MEM_CE} \
{/TB_MEMCTRL/DUT/MEM_CSB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/MEM_OEB\[63:0\]} \
{/TB_MEMCTRL/DUT/MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/TB_MEMCTRL/DUT/SPARE_MEM_ADDR\[6:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CE} \
{/TB_MEMCTRL/DUT/SPARE_MEM_CSB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_IDATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_ODATA\[7:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_OEB\[24:0\]} \
{/TB_MEMCTRL/DUT/SPARE_MEM_WEB} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvGetSignalClose -win $_nWave2
wvZoom -win $_nWave2 3207057866.310954 3218765592.756876
wvSetCursor -win $_nWave2 3213005878.704948 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 3209982028.828187 -snap {("G2" 2)}
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 2311023609.343536 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 2313892389.995849 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 2316761170.648161 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 2320017624.361596 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 2323041474.238358 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 2325134908.768423 -snap {("G2" 2)}
wvZoom -win $_nWave2 2323739285.748379 2326840670.237365
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 2320870505.096067 2327848620.196286
wvSetCursor -win $_nWave2 2325353135.325942 -snap {("G2" 4)}
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 2310791005.506863 -snap {("G2" 2)}
wvZoom -win $_nWave2 2308775105.589022 2313349647.710276
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 2295904359.959730 2322808870.401684
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 2310480867.057964 2327538481.747387
wvZoom -win $_nWave2 2318001064.261609 2319905320.206123
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 2318501334.891100 -snap {("G1" 0)}
wvSaveSignal -win $_nWave2 \
           "/mnt/home/soc17/soc/soc_proj/memctrl_bisr_blockreg_neg/sim/gate/memctrl/verdiLog/novas_autosave.ses.wave.0"
debExit
