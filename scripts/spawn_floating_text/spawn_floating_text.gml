function spawn_floating_text(_text) {
	var text = instance_create_depth(obj_Game.text_x, obj_Game.text_y, 0, obj_FloatText);
	text.text = _text;
	text.col = obj_Game.text_color;
	text.angle = obj_Game.text_angle;
}