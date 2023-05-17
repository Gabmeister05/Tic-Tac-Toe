//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float appWidth=0, appHeight=0;
color black=#000000;
//
void setup() {
  fullScreen();
  size(1600, 1000);
  appWidth = displayWidth*11/10;
  appHeight = displayHeight*11/10;
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
