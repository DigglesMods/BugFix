$start
$replace
		proc guest_break {who} {
			global guest progress breaked current_worker
			set rlst [list]
			if {$progress} {
				set breaked $progress
				if {$progress==4} {
					open_bed
					switch_visibility $who 1
					lappend rlst "play_anim brothelcstop"
$with
		proc guest_break {who} {
			global guest progress breaked current_worker finished
			set rlst [list]
			if {$progress} {
				set breaked $progress
				if {($progress>=4) && !$finished} {
					open_bed
					switch_visibility $who 1
					lappend rlst "play_anim brothelcstop"
$end
