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
