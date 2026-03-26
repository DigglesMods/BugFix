$start
$replace
proc walk_near_item {item radius {tolerance 0.1} {speedtype auto}} {
$with
proc walk_near_item {item radius {tolerance 0.1} {speedtype auto} {maxplus 2}} {
$end
$start
$replace
	set walkpos [vector_fix [get_place -center $itempos -nearpos $thispos -mindist $radius -circle [expr $radius +2] -except this]]
	//log "$walkpos"
	if {[lindex $walkpos 0]<0} {
        // fehlgeschlagen - 2. Versuch ohne Materials
		log "walk_near_item: get_place 1 failed"
   		set walkpos [vector_fix [get_place -center $itempos -nearpos $thispos -mindist $radius -circle [expr $radius +2] -except this -materials false]]
$with
	set walkpos [vector_fix [get_place -center $itempos -nearpos $thispos -mindist $radius -circle [expr $radius+$maxplus] -except this]]
	//log "$walkpos"
	if {[lindex $walkpos 0]<0} {
        // fehlgeschlagen - 2. Versuch ohne Materials
		log "walk_near_item: get_place 1 failed"
   		set walkpos [vector_fix [get_place -center $itempos -nearpos $thispos -mindist $radius -circle [expr $radius+$maxplus] -except this -materials false]]
$end
