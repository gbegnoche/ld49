if (hazard_spawn_time <= 0) {
	if (irandom(8) == 0) {
		spawn_enemy();
	} else {
		spawn_asteroid();
	}
	hazard_spawn_time = hazard_spawn_rate;
}

hazard_spawn_time--;
