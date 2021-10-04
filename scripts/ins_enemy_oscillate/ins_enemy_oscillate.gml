function ins_enemy_oscillate(_factor, _speed) {
	obj_Game.enemy_factor = _factor;
	obj_Game.enemy_size_speed = _speed;
	obj_Game.enemy_fn = function(enemy) {
		ins_actor_expand_oscillate(enemy, obj_Game.enemy_factor, obj_Game.enemy_size_speed);
	}
}
