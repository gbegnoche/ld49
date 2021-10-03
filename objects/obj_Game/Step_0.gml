if (hazard_spawn_time <= 0) {
	if (irandom(8) == 0) {
		spawn_enemy();
	} else {
		spawn_asteroid();
	}
	hazard_spawn_time = hazard_spawn_rate;
}

if (star_spawn_time <= 0) {
	spawn_star(random_range(5, room_width - 5), -5);
	star_spawn_time = star_spawn_rate;
}

--hazard_spawn_time;
--star_spawn_time;
