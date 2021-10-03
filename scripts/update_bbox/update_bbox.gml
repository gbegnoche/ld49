function update_bbox(array) {
	var bbox = {
		top: room_height,
		bottom: 0,
		left: room_width,
		right: 0,
	};
	for (var i = 0; i < array_length(array); i++) {
		if (array[i].xx > bbox.right) bbox.right = array[i].xx;
		if (array[i].xx < bbox.left) bbox.left = array[i].xx;
		if (array[i].yy > bbox.bottom) bbox.bottom = array[i].yy;
		if (array[i].yy < bbox.top) bbox.top = array[i].yy;
	}
	return bbox;
}
