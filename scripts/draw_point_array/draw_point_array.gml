function draw_point_array(array) {
	draw_primitive_begin(pr_linestrip);
	for (var i = 0; i < array_length(point_array); i++) {
		draw_vertex(array[i].xx, array[i].yy);
	}
	draw_vertex(array[0].xx, array[0].yy);
	draw_primitive_end()
}
