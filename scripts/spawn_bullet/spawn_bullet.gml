function spawn_bullet(_x, _y, _size, _speed, _color) {
	var bullet = instance_create_depth(_x, _y, 0, obj_Bullet);
	bullet.spd = _speed;
	bullet.size = _size;
	bullet.col = _color;
}
