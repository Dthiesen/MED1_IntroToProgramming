class Flower {
//Global variables
  float r;
  float n_petals;
  float xpos;
  float ypos;
  float xspeed = random(5, 10);
  float yspeed = random(5, 10);
  int xdirection = 1;
  int ydirection = 1;
  int petalColor;
//Constructor for the flower class
  Flower(float temp_r, float temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r = temp_r;
    n_petals = temp_n_petals;
    xpos = temp_x;
    ypos = temp_y;
    petalColor = temp_petalColor;
  }
//Function for displaying the center of the flower and the petals around it. 
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
    //Rad is multiplied by 1.2 to make center bigger than petals. 
    ellipse(xpos, ypos, r*1.2, r*1.2);
  }
  //Function for movement
  void move () {
    xpos = xpos + (xspeed * xdirection);
    ypos = ypos + (yspeed * ydirection);
  }
  //Function for bouncing
  void bounce () {
    if (xpos > width-r || xpos < r) 
      xdirection = -xdirection;
    if (ypos > height-r || ypos < r) 
      ydirection = -ydirection;
  }
  
}
