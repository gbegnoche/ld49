if (star_spawn_time <= 0) {
	spawn_star(random_range(5, room_width - 5), -5);
	star_spawn_time = star_spawn_rate;
}
--star_spawn_time;

for (var i = 0; i < len(star_array); i++) {
	if (star_array[i].yy > room_height + 5) {
		array_delete(star_array, i, 1);
	} else {
		star_array[i].yy += 1;
	}
}
