function spawn_enemy() {
	instance_create_depth(random_range(20, room_width - 20), -20, 0, obj_Enemy);
}