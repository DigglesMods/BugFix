$start
$replace
exp_Transpor]
$with
exp_Transport]
$end

$start
$replace
			set_posbottom $invitem [vector_fix $npos]
			from_wall $item
$with
			if {[get_objclass $invitem] == "Schatzbuch"} {
				call_method $invitem initiate [vector_fix $npos]
			} else {
				set_posbottom $invitem [vector_fix $npos]
			}
			from_wall $invitem
$end
$start
$replace
	} else {
		// putdown an bestimmter Position

		tasklist_add this "set_objworkicons this arrow_down [get_objclass $item]; walk_near_item \{$pos\} 0.7"
		tasklist_add this "rotate_towards \{$pos\}"
		tasklist_add this "play_anim benda"
		tasklist_add this "beam_from_inv_to_pos \{$item\} \{$pos\}"
$with
	} else {
		// putdown an bestimmter Position

		tasklist_add this "set_objworkicons this arrow_down [get_objclass $item]; walk_near_item \{$pos\} 0.7 0.1 auto 1.25"
		tasklist_add this "rotate_towards \{$pos\}"
		tasklist_add this "play_anim benda"
		tasklist_add this "beam_from_inv_to_pos \{$item\} \{$pos\}"
$end
$start
$replace
		tasklist_addfront this "beam_from_inv_to_pos \{$item\} \{$pos\}"
		tasklist_addfront this "play_anim benda"
		tasklist_addfront this "rotate_towards \{$pos\}"
		tasklist_addfront this "set_objworkicons this arrow_down [get_objclass $item]; walk_near_item \{$pos\} 0.7"
$with
		tasklist_addfront this "beam_from_inv_to_pos \{$item\} \{$pos\}"
		tasklist_addfront this "play_anim benda"
		tasklist_addfront this "rotate_towards \{$pos\}"
		tasklist_addfront this "set_objworkicons this arrow_down [get_objclass $item]; walk_near_item \{$pos\} 0.7 0.1 auto 1.25"
$end
