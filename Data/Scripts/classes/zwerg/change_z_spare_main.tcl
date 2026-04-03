$start
$replace
						set funposs 1.0
						if {$at_Mo>0.5} {
							if {$funlack+$spt_fun_needs>5} {
								set sparetime_goal "$at_Mo- $at_Mo >(\$funlack-$funlack)"
								set funposs [hmax 1.0 [expr {$funlack-1.0}]]
								set take 0
							} elseif {$at_Mo<0.95} {
								set sparetime_goal "\$at_Mo- $at_Mo >(0.98-$at_Mo)"
								set take 1
							} else {
								set sparetime_goal "$at_Mo- $at_Mo >(-1)"
								set take 2
							}
						} else {
$with
						set funposs 1.0
						if {$at_Mo>0.5} {
							if {$funlack+$spt_fun_needs>5} {
								set sparetime_goal "\$at_Mo- $at_Mo >(\$funlack-$funlack)"
								set funposs [hmax 1.0 [expr {$funlack-1.0}]]
								set take 0
							} elseif {$at_Mo<0.95} {
								set sparetime_goal "\$at_Mo- $at_Mo >(0.98-$at_Mo)"
								set take 1
							} else {
								set sparetime_goal "\$at_Mo- $at_Mo >(-1)"
								set take 2
							}
						} else {
$end
$start
$replace
					"fun" {
						set funposs 1.0
						if {$funlack+$spt_fun_needs>5} {
							set sparetime_goal "$at_Mo- $at_Mo >(\$funlack-$funlack)"
							set funposs [hmax 1.0 [expr {$funlack-1.0}]]
							set take 4
						} elseif {$at_Mo<0.95} {
							set sparetime_goal "\$at_Mo- $at_Mo >(0.98-$at_Mo)"
							set take 5
						} else {
							set sparetime_goal "$at_Mo- $at_Mo >(-1)"
							set take 6
						}
						if {[lindex $sparetime_goal 1]>[get_attrib this atr_Mood]+0.01} {
$with
					"fun" {
						set funposs 1.0
						if {$funlack+$spt_fun_needs>5} {
							set sparetime_goal "\$at_Mo- $at_Mo >(\$funlack-$funlack)"
							set funposs [hmax 1.0 [expr {$funlack-1.0}]]
							set take 4
						} elseif {$at_Mo<0.95} {
							set sparetime_goal "\$at_Mo- $at_Mo >(0.98-$at_Mo)"
							set take 5
						} else {
							set sparetime_goal "\$at_Mo- $at_Mo >(-1)"
							set take 6
						}
						if {[lindex $sparetime_goal 1]>[get_attrib this atr_Mood]+0.01} {
$end
