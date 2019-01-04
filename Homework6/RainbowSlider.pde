class Slider {

  // Values for slider

  float rectX = mouseX;
  float rectY = 550;
  int rectWidth = 100;
  int rectHeight = 30;

  //Slider constructor

  Slider(float temp_rectX, float temp_rectY, int temp_rectWidth, int temp_rectHeight) {
    rectX = temp_rectX;
    rectY = temp_rectY;
    rectWidth = temp_rectWidth;
    rectHeight = temp_rectHeight;
  }

  //Function for showing slider.
  void displaySlider() {
    // Drawing the slider
    rect(mouseX, rectY, rectWidth, rectHeight);
  }

  //Function for moving slider.
  void moveSlider() {
    //Constraining the mouseX on the visible x-axis
    mouseX = constrain(mouseX, width-width, width-rectWidth);
  }
}
