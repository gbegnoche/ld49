function ins_actor_cycle_color(_actor, _speed) {
	_actor.args = {
		spd: _speed,
		counter: 0,
	}
	_actor.fn = function(args) {
		if (args.counter <= 0) {
			col = random_color();
			args.counter = args.spd;
		} else {
			args.counter--;
		}
	}
}
