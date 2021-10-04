event_inherited();

point_index = [
	{
		xx: 0,
		yy: -8,
	},
	{
		xx: 8,
		yy: 8,
	},
	{
		xx: -8,
		yy: 8,
	},
];

for (var i = 0; i < array_length(point_index); i++) {
	point_index[i].xx += random_range(-3, 3);
	point_index[i].yy += random_range(-3, 3);
}

direction = random(360);

create_point_array(point_index);
