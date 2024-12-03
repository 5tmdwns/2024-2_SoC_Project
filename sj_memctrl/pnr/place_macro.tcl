set cellInst [get_cells USRAM/genblk1[0].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value MYR90
set_attribute -quiet -objects $cellInst -name origin -value { 243.0000 288.4910 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 2.0000 2.0000 2.0000 2.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[1].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value R270
set_attribute -quiet -objects $cellInst -name origin -value { 356.9440 288.4910 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 2.0000 2.0000 2.0000 2.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[2].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value R90
set_attribute -quiet -objects $cellInst -name origin -value { 243.0000 18.3920 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 2.0000 2.0000 2.0000 2.0000 } $cellInst

set cellInst [get_cells USRAM/genblk1[3].UMEM]
set_attribute -quiet -objects $cellInst -name orientation -value MXR90
set_attribute -quiet -objects $cellInst -name origin -value { 356.9440 18.3920 }
set_attribute -quiet -objects $cellInst -name status -value placed
create_keepout_margin -type hard -outer { 2.0000 2.0000 2.0000 2.0000 } $cellInst

