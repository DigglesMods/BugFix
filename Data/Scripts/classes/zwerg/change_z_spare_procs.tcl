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
