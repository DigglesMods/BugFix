$start
$replace
			} else {
				set place [lindex $qplace 0]
				set spt_fun_ignore 0
				if {[lindex $qplace 3]} {
					global sparetime_current_place_ref sparetime_reservation sparetime_disappointment
					global sparetime_current_place
					set link [call_method $place reserve_seat $myref]
					set sparetime_current_place_ref $place
					set sparetime_current_place [get_objclass $place]
$with
			} else {
				set place [lindex $qplace 0]
				set spt_fun_ignore 0
				global sparetime_reservation sparetime_disappointment
				if {[lindex $qplace 3]} {
					global sparetime_current_place_ref sparetime_current_place
					set link [call_method $place reserve_seat $myref]
					set sparetime_current_place_ref $place
					set sparetime_current_place [get_objclass $place]
$end
