$start
$replace
		if {[get_objtype this]=="production"} {
			set_buildupanim
		}
$with
		if {([get_objtype this]=="production") && (([get_objclass this] != "Krankenhaus") || ([call_method this get_current_todo] == 0))} {
			set_buildupanim
		}
$end
