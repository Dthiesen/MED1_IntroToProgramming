Flower myFlower1;
Flower myFlower2;
Flower myFlower3;

void setup() {

  float _r = random(40, 80);
  float _petals = 7;
  float _x = width/random(1, 4);
  float _y = height/random(1, 4);
  int _pc = #4AD63F;

  size(800, 600);
  myFlower1 = new Flower (_r, _petals, _x, _y, _pc);
  myFlower2 = new Flower (_r, _petals, _x, _y, _pc);
  myFlower3 = new Flower (_r, _petals, _x, _y, _pc);
}

void draw() {

  background(#009FFF);
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
