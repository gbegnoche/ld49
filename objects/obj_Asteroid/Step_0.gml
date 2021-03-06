if (instance_exists(obj_Bullet)) {
	with (obj_Bullet) {
		for (var i = 0; i < array_length(other.cols); i++) {
			if (other.cols[i] == id) {
				obj_Game.scr += 10;
				obj_Game.kill_counter++;
				audio_play_sound(other.death_sfx, 10, false);
				for (var i = 0; i < irandom_range(2, 4); i++) {
					instance_create_depth(x, y, 0, obj_Debris);
				}
				instance_destroy(id);
				instance_destroy(other.id);
			}
		}
	}
}

y += spd * spdx;

if (y > room_height + 20) {
	increment_unstable_level();
	instance_destroy();
}
