$start
$replace
			return [lindex {eins eins zwei drei} $beercnt]
$with
			if {$beercnt < 2} {
				return eins
			} 
			if {$beercnt == 2} {
				return zwei
			}
			return drei
$end

$start
$replace
			if {[dist_between this $current_worker]>10} {return {"prod_goworkdummy 0"}}
			global freeseats looktochief prod_guest_seats prod_guest_waits gueststates
			global guesttimer
			set rlst [list]
$with
			global freeseats looktochief prod_guest_seats prod_guest_waits gueststates
			global guesttimer
			set rlst [list]
			if {[dist_between this $current_worker]>10} {
                lappend rlst "prod_goworkdummy 0"
            }
$end

$start
$replace
lappend orderlist $order
$with
lappend orderlist [list $order $i]
$end

$start
$replace
					if {$mostbeercnt>$beercnt} {
						set othertable [expr [lindex $mostorder 0]^2]
						lappend othertable [expr $othertable^1]
						set mostothertablesorder 0
						foreach seat $othertable {
							set seatorder [prod_guest getorder this $seat]
							if {$seatorder} {
								if {$mostothertablesorder&&$mostbeercnt>$beercnt} {
									if {$mostothertablesorder<$seatorder} {
										set mostorder [lreplace $mostorder 2 2 $seat]
										set maxorder [lreplace $maxorder 2 2 $seatorder]
									}
								} else {
									incr beercnt
									lappend mostorder $seat
									lappend maxorder $seatorder
								}
							}
						}
					}
$with
					if {$mostbeercnt>$beercnt} {
						set othertable [expr [lindex $mostorder 0]^2]
                        set otherseat [expr $othertable^1]
                        set othertableorder [prod_guest getorder this $othertable]
                        set othertableotherseatorder [prod_guest getorder this $otherseat]
                        if {$othertableorder+$othertableotherseatorder > 0} {
                            if {$othertableorder >= $othertableotherseatorder} {
                                lappend maxorder $othertableorder
                                lappend mostorder $othertable
                                incr beercnt
                            }
                            if {($mostbeercnt>$beercnt) && ($othertableotherseatorder>0)} {
                                lappend maxorder $othertableotherseatorder
                                lappend mostorder $otherseat
                                incr beercnt
                            }
                        }
                    }
$end