function ins_actor_expand(_actor, _factor, _speed) {
	var _target = [];
	for (var i = 0; i < len(_actor.point_index); i++) {
		array_push(_target, {
			xx: _actor.point_index[i].xx * _factor,
			yy: _actor.point_index[i].yy * _factor,
		});
	}
	_actor.args = {
		actor: _actor,
		factor: _factor,
		spd: _speed,
		target: _target,
	};
	_actor.fn = function(args) {
		for (var i = 0; i < len(args.actor.point_index); i++) {
			args.actor.point_index[i].xx *= args.spd;
			args.actor.point_index[i].yy *= args.spd;
		}
		
		if ((args.target[0].xx >= 0 && args.actor.point_index[0].xx >= args.target[0].xx)
		&& (args.target[0].yy >= 0 && args.actor.point_index[0].yy >= args.target[0].yy)) {
			args.actor.fn = function(args) { return 0 };
		} else if (args.actor.point_index[0].yy <= args.target[0].yy
		&& args.actor.point_index[0].yy <= args.target[0].yy) {
			args.actor.fn = function(args) { return 0 };
		}
	}
}
