//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
float appWidth, appHeight;
color black=#000000;
//
void setup() {
  fullScreen();
  displayWidth = width;
  displayHeight = height;
  appWidth = displayWidth*11/10;
  appHeight = displayHeight*11/10;
  //
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    displayWidth = 0;
    displayHeight = 0;
    println("Display is too small for App");
    exit();
  } else
  {
    displayWidth = width;
    displayHeight = height;
  }
  println("App Geometry is", "\tApp Width:", displayWidth, "\t\tApp Height", displayHeight);
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
