//Global Variables
PShape square;
float sizeX, sizeY sizeWidth, sizeHeight;
//
void sizeSetup() {
  square = rect(sizeX, sizeY, sizeWidth, sizeHeight);
  sizeWidth = displayWidth * 1/2;
  sizeHeight = displayHeight * 1/2;
} //End sizeSetup
//
float sizeCalculator(float size, float appWidth) {
  size(660, 605);
  while ( sizeWidth(size) > appWidth ) {
    size = size * 0.66;
  }
  return size;
} //End sizeCalculator
