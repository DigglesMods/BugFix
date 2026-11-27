$start
$replace
		set_energyconsumption this 2
$with
		set_energyconsumption this 0
$end

$start
$replace
		set stidx [lsearch userstates $gnome]
		if {$stidx<1} {
$with
		set stidx [lsearch $userstates $gnome]
		if {$stidx>0} {
$end