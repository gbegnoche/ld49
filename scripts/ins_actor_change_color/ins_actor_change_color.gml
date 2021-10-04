//function ins_actor_change_color(_actor, _color) {
//	var ins = create_instability();
//	ins.actor = _actor;
//	ins.col = _color;
//	ins.fn = function(ins) {
//		ins.actor.col = ins.col;
//		ins.complete = true;
//	}
//	push_ins(ins);
//}

function ins_actor_change_color(_actor, _color) {
	_actor.col = _color;
}