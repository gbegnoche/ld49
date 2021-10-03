for (var i = 0; i < len(instabilities); i++) {
	instabilities[i].fn(instabilities[i]);
	if (instabilities[i].complete) {
		array_delete(instabilities, i, 1);
	}
}
