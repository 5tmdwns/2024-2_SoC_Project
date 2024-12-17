set sram_x_size 234.268
set sram_y_size 110.0614
set gap_x 50
set gap_y 50

set num_per_row 3    ; # 한 줄에 배치할 셀의 개수 (가로 3개)
set num_per_col 6    ; # 세로로 배치할 셀의 개수 (세로 6개)
set total_cells 16   ; # 배치할 셀 개수 (우상단 2개 제외)

# 좌측하단
set cell_count 0  ; # 배치한 셀의 개수 추적
for {set row 0} {$row < $num_per_col} {incr row} {
    for {set col 0} {$col < $num_per_row} {incr col} {

        set cell_x [expr 243.0000 + $col * ($sram_x_size + $gap_x)]
        set cell_y [expr 18.3920 + $row * ($sram_y_size + $gap_y)]

        if {$row <=5 && $row >=4 && $col == 2} {
            continue
        }

        # cellInst 지정
        set cellInst [get_cells "USRAM/genblk1[$cell_count].UMEM"]

        # 셀 속성 설정
        set_attribute -quiet -objects $cellInst -name orientation -value R90
        set_attribute -quiet -objects $cellInst -name origin -value [list $cell_x $cell_y]
        set_attribute -quiet -objects $cellInst -name status -value placed
        create_keepout_margin -type hard -outer {2.0000 2.0000 2.0000 2.0000} $cellInst

        # 배치한 셀 카운트 증가
        incr cell_count
        if {$cell_count >= $total_cells} {
            break
        }
    }
}
echo $cell_x
echo $cell_y
set group_gap_x 250
set group_gap_y 50
set cell_0_x [expr $cell_x + $group_gap_x + ($sram_x_size + $gap_x)] ; #continue하면서 사라지나 보다 col 2 값이 사라지는듯 따라서 보상
set cell_0_y [expr $cell_y + $group_gap_y + ($sram_y_size + 2 * $gap_y)]
## 우측하단
set total_cells 32
for {set row 0} {$row < $num_per_col} {incr row} {
    for {set col 0} {$col < $num_per_row} {incr col} {

        set cell_x [expr $cell_0_x + $col * ($sram_x_size + $gap_x)]
        set cell_y [expr 18.3920 + $row * ($sram_y_size + $gap_y)]

        if {$row <=5 && $row >=4 && $col == 0} {
            continue
        }

        set cellInst [get_cells "USRAM/genblk1[$cell_count].UMEM"]

        set_attribute -quiet -objects $cellInst -name orientation -value MXR90
        set_attribute -quiet -objects $cellInst -name origin -value [list $cell_x $cell_y]
        set_attribute -quiet -objects $cellInst -name status -value placed
        create_keepout_margin -type hard -outer {2.0000 2.0000 2.0000 2.0000} $cellInst

        incr cell_count
        if {$cell_count >= $total_cells} {
            break
        }
    }
}
## 좌측상단
set total_cells 48
for {set row 0} {$row < $num_per_col} {incr row} {
    for {set col 0} {$col < $num_per_row} {incr col} {

        set cell_x [expr 243.0000 + $col * ($sram_x_size + $gap_x)]
        set cell_y [expr $cell_0_y + $row * ($sram_y_size + $gap_y)]

        if {$row <=1 && $row >=0 && $col == 2} {
            continue
        }

        set cellInst [get_cells "USRAM/genblk1[$cell_count].UMEM"]

        set_attribute -quiet -objects $cellInst -name orientation -value MYR90
        set_attribute -quiet -objects $cellInst -name origin -value [list $cell_x $cell_y]
        set_attribute -quiet -objects $cellInst -name status -value placed
        create_keepout_margin -type hard -outer {2.0000 2.0000 2.0000 2.0000} $cellInst

        incr cell_count
        if {$cell_count >= $total_cells} {
            break
        }
    }
}
## 우측상단
set total_cells 64
for {set row 0} {$row < $num_per_col} {incr row} {
    for {set col 0} {$col < $num_per_row} {incr col} {

        set cell_x [expr $cell_0_x + $col * ($sram_x_size + $gap_x)]
        set cell_y [expr $cell_0_y + $row * ($sram_y_size + $gap_y)]

        if {$row <=1 && $row >=0 && $col == 0} {
            continue
        }

        set cellInst [get_cells "USRAM/genblk1[$cell_count].UMEM"]

        set_attribute -quiet -objects $cellInst -name orientation -value R270
        set_attribute -quiet -objects $cellInst -name origin -value [list $cell_x $cell_y]
        set_attribute -quiet -objects $cellInst -name status -value placed
        create_keepout_margin -type hard -outer {2.0000 2.0000 2.0000 2.0000} $cellInst

        incr cell_count
        if {$cell_count >= $total_cells} {
            break
        }
    }
}
#origin고정 반시계 회전
#MYR90: y축반전 후 90도 회전 
#R270: 270도 회전 
#R90: 90도 회전 
#MXR90: x축 반전 후 90도 회전