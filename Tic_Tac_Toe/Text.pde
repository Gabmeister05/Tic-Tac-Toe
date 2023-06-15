//Global Variables
PFont levelFont, xoFont, playerFont, scoreFont;
String easy = "Easy", medium = "Medium", master = "Master", reset = "Reset", title = "Tic Tac Toe", x = "X", o = "O";
int xWin = 0, oWin = 0, count = 0, position = 0;
Boolean[] noDraw = new Boolean[9]; //Turn off ablity to draw an X or an O in a sqaure of the board
color green = #00FF1F;
int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];
//
void textSetup() {
  //Finding all Fonts on System
  //String[] fontList = PFont.list(); //To list all fonts available on system
  //printArray(fontList); //For listing all possible fonts to choose, then createFont

  //Load a Font:
  levelFont = createFont ("Stencil", 90); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  xoFont = createFont ("Palace Script MT", 90);
  playerFont = createFont ("SimSun", 90);
  scoreFont = createFont ("Stencil", 90);

  //Tic Tac Toe
  autoText(title, levelFont, height, purple, CENTER, CENTER, width*1/3, height*0/12, width*1/3, height*1/12);

  //EASY, MEDIUM, MASTER Strings
  autoText(easy, levelFont, height, 0, RIGHT, CENTER, 0, 0, width*0.93/3, height*1/12);
  autoText(medium, levelFont, height, 0, RIGHT, CENTER, 0, height*1/12, width*1/3, height*1/12);
  autoText(master, levelFont, height, 0, RIGHT, CENTER, 0, height*2/12, width*1/3, height*1/12);

  //RESET
  autoText(reset, levelFont, height, 0, CENTER, CENTER, width*2/3, height*0/12, width*1/3, height*1/12);

  //X&O in Scoreboard
  autoText(x, playerFont, height, 0, LEFT, CENTER, width*9/24, height*3/24, width*4/48, height*2/24);
  autoText(o, playerFont, height, 0, LEFT, CENTER, width*17/24, height*3/24, width*4/48, height*2/24);

}//End textSetup
//
void textDraw() {

  //xWIN and yWin in the ScoreBoard
  //rect(width*11/24, height*3/24, width*8/48, height*2/24); //Player 1 Score
  //rect(width*19/24, height*3/24, width*8/48, height*2/24); //Player 2 Score
  autoText(str(xWin), scoreFont, height, 0, LEFT, CENTER, width*11/24, height*3/24, width*8/48, height*2/24);
  autoText(str(oWin), scoreFont, height, 0, LEFT, CENTER, width*19/24, height*3/24, width*8/48, height*2/24);

  //X&O in Board
  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    xoText(x, position);
  } else {
    xoText(o, position);
  }

  //Reset to Green
  if (count == 9) {
    
    fill(green);
    rect(width*2/3, height*0/12, width*1/3, height*1/12);
    fill(255);
    autoText(reset, levelFont, height, 0, CENTER, CENTER, width*2/3, height*0/12, width*1/3, height*1/12);
  }
}//End textDraw
//
void xoText(String text, int position) {
  fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(xoFont, 80); //Change the number until it fits, largest font size
  if (position == 1) {
    text(text, width*1/24, height*7/24, width*6/24, height*4/24);
    boardPiece[0] = text;
  }
  if (position == 2) {
    text(text, width*9/24, height*7/24, width*6/24, height*4/24);
    boardPiece[1] = text;
  }
  if (position == 3) {
    text(text, width*17/24, height*7/24, width*6/24, height*4/24);
    boardPiece[2] = text;
  }
  if (position == 4) {
    text(text, width*1/24, height*13/24, width*6/24, height*4/24);
    boardPiece[3] = text;
  }
  if (position == 5) {
    text(text, width*9/24, height*13/24, width*6/24, height*4/24);
    boardPiece[4] = text;
  }
  if (position == 6) {
    text(text, width*17/24, height*13/24, width*6/24, height*4/24);
    boardPiece[5] = text;
  }
  if (position == 7) {
    text(text, width*1/24, height*19/24, width*6/24, height*4/24);
    boardPiece[6] = text;
  }
  if (position == 8) {
    text(text, width*9/24, height*19/24, width*6/24, height*4/24);
    boardPiece[7] = text;
  }
  if (position == 9) {
    text(text, width*17/24, height*19/24, width*6/24, height*4/24);
    boardPiece[8] = text;
  }
  fill(255); //Reset to white for rest of the program
}//End xoText
//
void xoButtonDrawMouseClicked() {
  //for MouseClicked Listener, each of buttons in X&O Board

  //To Test Each Button, use the following code
  //Intended to increase counter of xWins or oWins
  
  fill(255);
   noStroke();
   //Use dimensions of the individual rectangles from GUI Design
   rect(width*1/24, height*7/24, width*6/24, height*4/24); //Square in #1
   rect(width*9/24, height*7/24, width*6/24, height*4/24); //Square in #2
   rect(width*17/24, height*7/24, width*6/24, height*4/24); //Square in #3
   rect(width*1/24, height*13/24, width*6/24, height*4/24); //Square in #4
   rect(width*9/24, height*13/24, width*6/24, height*4/24); //Square in #5
   rect(width*17/24, height*13/24, width*6/24, height*4/24); //Square in #6
   rect(width*1/24, height*19/24, width*6/24, height*4/24); //Square in #7
   rect(width*9/24, height*19/24, width*6/24, height*4/24); //Square in #8
   rect(width*17/24, height*19/24, width*6/24, height*4/24); //Square in #9
   stroke(1);
   xWin+=1;
   

  if (noDraw[0] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*7/24 && mouseY<height*11/24) { //#1
    position = 1;
    noDraw[0] = true;
    count++;
  }
  if (noDraw[1] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*7/24 && mouseY<height*11/24) { //#2
    position = 2;
    noDraw[1] = true;
    count++;
  } 
  if (noDraw[2] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*7/24 && mouseY<height*11/24) { //#3
    position = 3;
    noDraw[2] = true;
    count++;
  } 
  if (noDraw[3] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*13/24 && mouseY<height*17/24) { //#4
    position = 4;
    noDraw[3] = true;
    count++;
  } 
  if (noDraw[4] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*13/24 && mouseY<height*17/24) { //#5
    position = 5;
    noDraw[4] = true;
    count++;
  } 
  if (noDraw[5] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*13/24 && mouseY<height*17/24) { //#6
    position = 6;
    noDraw[5] = true;
    count++;
  } 
  if (noDraw[6] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*19/24 && mouseY<height*23/24) { //#7
    position = 7;
    noDraw[6] = true;
    count++;
  } 
  if (noDraw[7] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*19/24 && mouseY<height*23/24) { //#8
    position = 8;
    noDraw[7] = true;
    count++;
  } 
  if (noDraw[8] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*19/24 && mouseY<height*23/24) { //#9
    position = 9;
    noDraw[8] = true;
    count++;
  }
}//End xoButtonDrawMouseClicked
//
//End SubProgram
