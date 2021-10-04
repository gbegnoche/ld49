if (hazard_spawn_time <= 0) {
	if (random(8) < enemy_chance) {
		spawn_enemy(enemy_color, enemy_speedx, enemy_fn);
	} else {
		spawn_asteroid(asteroid_color, asteroid_speedx, asteroid_fn);
	}
	hazard_spawn_time = hazard_spawn_rate;
}

hazard_spawn_time--;

if (kill_counter >= 10) {
	increment_unstable_level();
	kill_counter = 0;
}

if (unstable_level >= 20) {
	audio_sound_gain(sng_MainThemeGlitcher, 0, 0);
	audio_sound_gain(sng_MainThemeGlitchest, 1, 0);
	text_x = random_range((room_width / 2) - 300, (room_width / 2) + 300)
	text_y = random_range((room_height / 2) - 300, (room_height / 2) + 300)
	text_angle = random_range(-90, 90);
	text_color = random_color();
} else if (unstable_level >= 10) {
	audio_sound_gain(sng_MainTheme, 0, 0);
	audio_sound_gain(sng_MainThemeGlitcher, 1, 0);
	text_x = random_range((room_width / 2) - 100, (room_width / 2) + 100)
	text_y = random_range((room_height / 2) - 100, (room_height / 2) + 100)
	text_angle = random_range(-30, 30);
	text_color = random_color();
}
