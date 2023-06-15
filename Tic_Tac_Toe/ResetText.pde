void resetText() {
  fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(levelFont, 42); //Change the number until it fits, largest font size
  text(reset, width*2/3, height*0/12, width*1/3, height*1/12);
  fill(255); //Reset to white for rest of the program
}//End resetText
//End SubProgram
