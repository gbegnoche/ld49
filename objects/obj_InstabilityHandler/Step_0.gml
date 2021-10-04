for (var i = 0; i < len(instabilities); i++) {
	if (instance_exists(instabilities[i].actor) || instabilities[i].actor == 0) {
		instabilities[i].fn(instabilities[i]);
		if (instabilities[i].complete) {
			array_delete(instabilities, i, 1);
		}
	} else {
		array_delete(instabilities, i, 1);
	}
}
