draw_set_color(c_white);

for (var i = 0; i < len(star_array); i++) {
	var xx = star_array[i].xx;
	var yy = star_array[i].yy;

	draw_primitive_begin(pr_linelist);
	draw_vertex(xx, yy - 2);
	draw_vertex(xx, yy + 2);
	draw_vertex(xx - 2, yy);
	draw_vertex(xx + 2, yy);
	draw_primitive_end();
}
