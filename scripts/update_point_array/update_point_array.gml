function update_point_array(index) {
	var array = [];
	for (var i = 0; i < array_length(index); i++) {
		array_push(
			array,
			{
				xx: 0,
				yy: 0,
			}
		);
		array[i].xx = x + index[i].xx;
		array[i].yy = y + index[i].yy;
	}
	return array;
}
