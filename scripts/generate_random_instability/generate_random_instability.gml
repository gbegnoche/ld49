function generate_random_instability() {
	//var actor = instance_find(obj_Actor, irandom(instance_number(obj_Actor) - 1));
	var type = irandom(7);
	switch(type) {
		case 0:
			ins_actor_change_color(obj_Player, random_color());
			break;
		case 1:
			ins_actor_contract(obj_Player, random_range(1.5, 3), random_range(1, 2));
			break;
		case 2:
			ins_actor_expand_oscillate(obj_Player, random_range(1.5, 3), random_range(1.1, 1.5));
			break;
		case 3:
			ins_actor_cycle_color(obj_Player, irandom_range(10, 200))
			break;
		case 4:
			ins_actor_expand(obj_Player, random_range(1.5, 3), random_range(1, 2));
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
		default:
			break;
	}
}