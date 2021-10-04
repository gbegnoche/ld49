function spawn_star(_x, _y) {
	var star = {
		xx: _x,
		yy: _y,
	}
	array_push(obj_StarHandler.star_array, star);
}