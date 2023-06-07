//Global Variables
PShape square;
float sizeX, sizeY, sizeWidth, sizeHeight;
float square.rect;
//
void sizeSetup() {
  square = createShape(RECT, sizeX, sizeY, sizeWidth, sizeHeight);
  sizeX = appWidth*19/20;
  sizeY = sizeX;
  sizeWidth = displayWidth * 1/2;
  sizeHeight = displayHeight * 1/2;
} //End sizeSetup
//
void sizeDraw(PShape shape, float height, float sizeX, float sizeY, float sizeWidth, float sizeHeight) {
  float shapeSize = height;
  if (square.rect >= 660 || square.rect >= 605) {
    shapeSize = sizeCalculator(height, appWidth);
  } else {
    shapeSize = shapeSize * 0.10;
  }
  rect(sizeX, sizeY, sizeWidth, sizeHeight);
} //End sizeDraw
//
float sizeCalculator(float size, float appWidth) {
  size(660, 605);
  while ( size(size) > appWidth ) {
    size = size * 0.66;
  }
  return size;
} //End sizeCalculator
