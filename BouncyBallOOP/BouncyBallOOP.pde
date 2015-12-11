Ball[] balls= new Ball[count];  
int count=20;                 //declare a new ball called b

void setup() {
  size(800, 600);
  for(int i=0; i<count; i++){
  balls[i]=new Ball(random(5,100));
  }
}

void draw() {
  background(0);
  for(int i=0; i<count; i++){
    balls[i].display();
    balls[i].move();
    balls[i].bounce();
}