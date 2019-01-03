Flower myFlower1;
Flower myFlower2;
Flower myFlower3;


void setup() {

  size(800, 600);
//Describing properties for each flower.
  float _r = 50;
  float _petals = 7;
  float _x = 100;
  float _y = 100;
  int _pc = #4AD63F;

  myFlower1 = new Flower (_r, _petals, _x, _y, _pc);

  float _r1 = 50;
  float _petals1 = 7;
  float _x1 = 100;
  float _y1 = 200;
  int _pc1 = #4AD63F;
  myFlower2 = new Flower (_r1, _petals1, _x1, _y1, _pc1);

  float _r2 = 50;
  float _petals2 = 7;
  float _x2 = 100;
  float _y2 = 300;
  int _pc2 = #4AD63F;
  myFlower3 = new Flower (_r2, _petals2, _x2, _y2, _pc2);

}
  void draw() {
//Drawing background color
    background(#009FFF);
//Calling class functions
    myFlower1.display();
    myFlower1.move();
    myFlower1.bounce();

    myFlower2.display();
    myFlower2.move();
    myFlower2.bounce();

    myFlower3.display();
    myFlower3.move();
    myFlower3.bounce();
  }
