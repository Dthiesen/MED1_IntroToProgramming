class Ball {

  //Global variables

  float r;
  float xpos;
  float ypos; 
  float rectX = mouseX;
  float rectY = 550;
  int rectWidth = 100;
  int rectHeight = 30;
  float xdirection = 1;
  float ydirection = 1;
  int rad = 25;

  //Scoring system
  int points = 0;

  //Ball constructor
  Ball(float temp_r, float temp_xpos, float temp_ypos) {
    r = temp_r;
    xpos = temp_xpos;
    ypos = temp_ypos;
  }

  //Function for showing ball.
  void display () {
    // Drawing the ball
    ellipse(xpos, ypos, rad, rad);
  }

  //Function for showing score.
  void features () {

    //End of game text
    textSize(36);
    if (ypos > height) 
      text("Game Over", 300, 300);

    //Position of points
    textSize(24);
    text("Points: " + points, 10, 30);
    
    /*if (points > 100);
    text("You're a MASTER", 300, 300);*/
  }
  
  //Function for moving ball.
  void move () {
    float xspeed = 5;
    float yspeed = 5; 

    xpos = xpos + (xspeed * xdirection);
    ypos = ypos + (yspeed * ydirection);
  }
  
  //Function for bouncing ball.
  void bounce () {

    // Conditionals for movement (ball)
    if (ypos > rectY && ypos < rectY+rectWidth && xpos > mouseX && xpos < mouseX+rectWidth) {
      ydirection *= -1.01;
      points = points + 1;
    }

    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1.01;
    }

    if (ypos < rad) {
      ydirection *= -1.01;
    }
  }
}
