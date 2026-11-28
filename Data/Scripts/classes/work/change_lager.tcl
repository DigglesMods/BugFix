$start
$replace
			set_physic $item 0
			set_instore $item 1
$with
			set_physic $item 0
			set_instore $item 1
			// BugFix #34: stored boxes must not block building in the floor above
			if {[get_boxed $item]} {
				set_collision $item 0
			}
$end