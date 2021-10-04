function spawn_asteroid(_color, _speedx, _fn) {
	var asteroid = instance_create_depth(random_range(20, room_width - 20), -20, 0, obj_Asteroid);
	asteroid.col = _color;
	asteroid.spdx = _speedx;
	_fn(asteroid);
}