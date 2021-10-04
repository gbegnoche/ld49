if (hazard_spawn_time <= 0) {
	if (random(8) < enemy_chance) {
		spawn_enemy(enemy_color, enemy_speedx, enemy_fn);
	} else {
		spawn_asteroid(asteroid_color, asteroid_speedx, asteroid_fn);
	}
	hazard_spawn_time = hazard_spawn_rate;
}

hazard_spawn_time--;
