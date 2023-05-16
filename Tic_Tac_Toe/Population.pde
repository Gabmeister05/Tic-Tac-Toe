//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow=#FFFF00, purple=#FF00FF;
//
void Population() {
  float centerX = displayWidth * 1/2;
  float centerY = displayHeight * 1/2;
  //
  fill(quitButtonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  quitButtonX = centerX - ( displayWidth * 1/4 );
  quitButtonY = centerY - ( displayHeight * 1/4 );
  quitButtonWidth = displayWidth * 1/2;
  quitButtonHeight = displayHeight * 1/2;
  //
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == ESC ) exit();
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    quitButtonColor = yellow;
  } else {
    quitButtonColor = purple;
  }
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
} //End Population
//
//End SubProgram
