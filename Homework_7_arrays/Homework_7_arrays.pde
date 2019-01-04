//Calling flower class
Flower myFlower1;
//Global variables
int _petals=5;
int _pc=#00FF00;
int num = 50;

//Initalizing array
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

void setup() {

  size(800, 600);
  noStroke();
}

void draw() {

  background(0);

  //Populating the array with elements
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  //Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {
    //Set the array position to read
    int pos = (indexPosition + i) % num;
    float radius = (num-i);
//Calling a new flower class
    myFlower1 = new Flower(radius, _petals, x[pos], y[pos], _pc);
    //Calling function for displaying the class
    myFlower1.display();
  }
}
