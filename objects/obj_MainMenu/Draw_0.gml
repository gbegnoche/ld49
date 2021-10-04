draw_set_font(fnt_BadSignal);
draw_set_halign(fa_center);
draw_text(room_width / 2, (room_height / 2) - 100, "instability detected");

draw_set_font(fnt_Perpetua);
for (var i = 0; i < len(menu_options); i++) {
	if (selection == i) draw_set_color(c_yellow);
	draw_text(room_width / 2, (room_height / 2) + (i * 40), menu_options[i]);
	draw_set_color(c_white);
}
draw_text(room_width / 2, (room_height / 2) + 140, "control: wasd");
draw_text(room_width / 2, (room_height / 2) + 180, "select/shoot: space");
draw_text(room_width / 2, (room_height / 2) + 260, "there's spacial instability in this sector.");
draw_text(room_width / 2, (room_height / 2) + 300, "destroying a number of enemies or letting them");
draw_text(room_width / 2, (room_height / 2) + 340, "slip past you will cause strange effects...");
