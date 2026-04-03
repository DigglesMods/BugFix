$start
$replace
// item passt nicht in die Tasche --> fertig"
$with
// item passt nicht in die Tasche --> fertig
$end

$start
$replace
proc prod_heilen {artzt khaus_ref} {
	set patient [call_method $khaus_ref get_patient]
	if {$patient == 0} {
$with
proc prod_heilen {artzt khaus_ref} {
	set patient [call_method $khaus_ref get_patient]
	if {($patient == 0) || ![obj_valid $patient]} {
$end

$start
$replace
if {$richtung == "right"} {set negx 0; set posx 10} else {set negx -10; set posx 0"}
$with
if {$richtung == "right"} {set negx 0; set posx 10} else {set negx -10; set posx 0}
$end