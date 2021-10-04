draw_set_halign(fa_center);
for (var i = 0; i < len(menu_options); i++) {
	if (selection == i) draw_set_color(c_yellow);
	draw_text(room_width / 2, (room_height / 2) + (i * 40), menu_options[i]);
	draw_set_color(c_white);
}
