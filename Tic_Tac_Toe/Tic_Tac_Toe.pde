//Global Variables
Boolean xPlaceTrue=false, oPlaceTrue=false;
float displayWidth=0, displayHeight=0;
float appWidth=0, appHeight=0;
color black=#000000;
//
void setup() {
  //fullScreen();
  size(1320, 1210);
  appWidth = width*21/20;
  appHeight = height*21/20;
  displayWidth = appWidth;
  displayHeight = appHeight;
  println("What is bigger? DisplayWidth or width:", displayWidth, width);
  println("What is bigger? DisplayHeight or height:", displayHeight, height);
  println("what is the geometery for a Square Orientation?");
  if ( width == 1320 || height == 1210 ) {
    draw();
  } else if ( width < 1320 || height < 1210 ) {
    println("Display is nonexistent");
    exit();
  } else {
    println("Display is nonexistent");
    exit();
  }
  //
  display();
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
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
} //End mousePressed
//
//End MAIN Program
