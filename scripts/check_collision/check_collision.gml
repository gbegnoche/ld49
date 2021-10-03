function check_collision(_id) {
	var cols = [];
	with (obj_Actor) {
		if ((_id.bbox.top <= bbox.bottom && _id.bbox.bottom >= bbox.top)
		&& (_id.bbox.left <= bbox.right && _id.bbox.right >= bbox.left)
		&& _id != id
		) {
			array_push(cols, id);
		}
	}
	return cols;
}
