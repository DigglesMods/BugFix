$start
$replace
		if {[get_objtype this]=="production"} {
			set_buildupanim
		}
$with
		if {([get_objtype this]=="production") && (([get_objclass this] != "Krankenhaus") || ([call_method this get_current_todo] == 0))} {
			set_buildupanim
		}
$end
$start
$replace
		for {set index 0} {$index<16} {incr index} { free_particlesource this $index }
		set_boxed this 1
$with
		for {set index 0} {$index<16} {incr index} { free_particlesource this $index }
		set_boxed this 1
		// BugFix #34: init (called when unpacking) turns the collision on, turn it off again like for a new box
		set_collision this 0
$end
