$start
$replace
	method set_type {typ} {
		set rtyp $typ
	}
$with
	method set_type {typ} {
		global rtyp attacktyp
		set rtyp $typ
		if {[land $rtyp {02 06 07 08}]==""} {
			set attacktyp 0
		} else {
			set attacktyp 1
		}
	}
$end

$start
$replace
			set gnome [obj_query $farmed -class Zwerg -boundingbox {-3 -0.5 -5 3 0.5 5} -limit 1]
			if {$gnome} {
				set near $rpos
				set center [get_pos $gnome]
			} else {
				set center $rpos
			}
			set diffvec [vector_sub $farmpos $center]
			set xn [expr {[lindex $diffvec 0]-2}]
			set zn [expr {[lindex $diffvec 2]-3}]
			set xp [expr {$xn+3.5}]
			set zp [expr {$zn+6}]
			//log "$xn $xp $zn $zp ($center) ($farmpos)"
			if {$gnome} {
				set place [get_place -center $center -rect $xn $zn $xp $zp -mindist 0.6 -nearpos $near -random 2]
			} else {
				set place [get_place -center $center -rect $xn $zn $xp $zp -mindist 0.6 -random 2]
			}
$with
			set center $rpos
			set diffvec [vector_sub $farmpos $center]
			set xn [expr {[lindex $diffvec 0]-2}]
			set zn [expr {[lindex $diffvec 2]-3}]
			set xp [expr {$xn+3.5}]
			set zp [expr {$zn+6}]
			//log "$xn $xp $zn $zp ($center) ($farmpos)"
			set place [get_place -center $center -rect $xn $zn $xp $zp -mindist 0.6 -random 2]
$end
