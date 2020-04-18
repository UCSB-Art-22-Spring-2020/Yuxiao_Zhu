//Art 22 2020 Spring
//Author: Yuxiao Zhu
//Code Activity 3
//4/17/2020

//TRY PRESS X AND Y !!!

float xPos, yPos; //position variables for geometry
float xVel, yVel;//velocity varriables for geometry
float xDirection, yDirection; //direction variables for geometry
float xGravity, yGravity; //acceleration variables

void setup() {
  size(600, 900); 
  init();
}


void draw() {
  render(); // call the "render" function
  
  update(); // call the "update" function

  boundaries(); // call the "boundaries" function
  
 interaction(); // call the "interaction" function

}
