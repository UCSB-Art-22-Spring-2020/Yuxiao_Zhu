//Art 22 Spring 2020
//Author Yuxiao Zhu
//Assignment 4 
//27 April, 2020
//I was trying to use functions like tint(), blend(), or some interactions, but I failed. TAT
PImage img;

void setup() {
  size(564, 564); 
  img = loadImage("sunset.jpg");

  loadPixels();
  for (int x=0; x < width; x++) { // nested loop (loop in the loop) to scan through all pixel locations
    for (int y=0; y < width; y++) {
      int index = x + y * width; //mAgIc! 

      // extracted color values from image
      float r = red(img.pixels[index]);
      float g = green(img.pixels[index]);    
      float b = blue(img.pixels[index]);

      // set pixel color for display
      pixels[index] = color(r, g, b);
    }
  }
  updatePixels();
}


void draw() {

  float x1 = random(0, width); // x location of copy
  float y1 = 0; // y location of copy

  int w = 10; // width of the section
  int h = height; //height of the section

  float x2 = x1 + random(-20, 20); // paste the pixel section at a random location up to 20 pixels away from x1
  float y2 = y1 + random(-300, 300); // paste the pixel section at a random location up to 300 pixels away from y1

  copy( int(x1), int(y1), w, h, int(x2), int(y2), w, h);

    //I want to set the mouse but also failed. Sorry I have no more time to dig into it because of time limitation.
  //float d = dist(x1, y1, mouseX, mouseY); // get distance between pixel's loaction (x and y) and the mouse position
  //float mD = map(d, 0, 300, 0, 255); // map pixel distance to range that works with color

  //pixels[index] = color(mD); // setting color of the specific pixel at index

}
