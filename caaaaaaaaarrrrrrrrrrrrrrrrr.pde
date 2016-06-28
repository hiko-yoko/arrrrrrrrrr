
Car myCar1;
Car myCar2;
Car myCar3;// Two objects!
 
void setup() {
  size(400,200);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,150,-2); 
  myCar2 = new Car(color(0,0,255),0,20,1);
  myCar3 = new Car(color(0,255,0),0,80,3);
  
}
 
void draw() {
  background(204,204,204);
  line(0,10,400,10);
  line(0,190,400,190);
  stroke(255);
  line(0,95,400,95);
  line(0,105,400,105);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.drive();
  myCar3.display();
  
}
 
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
 
  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
 
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
 
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
    if(xpos<0){
    xpos=400;
    }
    
    
  }
}