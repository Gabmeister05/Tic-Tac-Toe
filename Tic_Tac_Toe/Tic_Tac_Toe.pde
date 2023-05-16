//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
color black=#000000;
//
void setup() {
  fullScreen();
  //size();
  displayWidth = width;
  displayHeight = height;
  //
  Population();
  //
} //End setup
//
void draw() {
  background(black);
  println(mouseX, mouseY);
  quitButton();
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
