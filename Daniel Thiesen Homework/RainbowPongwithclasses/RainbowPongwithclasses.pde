//Calling the classes
Ball myBall1;
Slider mySlider1;

// A special thanks to Create The Change for music
/*import processing.sound.*;
SoundFile file;
String audioName = "music.wav";
String path; */

void setup() {

 /*path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();*/

  //Assigning size
  size(800, 600);

  //No cursor on sketch
  noCursor();

//Calling a new Ball class. 
  float r = 50;
  float x = 50;
  float y = 50; 
  myBall1 = new Ball(r, x, y);
  
//Calling a new Slider class.
  float rectX = mouseX;
  float rectY = 550;
  int rectWidth = 100;
  int rectHeight = 20;
  mySlider1 = new Slider(rectX, rectY, rectWidth, rectHeight);
}

void draw() {
  
  //Background color
  background(100);

//Calling functions for objects.
  myBall1.display();
  myBall1.move();
  myBall1.bounce();
  myBall1.features();
  mySlider1.displaySlider();
  mySlider1.moveSlider();

  //Boolean variables for rainbow color scheme. 
  if (mouseX < width)
    fill(#A900FF);
  if (mouseX < width-100)
    fill(#0300FF);
  if (mouseX < width-200)
    fill(#00FFF9);
  if (mouseX < width-300)
    fill(#29FF00);
  if (mouseX < width-400)
    fill(#FFF700);
  if (mouseX < width-500)
    fill(#FFAA00);
  if (mouseX < width-600)
    fill(#FF0000);
  if (mouseX < width-700)
    fill(#FF00E6);
}
