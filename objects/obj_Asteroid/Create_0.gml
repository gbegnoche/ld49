event_inherited();

point_index = [
	{
		xx: 0,
		yy: -20,
	},
	{
		xx: 20,
		yy: -10,
	},
	{
		xx: 10,
		yy: 10,
	},
	{
		xx: -10,
		yy: 10,
	},
	{
		xx: -20,
		yy: -10,
	},
];

for (var i = 0; i < array_length(point_index); i++) {
	point_index[i].xx += random_range(-5, 5);
	point_index[i].yy += random_range(-5, 5);
}

create_point_array(point_index);
