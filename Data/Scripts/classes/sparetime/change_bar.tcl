$start
$replace
			return [lindex {eins eins zwei drei} $beercnt]
$with
			if {$beercnt < 2} {
				return eins
			} 
			if {$beercnt == 2} {
				return zwei
			}
			return drei
$end