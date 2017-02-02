int	r = (int)(Math.random()*256);
int	g = (int)(Math.random()*256);
int	b = (int)(Math.random()*256);
boolean r1 = true;
boolean g1 = true;
boolean b1= true;
int len = 160;

public void setup()
{
	size(500, 500);
	rectMode(CENTER);
}

public void draw()
{
	fill(r, g, b);
	if(r1 == true) {
		r += (int)(Math.random()*3);
	}
	else {
		r -= (int)(Math.random()*3);
	}
	if (r > 254) {
		r1 = false;
	}
	if (r < 1) {
		r1 = true;
	}
	if(g1 == true) {
		g += (int)(Math.random()*3);
	}
	else {
		g -= (int)(Math.random()*3);
	}
	if (g > 254) {
		g1 = false;
	}
	if (g < 1) {
		g1 = true;
	}
	if(b1 == true) {
		b += (int)(Math.random()*3);
	}
	else {
		b -= (int)(Math.random()*3);
	}
	if (b > 254) {
		b1 = false;
	}
	if (b < 1) {
		b1 = true;
	}
	background(0);
	stroke(255);
	fractal(250, 250, len);
}

public void keyPressed() {
	if(keyCode == UP) {
		len+=5;
	}
	if(keyCode == DOWN) {
		len-=5;
	}
}

public void fractal(int x, int y, int len) 
{
	rect(x, y, len, len);
	if (len > 10) {
		fractal(x, y+len*3/4, len/2);
		fractal(x, y-len*3/4, len/2);
		fractal(x+len*3/4, y, len/2);
		fractal(x-len*3/4, y, len/2);
	}
}