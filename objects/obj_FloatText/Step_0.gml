y -= 2;
alpha -= 0.01;
xscale += 0.03;
yscale += 0.03;

if (alpha <= 0) {
	instance_destroy();
}
