//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
color black=#000000;
//
void setup() {
  fullScreen();
  //size();
  int appWidth = width;
  int appHeight = height;
  displayWidth = width*11/10;
  displayHeight = height*11/10;
  //
  Population();
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    appWidth = 0;
    appHeight = 0;
    println("Display is too small for App");
    exit();
  } else
  {
    appWidth = width;
    appHeight = height;
  }
  println("App Geometry isl", "\tApp Width:", appWidth, "\t\tApp Height", appHeight);
  //
} //End setup
//
void draw() {
  background(black);
  println(mouseX, mouseY);
  Population();
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
