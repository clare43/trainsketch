// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 8-1: A Car class and a Car object

Car myCar; // Declare car object as a globle variable.

void setup() {
  size(200,200);
  // Initialize Car object
  myCar = new Car(); // Initialize car object in setup() by calling constructor.
}

void draw() {
  background(255);
  // Operate Car object.
  myCar.move(); // Operate the car object in draw( ) by calling object methods using the dots syntax.
  myCar.display();
}

class Car { // Define a class below the rest of the program.
  color c; // Variables.
  float xpos;
  float ypos;
  float xspeed;

  Car() { // A constructor.
    c = color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 5;
  }

  void display() { // Function.
    // The car is just a square
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(100,120,200,5);
    rect(xpos,ypos,50,20);
    ellipse(xpos-12,ypos+15,10,10);
    ellipse(xpos+12,ypos+15,10,10);
    triangle(xpos+20,ypos+10,xpos,ypos-10,xpos-20,ypos+10);
  }

  void move() { // Function.
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 10;
    }
  }
}
