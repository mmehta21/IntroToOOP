class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel=PVector.random2D();
    vel.mult(10);
  }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move(){
    loc.add(vel);
}
  void bounce(){
    if(loc.x<= 0 || loc.x>= width ){ 
      vel.x=-vel.x;
    }
    if(loc.y>=height || loc.y<= 0){
      vel.y=-vel.y;
    }
}
  void cD(int tdiam){
    diam=tdiam;
  }
}
}