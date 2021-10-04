if (instance_exists(obj_Bullet)) {
	with (obj_Bullet) {
		for (var i = 0; i < array_length(other.cols); i++) {
			if (other.cols[i] == id) {
				obj_Game.scr += 10;
				instance_destroy(id);
				instance_destroy(other.id);
			}
		}
	}
}

y += spd * spdx;

if (y > room_height + 20) {
	//generate_random_instability();
	instance_destroy();
}
