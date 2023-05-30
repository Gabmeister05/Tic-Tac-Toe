//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
float appWidth=0, appHeight=0;
color black=#000000;
//
void setup() {
  //fullScreen();
  size(1200, 1100);
  appWidth = width*21/20;
  appHeight = height*21/20;
  displayWidth = appWidth*3/2;
  displayHeight = appHeight*3/2;
  //
  drawQuitButton();
  drawTicTacToe();
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
