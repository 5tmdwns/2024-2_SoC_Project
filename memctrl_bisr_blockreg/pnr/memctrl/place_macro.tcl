set cellInst [get_cells USRAM/genblk1[0].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value R180
set_attribute -quiet -objects $cellInst -name origin -value { 195.995 235.768 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 1.0000 1.0000 1.0000 1.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[1].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value MY
set_attribute -quiet -objects $cellInst -name origin -value { 195.995 264.176 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 1.0000 1.0000 1.0000 1.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[2].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value MX
set_attribute -quiet -objects $cellInst -name origin -value { 3.885 235.768 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 1.0000 1.0000 1.0000 1.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[3].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value R0
set_attribute -quiet -objects $cellInst -name origin -value { 3.885 264.16 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 1.0000 1.0000 1.0000 1.0000 } $cellInst

