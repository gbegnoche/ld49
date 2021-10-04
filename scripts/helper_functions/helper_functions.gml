function print(str) {
	show_debug_message(str);
}

function len(a) {
	return array_length(a);
}

function random_color() {
	return make_color_rgb(irandom(255), irandom(255), irandom(255));
}
