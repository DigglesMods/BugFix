$start
$replace
	proc bedjump {} {
$with
	proc prodfill_bedjump {} {
$end

$start
$replace
		tasklist_add this "walk_dummy $prod_place 1"
$with
		tasklist_add this "walk_dummy $prodplace 1"
$end

$start
$replace
		set prodplace [obj_query this -boundingbox {-4 -7 -1 4 5 1} -type production -limit 1 -owner own]
$with
		set prodplace [obj_query this -boundingbox {-4 -1 -15 4 1 5} -type production -limit 1 -owner own -flagneg boxed]
$end
