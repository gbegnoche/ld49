function spawn_enemy_bullet(_x, _y) {
	audio_play_sound(sfx_EnemyShoot, 10, false);
	instance_create_depth(_x, _y, 0, obj_EnemyBullet);
}
