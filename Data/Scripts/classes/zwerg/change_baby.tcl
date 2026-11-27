$start
$before

	method init {} {
$put
method getbirthtime {} {
	global birthtime
	if {![info exists birthtime]} {set birthtime [get_attrib this GnomeAge]}
	return $birthtime
}


$end

$start
$replace
		set_attrib this GnomeAge [gettime]
$with
		set birthtime [gettime]
		set_attrib this GnomeAge $birthtime
$end


$start
$after
proc grow_up {} {
			global 
$put
birthtime 
$end

$start
$replace
[gettime]-[get_attrib this GnomeAge]
$with
[gettime]-$birthtime
$end

$start
$replace
if {$im_grownup} {return}
$with
if {$im_grownup} {return}
			if {![info exists birthtime]} {set birthtime [get_attrib this GnomeAge]}
$end