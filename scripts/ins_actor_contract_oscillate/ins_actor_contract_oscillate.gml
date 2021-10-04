//function ins_actor_contract_oscillate(_actor, _factor, _speed) {
//	var ins = create_instability();
//	ins.actor = _actor;
//	ins.factor = _factor;
//	ins.spd = _speed;
//	ins.target = [];
//	for (var i = 0; i < len(_actor.point_index); i++) {
//		array_push(ins.target, {
//			xx: ins.actor.point_index[i].xx / _factor,
//			yy: ins.actor.point_index[i].yy / _factor,
//		});
//	}
//	ins.fn = function(ins) {
//		for (var i = 0; i < len(ins.actor.point_index); i++) {
//			ins.actor.point_index[i].xx /= ins.spd;
//			ins.actor.point_index[i].yy /= ins.spd;
//		}
		
//		if ((ins.target[0].xx >= 0 && ins.actor.point_index[0].xx <= ins.target[0].xx)
//		&& (ins.target[0].yy >= 0 && ins.actor.point_index[0].yy <= ins.target[0].yy)) {
//			ins.complete = true;
//		} else if (ins.actor.point_index[0].yy >= ins.target[0].yy
//		&& ins.actor.point_index[0].yy >= ins.target[0].yy) {
//			ins.complete = true;
//			ins_actor_expand_oscillate(ins.actor, ins.factor, ins.spd);
//		}
//	}
//	push_ins(ins);
//}

function ins_actor_contract_oscillate(_actor, _factor, _speed) {
	var _target = [];
	for (var i = 0; i < len(_actor.point_index); i++) {
		array_push(_target, {
			xx: _actor.point_index[i].xx / _factor,
			yy: _actor.point_index[i].yy / _factor,
		});
	}
	_actor.args = {
		factor: _factor,
		spd: _speed,
		target: _target,
	};
	_actor.fn = function(args) {
		for (var i = 0; i < len(point_index); i++) {
			point_index[i].xx /= args.spd;
			point_index[i].yy /= args.spd;
		}
		
		if ((args.target[0].xx >= 0 && point_index[0].xx <= args.target[0].xx)
		&& (args.target[0].yy >= 0 && point_index[0].yy <= args.target[0].yy)) {
			ins_actor_expand_oscillate(id, args.factor, args.spd);
		} else if (point_index[0].yy >= args.target[0].yy
		&& point_index[0].yy >= args.target[0].yy) {
			ins_actor_expand_oscillate(id, args.factor, args.spd);
		}
	}
}


