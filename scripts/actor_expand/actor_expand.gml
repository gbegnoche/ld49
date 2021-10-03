function ins_expand_actor(_actor, _factor, _speed) {
	var ins = create_instability();
	//ins.factor = _factor;
	ins.actor = _actor;
	ins.spd = _speed;
	ins.target = _actor.point_index;
	for (var i = 0; i < len(ins.target); i++) {
		ins.target[i].xx *= _factor;
		ins.target[i].yy *= _factor;
	}
	ins.fn = function(ins) {
		for (var i = 0; i < len(ins.actor.point_index); i++) {
			ins.actor.point_index[i].xx *= ins.spd;
			ins.actor.point_index[i].yy *= ins.spd;
		}
		if (ins.actor.point_index[0].xx >= ins.target[0].xx
		&& ins.actor.point_index[0].y >= ins.target[0].yy) {
			ins.complete = true;
		}
	}
	push_ins(ins);
}
