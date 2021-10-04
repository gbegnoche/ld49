function ins_asteroid_cycle_color() {
	obj_Game.asteroid_fn = function(asteroid) {
		ins_actor_cycle_color(asteroid, irandom_range(10, 200));
	}
}