$start
$replace
	obj_init {
		set_anim this fitnessstudio.standard 0 $ANIM_LOOP
		call scripts/misc/genericprod.tcl
		set_energyconsumption this 2
		set_collision this 1

		prod_guest addlink this 8
$with
	obj_init {
		set_anim this fitnessstudio.standard 0 $ANIM_LOOP
		call scripts/misc/genericprod.tcl
		set_energyconsumption this 0
		set_collision this 1

		prod_guest addlink this 8
$end
