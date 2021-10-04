function ins_actor_cycle_color(_actor, _speed) {
	_actor.args = {
		actor: _actor,
		spd: _speed,
		counter: 0,
	}
	_actor.fn = function(args) {
		if (args.counter <= 0) {
			args.actor.col = random_color();
			args.counter = args.spd;
		} else {
			args.counter--;
		}
	}
}
