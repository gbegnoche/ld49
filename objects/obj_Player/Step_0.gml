if (instance_exists(obj_Hazard)) {
	with (obj_Hazard) {
		for (var i = 0; i < array_length(other.cols); i++) {
			if (other.cols[i] == id) {
				audio_play_sound(sfx_PlayerDeath, 10, false);
				instance_destroy(other.id);
				room_goto(rm_GameOver);
			}
		}
	}
}

if (keyboard_check(ord("W"))) y -= spd;
if (keyboard_check(ord("A"))) x -= spd;
if (keyboard_check(ord("S"))) y += spd;
if (keyboard_check(ord("D"))) x += spd;

if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;

if (keyboard_check_pressed(vk_space)) {
	spawn_bullet(point_array[0].xx, point_array[0].yy, bullet_size, bullet_speed, bullet_color);
}


if (keyboard_check_pressed(ord("F"))) {
	print("press");
	generate_random_instability();
}
