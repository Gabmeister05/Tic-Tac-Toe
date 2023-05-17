//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
int appWidth, appHeight;
color black=#000000;
//
void setup() {
  fullScreen();
  size(1680, 1050);
  appWidth = width;
  appHeight = height;
  displayWidth = width*11/10;
  displayHeight = height*11/10;
  //
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
  println("App Geometry is", "\tApp Width:", appWidth, "\t\tApp Height", appHeight);
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
