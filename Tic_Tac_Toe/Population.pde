//Global Variables
Boolean quitOn=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow=#FFFF00, purple=#FF00FF;
float centerX = appWidth * 1/2;
float centerY = appHeight * 1/2;
float X1, Y1, X2, Y2, X3, Y3, X4, Y4;
float X5, Y5, X6, Y6, X7, Y7, X8, Y8;
//
float xplaceX1, xplaceY1, xplaceX2, xplaceY2;
float xplaceX3, xplaceY3, xplaceX4, xplaceY4;
float oplaceX, oplaceY, oplaceExtent;
//
void Population() {
  //
  print("Confirming Center X:", centerX);
  println("\t Confirming Center Y:", centerY);
  //
  quitButtonX = centerX - ( appWidth * 1/10 );
  quitButtonY = centerY - ( appHeight * 1/8 );
  quitButtonWidth = appWidth * 1/6;
  quitButtonHeight = appHeight * 1/3;
  //
  X1 = centerX;
  Y1 = centerY;
  X2 = centerX + 1/2;
  Y2 = centerY - 1/2;
  //
  X3 = X1 - appWidth;
  Y3 = Y1;
  X4 = centerX + appWidth;
  Y4 = Y2;
  //
  X5 = X1 + appWidth;
  Y5 = X2 - appWidth;
  X6 = X3;
  Y6 = Y2;
  //
  X7 = X5;
  Y7 = Y5 - appWidth;
  X8 = X6;
  Y8 = Y7;
  //
} //End Population
//
void drawQuitButton() {
  //
  fill(quitButtonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == ESC ) exit();
  //
  if ( quitOn==true ) {
    quitButtonColor = yellow;
  } else {
    quitButtonColor = purple;
  }
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End quitButton
//
void xPlace() {
  line(xplaceX1, xplaceY1, xplaceX2, xplaceY2);
  line(xplaceX3, xplaceY3, xplaceX4, xplaceY4);
} //End xPlace
//
void oPlace() {
  circle(oplaceX, oplaceY, oplaceExtent);
} //End oPlace
//
void drawTicTacToe() {
  //
  line(X1, Y1, X2, Y2);
  line(X3, Y3, X4, Y4);
  line(X5, Y5, X6, Y6);
  line(X7, Y7, X8, Y8);
  //
  if ( xPlaceTrue==true || oPlaceTrue==false ) {
    fill(purple);
  } else {
    fill(yellow);
  }
  if ( xPlaceTrue==true || oPlaceTrue==false ) xPlace();
  //
  if ( xPlaceTrue==false || oPlaceTrue==true ) {
    fill(yellow);
  } else {
    fill(purple);
  }
  if ( xPlaceTrue==false || oPlaceTrue==true ) oPlace();
  //
} //End tictactoe
//
void display() {
  //Display Orientation: Landscape, not portrait nor square (sort of)
  println(width, height, displayWidth, displayHeight);
  appWidth = width; //Reminder: ensure Global Variable once DISPLAY() is function
  appHeight = height;
  String ls="Landscape", p="portrait", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; // Ternary Operator, repeats IF-ELSE Structure
  //Simply break APP, develop algorithm to fix app even if user makes a mistake
  if ( orientation==ls ) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct); //Should be to the CANVAS
    appWidth *= 0; //appWidth = appWidth *0
    appHeight *= 0;
  }//End Diplay Orientation
  //
}//End display
//End SubProgram
