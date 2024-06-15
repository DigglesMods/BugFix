$start
$replace
		call scripts/misc/genericprod.tcl
		set_anim this krankenhaus.standard 0 $ANIM_LOOP
		set_collision this 1
		set_energyconsumption this 2
		set_prod_switchmode this 1

		set_prod_schedule this 1
$with
		call scripts/misc/genericprod.tcl
		set_anim this krankenhaus.standard 0 $ANIM_LOOP
		set_collision this 1
		set_energyconsumption this 0
		set_prod_switchmode this 1

		set_prod_schedule this 1
$end
