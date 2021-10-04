function generate_random_instability() {
	var type = irandom(15);
	//var type = 16;
	switch(type) {
		case 0:
			ins_actor_change_color(obj_Player, random_color());
			break;
		case 1:
			ins_actor_cycle_color(obj_Player, irandom_range(10, 200))
			break;
		case 2:
			ins_actor_expand(obj_Player, random_range(1.1, 3), random_range(1.01, 1.4));
			break;
		case 3:
			ins_actor_contract(obj_Player, random_range(1.1, 3), random_range(1.01, 1.4));
			break;
		case 4:
			ins_actor_expand_oscillate(obj_Player, random_range(1.1, 3), random_range(1.01, 1.4));
			break;
		case 5:
			ins_change_bullet_color(random_color());
			break;
		case 6:
			ins_change_bullet_size(irandom_range(3, 40));
			break;
		case 7:
			ins_change_bullet_speed(irandom_range(1, 18));
			break;
		case 8:
			ins_change_asteroid_color(random_color());
			break;
		case 9:
			ins_change_asteroid_speedx(random_range(1, 1.2));
			break;
		case 10:
			ins_asteroid_oscillate(random_range(1.1, 3), random_range(1.01, 1.4));
			break;
		case 11:
			ins_change_enemy_color(random_color());
			break;
		case 12:
			ins_change_enemy_speedx(random_range(1, 1.2));
			break;
		case 13:
			ins_enemy_oscillate(random_range(1.1, 3), random_range(1.01, 1.4));
			break;
		case 14:
			ins_change_hazard_spawn_rate(irandom_range(1, 5));
			break;
		case 15:
			ins_change_enemy_chance(random(1));
			break;
		case 16:
			//broken!
			ins_asteroid_cycle_color();
			break;
		default:
			break;
	}
}