function spawn_enemy(_color, _speedx, _fn) {
	var enemy = instance_create_depth(random_range(20, room_width - 20), -20, 0, obj_Enemy);
	enemy.col = _color;
	enemy.spdx = _speedx;
	_fn(enemy);
}