//Global Variables
float sizeWidth, sizeHeight;
float size, quit;
//
void sizeSetup() {
  sizeWidth = width * 1/4;
  sizeHeight = height * 1/8;
} //End sizeSetup
//
float sizeCalculator(float size, float appWidth) {
  size(size);
  while ( sizeWidth(size) > appWidth ) {
    size = size * 0.66;
  }
  return size;
} //End sizeCalculator
