function spawn_asteroid() {
	instance_create_depth(random_range(20, room_width - 20), -20, 0, obj_Asteroid);
}