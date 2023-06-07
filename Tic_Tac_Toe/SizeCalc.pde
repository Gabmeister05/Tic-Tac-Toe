//Global Variables
PShape square;
float sizeX, sizeY, sizeWidth, sizeHeight;
//
void sizeSetup() {
  square = createShape(RECT, sizeX, sizeY, sizeWidth, sizeHeight);
  sizeX = appWidth*19/20;
  sizeY = sizeX;
  sizeWidth = displayWidth * 1/2;
  sizeHeight = displayHeight * 1/2;
} //End sizeSetup
//
void sizeDraw() {
} //End sizeDraw
//
float sizeCalculator(float size, float appWidth) {
  size(660, 605);
  while ( sizeWidth(size) > appWidth ) {
    size = size * 0.66;
  }
  return size;
} //End sizeCalculator
