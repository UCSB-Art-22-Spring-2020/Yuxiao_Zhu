//Lolipop class
//the movements of the lolipops are referred to <Final Fishes>
class lolipop {
  //whay color are the lolipops in this class
  int loliColor;
  //how many lolipops are in this class
  int amt;

  //movement of lolipops
  PVector swim;
  //how fast
  PVector speed;
  //direction it's facing
  float rotate;

  //constructor
  lolipop(int c, int a, PVector swm, PVector spd, float rot) {
    //construct
    loliColor = c;
    amt = a;
    swim = swm;
    speed = spd;
    rotate = rot;
  }


  void displayLoli() {
    //set texture based on the color of the lolipop
    if (loliColor==0)lolipop.setTexture(coke);
    if (loliColor==1)lolipop.setTexture(grape);
    if (loliColor==2)lolipop.setTexture(kiwi);
    if (loliColor==3)lolipop.setTexture(lemon);
    if (loliColor==4)lolipop.setTexture(orange);
    if (loliColor==5)lolipop.setTexture(pineapple);
    
    
    pushMatrix();//]]]

    //keep lolipops within range
    if (swim.x>=4000 || swim.x<=-4000 || swim.z>=4000 || swim.z<=-4000) {
      swim.x*=-1;
      swim.z*=-1;
    }

    //turn the lolipop in a random direction
    rotateY(radians(rotate));

    //make the lolipop float
    translate(swim.x, swim.y, swim.z);
    //rotate model to face forward
    rotate(radians(225));    
    shape(lolipop);
    //move forward
    swim.x+= speed.x;
    swim.z+= speed.y;

    popMatrix();//]]]
  }
}
