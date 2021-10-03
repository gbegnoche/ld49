if (instance_exists(obj_Hazard)) {
	with (obj_Hazard) {
		for (var i = 0; i < array_length(other.cols); i++) {
			if (other.cols[i] == id) {
				instance_destroy(other.id);
			}
		}
	}
}

if (keyboard_check(ord("W"))) y -= spd;
if (keyboard_check(ord("A"))) x -= spd;
if (keyboard_check(ord("S"))) y += spd;
if (keyboard_check(ord("D"))) x += spd;

if (keyboard_check_pressed(vk_space)) {
	create_bullet(point_array[0].xx, point_array[0].yy);
}
