/*
You would think that the same shape superimposed on one another would
result in something mesmerizing did you?

"Researchers have proven scientifically that humans are all 
one people...The color of our ancestors’ skin and ultimately 
my skin and your skin is a consequence of ultraviolet light, 
of latitude and climate. Despite our recent sad conflicts here 
in the U.S., there really is no such thing as race. We are one 
species—each of us much, much more alike than different. We all 
come from Africa. We all are of the same stardust. We are all 
going to live and die on the same planet, a Pale Blue Dot in the 
vastness of space. We have to work together." -Bill Nye

USE THE ARROW KEYS TO CHANGE VALUES
UP/DOWN controls color
LEFT/RIGHT controls stroke weight

CLICK MOUSE TO CHANGE BACKGROUND: Black or White

David Dominguez
November 16, 2015
Art, Code, & Interactivity
*/

float angle = 0; //angle for displacement
int stroke = 2; //default stroke size
int val = 255; //color max value
int s = 600; //size of window
int back = 0; //background color

//Initial Setup
void setup() {
  System.out.println("USE THE ARROW KEYS TO CHANGE VALUES:");
  System.out.println("UP/DOWN controls color");
  System.out.println("LEFT/RIGHT controls stroke weight");
  System.out.println("CLICK MOUSE TO CHANGE BACKGROUND: Black or White");
  size(600,600); 
  strokeWeight(stroke);
  PShape head;
  head = createShape(ELLIPSE, -25, 0, 50, 50);
  head.setFill(color(255));
  shape(head);
}
 
//Draw loop called repeatedly
void draw() {
  if(stroke < 2){
    stroke = 2;
  }  
  if(val > 255){
    val = 255;
  }
  if(val < 0){
    val = 0;
  }
  strokeWeight(stroke);
  background(back);
  noFill();
  stroke(255);
  rectMode(CENTER);
  colorMode(HSB);
  translate(s/2,s/2);
  int counter = 0;
  while(counter<60) {
    stroke(180+counter,val,255);
    rect(0,0,200,200);
    rotate(radians(angle));
    scale(0.96,0.96);
    counter++;
  }
   angle += 0.1;
}

//Click mouse in window to change background color
void mousePressed(){
  if(back == 255){
    back = 0;
  }
  else{
    back = 255;
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      stroke++;
    }
    else if(keyCode == LEFT){
      stroke--;
    }
    else if(keyCode == UP){
      val += 10;
    }
    else if(keyCode == DOWN){
      val -= 10;
    }
  }
}