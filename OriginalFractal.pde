public void setup()
{
	size(500, 500);
}

public void draw()
{
	noFill();
	background(0);
	stroke(255);
	fractal(150, 350, 200);
}

public void fractal(int x, int y, int len) 
{
	triangle(x, y, x+len, y, x+(len/2), y-len);
	if (len >= 5) {
	}
}