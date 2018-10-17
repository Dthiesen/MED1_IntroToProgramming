

class Flower {

float r;
float n_petals;
float xpos;
float ypos;
int petalColor;
float xspeed = random(1,3);
float yspeed = random(1,3);
int xdirection = 1;
int ydirection = 1;
  
  Flower(float temp_r, float temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r = temp_r;
    n_petals = temp_n_petals;
    xpos = temp_x;
    ypos = temp_y;
    petalColor = temp_petalColor;
  }


  void display () {
    
    float ballX;
    float ballY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) { 
      ballX=xpos+r*cos(i);
      ballY=ypos+r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(#FF00E2);
    ellipse(xpos, ypos, r*1.2, r*1.2);
  }
  void move () {
    xpos = xpos + (xspeed * xdirection);
    ypos = ypos + (yspeed * ydirection);
  }
  void bounce () {
    if (xpos > width-r || xpos < r) 
      xdirection = -xdirection;

    if (ypos > height-r || ypos < r) 
      ydirection = -ydirection;
  }
}
