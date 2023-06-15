//Global Variables
//
void setup()
{
  size(800, 800); //fullScreen(); //displayWidth, displayHeight
  //Code evaluates if the WINDOW Size will be able to be displayed, reduce by percentage if "NO"
  //Code inspects geometry, what is the shorter side, always displays board right side up
  println("What is bigger? DisplayWidth or width:", displayWidth, width);
  println("What is bigger? DisplayHeight or height:", displayHeight, height);
  println("what is the geometery for a Square Orientation?");
  //Code creates Square Geometry
  //Thus, phone can be either orientation, still able to play Tic Tac Toe
  //Algorithm saves user from themselves, always displays CANVAS
  display(); //Square manditory
  //
  //fullScreen(); //uses displayWidth and displayHeight
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program

  background(255);

  GUI_Design();
  textSetup();
  quitButtonSetup();
  //resetText();

  for (int i=0; i < noDraw.length; i++) { //Needs to run, not placed in any setup procedure yet
    noDraw[i] = false;
  }
}//End Setup
//
void draw() {
  quitButtonDraw();
  textDraw();
  check3InRowDraw();
  if (winX == true || winO == true) {
    println("X's won:", winX);
    println("O's won:", winO);
    noLoop(); //Stops game from working, must press quit button and restart game
  }
}//End draw
//
void mouseClicked() {
  quitButtonMouseClicked();
  xoButtonDrawMouseClicked();
  if (winX == true || winO == true) { //Example of empty-IF, stops code from running when Boolean triggered
  } else {
    println("Position:", position, "Count:", count);
  }
}//End mouseClicked
//
void mousePressed() {
}//End mousePressed
//
void keyPressed() {
}//End keyPressed
//
//End MAIN Program
