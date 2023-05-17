//Global Variables
Boolean quitOn=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow=#FFFF00, purple=#FF00FF;
//
void quitButton() {
  float centerX = displayWidth * 1/2;
  float centerY = displayHeight * 1/2;
  //
  fill(quitButtonColor);q
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  quitButtonX = centerX - ( displayWidth * 1/10 );
  quitButtonY = centerY - ( displayHeight * 1/8 );
  quitButtonWidth = displayWidth * 1/6;
  quitButtonHeight = displayHeight * 1/3;
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
} //End Population
//
void tictactoe() {
} //End tictactoe
//End SubProgram
