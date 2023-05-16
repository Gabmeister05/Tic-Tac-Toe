//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void draw Population() {
  float centerX = displayWidth * 1/2;
  float centerY = displayHeight * 1/2;
} //End Population
//
void draw quitButton() {
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  quitButtonX = centerX - ( appWidth * 1/4 );
  quitButtonY = centerY - ( appHeight * 1/4 );
  quitButtonWidth = appWidth * 1/2;
  quitButtonHeight = appHeight * 1/2;
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == ESC ) exit();
} //End quitButtonSetup
//
//End SubProgram
