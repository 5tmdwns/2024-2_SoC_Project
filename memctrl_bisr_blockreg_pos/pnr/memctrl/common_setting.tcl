################################################################
# Common Setting
################################################################
set_host_options -max_cores 4
#78 server
set EDKPATH "/home/eda/soc/lib/gpdk/32n"
set TFFILE "${EDKPATH}/tech/milkyway/saed32nm_1p9m_mw.tf"
set PARAMAX "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"
set PARAMIN "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"
set PARATYP "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_norminal.tluplus"
## 159 server
#set EDKPATH "/home/eda/pdk/GPDK/32nm/new/EDK/SAED32_EDK"
#set TFFILE "${EDKPATH}/tech/milkyway/saed32nm_1p9m_mw.tf"
#set PARAMAX "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"
#set PARAMIN "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"
#set PARATYP "${EDKPATH}/tech/star_rcxt/saed32nm_1p9m_norminal.tluplus"

set WORKDIR [file dirname [pwd]]
set PROJNAME memctrl
set TOPDESIGN MEMCTRL
set RTLFILES [glob ${WORKDIR}/../rtl/${PROJNAME}/*.v]
set MIN_ROUTING_LAYER M1
set MAX_ROUTING_LAYER M6
set HOR_ROUTING_LAYER "M1 M3 M5 M7 M9"
set VER_ROUTING_LAYER "M2 M4 M6 M8 MRDL"

set NDMFILE [glob -nocomplain ${WORKDIR}/../ndm/*.ndm ] 
#hold setting
set_app_options -name ccd.hold_control_effort -value high


set ALLMACRO [get_cells -hierarchical -filter "is_hard_macro && !is_physical_only"]
set MACROBBOX [get_attr [get_cells $ALLMACRO] bbox]
