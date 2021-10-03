function create_point_array(index) {
	var array = [];
	for (var i = 0; i < array_length(index); i++) {
		array_push(
			array,
			{
				xx: x + index[i].xx,
				yy: y + index[i].yy,
			}
		)
	}
	return array;
}