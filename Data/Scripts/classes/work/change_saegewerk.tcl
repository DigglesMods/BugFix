$start
$replace
schmiede.tcl
$with
saegewerk.tcl
$end


$start
$before

// Eisenerz

    method prod_actions_Eisenerz {itemtype exp_infl} {
$put

// Hamster

	method prod_actions_Hamster {itemtype exp_infl} {
        return [call_method this prod_actions_default $itemtype $exp_infl]
	}


$end

$start
$replace
lappend rlst "prod_goworkdummy 6"
$with
lappend rlst "prod_goworkdummy 0"
$end