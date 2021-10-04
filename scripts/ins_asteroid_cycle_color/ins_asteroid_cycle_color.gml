function ins_enemy_cycle_color() {
	obj_Game.enemy_fn = function(enemy) {
		ins_actor_cycle_color(enemy, irandom_range(10, 200));
	}
}