//list of lolipops in the scene
ArrayList <lolipop> lolipops = new ArrayList<lolipop>();

//how many lolipops in the scene initially
int Amount;

//model
PShape lolipop;

//lolipop textures
PImage coke;
PImage grape;
PImage kiwi;
PImage lemon;
PImage orange;
PImage pineapple;

//initial position of the lolipop
PVector swim1;

//for testing
float n = random(0, 360);
float a = 0;
float c = 0;

void initializeLolipop() {

  
  //load stuff in
  //lolipop = loadShape("lolipop.obj"); -> the obj file i found is not suitable here
  lolipop = createShape(SPHERE,20);
  coke = loadImage("Coke.jpg");
  grape = loadImage("Grape.jpg");
  kiwi = loadImage("Kiwi.jpg");
  lemon = loadImage("Lemon.jpg");
  orange = loadImage("orange.jpg");
  pineapple = loadImage("Pineapple.jpg");

  //set inititial amount of lolipops
  Amount = 200;

  //randomly add lolipops into the scene
  for (int i=0; i < Amount; i++) { 
    lolipops.add(new lolipop (int(random(0, 7)), int(random(1, 20)), 
      new PVector(random(-1600, 1600), random(-2600, 0), random(-1600, 1600)), 
      new PVector(random(1.9, 5.2), random(1.9, 5.2)), random(0, 360)));
  
  }

  //testing
  swim1 = new PVector(-600, 10000);
   // swim1= PVector.random2D();
}

void drawLolipops() {

  //run diaplay funstion for every lolipop in the class
  for (lolipop p : lolipops) {
    p.displayLoli();
  }
}

//testing
void oneLolipopTest() {
  pushMatrix();  //]]]]
  
  strokeWeight(20);
  stroke(255);

  line(0, 0, 0, 100, 0, 100);

  stroke(255, 0, 0);
  line(0, 0, 0, 100, 0, 100);
  translate(a, 0, c);
  a++;
  c++;

  shape(lolipop);
  sphere(10);

  swim1=swim1.add(new PVector(.5, .5));

  popMatrix();//]]]

  pushMatrix();//]]]
  strokeWeight(20);
  stroke(255);
  popMatrix();//]]]
}
