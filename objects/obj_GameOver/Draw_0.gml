draw_set_font(fnt_BadSignal);
draw_set_halign(fa_center);
draw_text(room_width / 2, (room_height / 2) - 100, "game over");

draw_set_font(fnt_Perpetua);
for (var i = 0; i < len(menu_options); i++) {
	if (selection == i) draw_set_color(c_yellow);
	draw_text(room_width / 2, (room_height / 2) + (i * 40), menu_options[i]);
	draw_set_color(c_white);
}
