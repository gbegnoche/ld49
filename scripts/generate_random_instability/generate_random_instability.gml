function generate_random_instability() {
	var type = irandom(16);
	//var type = 16;
	switch(type) {
		case 0:
			ins_actor_change_color(obj_Player, random_color());
			spawn_floating_text("player color changed!");
			break;
		case 1:
			ins_actor_cycle_color(obj_Player, irandom_range(10, 200))
			spawn_floating_text("player party mode");
			break;
		case 2:
			var factor = random_range(1.1, 3);
			ins_actor_expand(obj_Player, factor, random_range(1.01, 1.4));
			spawn_floating_text("player expanded by " + string(factor));
			break;
		case 3:
			var factor = random_range(1.1, 3);
			ins_actor_contract(obj_Player, factor, random_range(1.01, 1.4));
			spawn_floating_text("player shrunk by " + string(factor));
			break;
		case 4:
			var factor = random_range(1.1, 3);
			ins_actor_expand_oscillate(obj_Player, factor, random_range(1.01, 1.4));
			spawn_floating_text("player oscillating by " + string(factor));
			break;
		case 5:
			ins_change_bullet_color(random_color());
			spawn_floating_text("bullet color change!");
			break;
		case 6:
			var size = irandom_range(3, 40);
			ins_change_bullet_size(size);
			spawn_floating_text("bullet size set to " + string(size));
			break;
		case 7:
			var spd = irandom_range(1, 18);
			ins_change_bullet_speed(spd);
			spawn_floating_text("bullet speed set to " + string(spd));
			break;
		case 8:
			ins_change_asteroid_color(random_color());
			spawn_floating_text("asteroid color change!");
			break;
		case 9:
			var spd = random_range(1, 1.2);
			ins_change_asteroid_speedx(spd);
			spawn_floating_text("asteroid speed x" + string(spd));
			break;
		case 10:
			ins_asteroid_oscillate(random_range(1.1, 3), random_range(1.01, 1.4));
			spawn_floating_text("asteroid freak out!");
			break;
		case 11:
			ins_change_enemy_color(random_color());
			spawn_floating_text("enemy color change");
			break;
		case 12:
			var spd = random_range(1, 1.2);
			ins_change_enemy_speedx(spd);
			spawn_floating_text("enemy speed x" + string(spd));
			break;
		case 13:
			ins_enemy_oscillate(random_range(1.1, 3), random_range(1.01, 1.4));
			spawn_floating_text("enemy freak out!");
			break;
		case 14:
			var amt = irandom_range(1, 5);
			ins_change_hazard_spawn_rate(amt);
			spawn_floating_text("spawn rate increased by " + string(amt) + "!");
			break;
		case 15:
			ins_change_enemy_chance(random(1));
			spawn_floating_text("more enemies, fewer asteroids");
			break;
		case 16:
			var spd = random_range(0.5, 1.5);
			ins_change_player_speed(spd);
			spawn_floating_text("player speed x" + string(spd));
			break;
		case 17:
			//broken!
			ins_asteroid_cycle_color();
			spawn_floating_text("");
			break;
		default:
			break;
	}
}