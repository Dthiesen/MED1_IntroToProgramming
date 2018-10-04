int r=60;
float ballX;
float ballY;

void setup() {
  size(600,400);
  background(150,150,150);
}

void draw(){

  fill(#FFFFFF);
  for (float i=0;i<PI*2;i+=2*PI/5) {
  ballX=width/2 + r*cos(i);
  ballY=height/2 + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(#000000);
  ellipse(width/2,height/2,r*1.2,r*1.2);
  textSize(28);
  stroke(5);
  text("Metal", 250, 75);
  
}  
 