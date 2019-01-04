//Calling the classes
Ball myBall1;
Slider mySlider1;

//Declaring the arrays for game background

float[] xarray = new float[100];
float[] yarray = new float[100];
float[] speed = new float[100];

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

  background(0);
  stroke(255);
  strokeWeight(3);

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

//Initializing the array / Defining values for the array
  int i = 0;
  while (i < 100) {  
    xarray[i] = random(0, width);
    yarray[i] = random(0, height);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {

  //Background color
  background(0);

//Drawing points via the array
  int i = 0;
  while (i < 100) {
    point(xarray[i], yarray[i]);

    xarray[i] = xarray[i] - speed[i];
    if (xarray[i] < 0) {
      xarray [i] = width;
    }
    i = i + 1;
  }

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
