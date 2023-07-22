$start
$replace
						set i [get_random_seat]
						lappend rlst "sparetime_take_seat $myref $i 2"
						lock_for_guest $i
						set_guest_state $gid 2
$with
						// 0 means: get first free place - good enough to fix the issue that guests cannot find a free place
						// -1 could work, but get_random_seat is needed as a method (not as proc)
						// place cannot be stolen by another one, because first command of $rlst is called directly instead of added to the task list like the following entries
						lappend rlst "sparetime_take_seat $myref 0 2"
$end

$start
$replace
					if {$current_bowler} {
$with
					if {$current_bowler && $myref != [call_method $current_bowler get_sparetime_place]} {
						log "WARN: current_bowler=$current_bowler is not at bowling station $myref. Resetting current_bowler."
						set current_bowler 0
					}
					if {$current_bowler} {
$end

$start
$replace
							if {[lsearch [tasklist_list $current_bowler] "play_anim bowllose"]/2==0} {
								set ranim boo
								set rmood 0.02
							} elseif {[lsearch [tasklist_list $current_bowler] "play_anim bowlwin"]/2==0} {
$with
							if {[lsearch [tasklist_list $current_bowler] "sparetime_place_relief bowllose *"]/2==0} {
								set ranim boo
								set rmood 0.02
							} elseif {[lsearch [tasklist_list $current_bowler] "sparetime_place_relief bowlwin *"]/2==0} {
$end

