//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
float appWidth=0, appHeight=0;
color black=#000000;
//
void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  displayWidth = appWidth*21/20;
  displayHeight = appHeight*21/20;
  //
  Population(); 
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    displayWidth = 0.0;
    displayHeight = 0.0;
    println("Display is too small for App");
    exit();
  } else
  {
    displayWidth = appWidth;
    displayHeight = appHeight;
  }
  println("App Geometry is", "\tDisplay Width:", displayWidth, "\t\tDisplay Height", displayHeight);
  //
} //End setup
//
void draw() {
  background(black);
  println(mouseX, mouseY);
  drawQuitButton();
  drawTicTacToe();
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
