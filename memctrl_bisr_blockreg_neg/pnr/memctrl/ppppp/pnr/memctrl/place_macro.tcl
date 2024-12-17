
# SRAM func
proc place_sram {sram_name x y orientation} {
    set cellInst [get_cells $sram_name]
    set_attribute -quiet -objects $cellInst -name orientation -value $orientation
    set_attribute -quiet -objects $cellInst -name origin -value "$x $y"
    set_attribute -quiet -objects $cellInst -name status -value placed
    create_keepout_margin -type hard -outer {1.0 1.0 1.0 1.0} $cellInst
}


set sram_index 0



# down
for {set row 0} {$row < 1} {incr row} {
    for {set col 1} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_down_min - $sram_height + $row * $y_spacing]
            set x [expr $x_min + $sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R90"
            incr sram_index
        }
    }
}

for {set row 0} {$row < 1} {incr row} {
    for {set col 3} {$col < 6} {incr col} {
		  if {$sram_index < $num_sram} {
				set y [expr $y_down_min - $sram_height + $row * $y_spacing]
            set x [expr $x_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MXR90"
            incr sram_index

		  }
    }
}



for {set row 1} {$row < 4} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_down_min - $sram_height + $row * $y_spacing]
            set x [expr $x_min + $sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R90"
            incr sram_index
        }
    }
}

for {set row 1} {$row < 4} {incr row} {
    for {set col 3} {$col < 7} {incr col} {
		  if {$sram_index < $num_sram} {
				set y [expr $y_down_min - $sram_height + $row * $y_spacing]
            set x [expr $x_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MXR90"
            incr sram_index

		  }
    }
}


# left
for {set row 0} {$row < 1} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_side_min - $sram_height + $row * $y_spacing]
            set x [expr $x_min + $sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R90"
            incr sram_index
        }
    }
}

for {set row 1} {$row < 2} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_side_min + $row * $y_spacing]
            set x [expr $x_min +$sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MYR90"
            incr sram_index
		  }
    }
}



# right
for {set row 0} {$row < 1} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_side_min - $sram_height + $row * $y_spacing]
            set x [expr $x_right_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MXR90"
            incr sram_index
        }
	 }
}

for {set row 1} {$row < 2} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_side_min + $row * $y_spacing]
            set x [expr $x_right_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R270"
            incr sram_index
		  }
    }
}



# up
for {set row 0} {$row < 3} {incr row} {
    for {set col 0} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_up_min + $row * $y_spacing]
            set x [expr $x_min + $sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MYR90"
            incr sram_index
        }
    }
}


for {set row 0} {$row < 3} {incr row} {
    for {set col 3} {$col < 7} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_up_min + + $row * $y_spacing]
            set x [expr $x_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R270"
            incr sram_index
		  }

    }
}

for {set row 3} {$row < 4} {incr row} {
    for {set col 1} {$col < 3} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_up_min + $row * $y_spacing]
            set x [expr $x_min + $sram_width + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "MYR90"
            incr sram_index
        }
    }
}


for {set row 3} {$row < 4} {incr row} {
    for {set col 3} {$col < 6} {incr col} {
        if {$sram_index < $num_sram} {
            set y [expr $y_up_min + + $row * $y_spacing]
            set x [expr $x_min + $col * $x_spacing]
            place_sram "USRAM/genblk1[$sram_index].UMEM" $x $y "R270"
            incr sram_index
		  }

    }
}


