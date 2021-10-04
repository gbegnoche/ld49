function ins_asteroid_oscillate(_factor, _speed) {
	obj_Game.asteroid_factor = _factor;
	obj_Game.asteroid_size_speed = _speed;
	obj_Game.asteroid_fn = function(asteroid) {
		ins_actor_expand_oscillate(asteroid, obj_Game.asteroid_factor, obj_Game.asteroid_size_speed);
	}
}
