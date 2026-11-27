$start
$replace
if {[get_boxed $item] == 1} {
					lappend itemtypelist "Box"
$with
if {[get_boxed $item] == 1} {
					if {[get_objclass $item] == "Lager"} {return 0}
					lappend itemtypelist "Box"
$end