event_inherited();

if (instance_exists(obj_Player)) {
	if (x < obj_Player.bbox.left + 3) {
		x += hspd * spdx;
	} else if (x > obj_Player.bbox.right - 3) {
		x -= hspd * spdx;
	} else if (attack_timer <= 0 && y < obj_Player.y) {
		spawn_enemy_bullet(x, y + 5);
		attack_timer = attack_speed;
	}
}

attack_timer--;
