if (keyboard_check_pressed(ord("S"))) selection++;
if (keyboard_check_pressed(ord("W"))) selection--;

if (selection >= len(menu_options)) selection = 0;
if (selection < 0) selection = len(menu_options) - 1;

if (keyboard_check_pressed(vk_space)) {
	switch(selection) {
		case 0:
			room_goto(rm_Game);
			break;
		case 1:
			game_end();
			break;
		default:
			game_end();
			break;
	}
}
