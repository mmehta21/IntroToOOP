Ball b, b2;                //declare a new ball called b

void setup() {
  size(800, 600);
  b = new Ball();
  b2 = new Ball();//initialize b as a new object of the Ball class
}

void draw() {
  background(0);
  b.display();
  b.move();  
  b.bounce();
  b.cD(400);
  b2.display();
  b2.move();
  b2.bounce();
  b2.cD(200);
}