$start
$replace
proc sparetime_eat_end {} {
	global sparetime_disappointment sparetime_eat_item
	set sparetime_eat_item 0
	sparetime_check_in 0
	set sparetime_disappointment 0.0
$with
proc sparetime_eat_end {} {
	global sparetime_disappointment sparetime_eat_item
	if {[lsearch [inv_list this] $sparetime_eat_item]!=-1} {
		log "mealtime ends, so I will drop my leftovers ([get_objname $sparetime_eat_item])"
		beamto_world $sparetime_eat_item
	}
	set sparetime_eat_item 0
	sparetime_check_in 0
	set sparetime_disappointment 0.0
$end
$start
$replace
	if {$arzt == 0 } {
		set patient 0
	} else {
		set patient [call_method $sparetime_current_place_ref get_patient]
	}
$with
	set patient [call_method $sparetime_current_place_ref get_patient]
$end
$start
$replace
			4 {
				tasklist_add this "walk_dummy $sparetime_current_place_ref 19"
$with
			4 {
				tasklist_add this "walk_dummy $sparetime_current_place_ref 17"
$end
