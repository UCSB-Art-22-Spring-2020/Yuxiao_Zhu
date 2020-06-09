//create animals
PShape bear, DD, DOME, PINKS, RC, STAGE, CLOUD3000;
PImage bearC, duckC;

//create the green grass ground
PShape ground;
PImage gr; 

void initializeScene() {
  ////create a ground
  //pushMatrix();
  //ground = loadShape("ground.obj");
  //gr = loadImage("gr.jpg");
  //ground.setTexture(gr);
  //translate(1000, 2000, 20000);

  //popMatrix();

  ////create a huge bear
  //pushMatrix();
  //bear = loadShape("BBLP.obj");
  //bear.setTexture(bearC);
  
  //bear.rotateX(PI);
  //bear.rotateY(PI);
  //bear.translate(10, 0);
  //bear.scale(20);


  //popMatrix();

  ////create a duck
  //pushMatrix();
  //DD = loadShape("DDLP.obj");
  //translate(0, 0, 0);
  //scale(2000);

  ////create a DOME
  //pushMatrix();
  //DOME = loadShape("DOMELP.obj");
  //translate(0, 0, 0);
  //scale(2000);

  //popMatrix();

  ////create a PINK SHARK
  //pushMatrix();
  //PINKS = loadShape("PINKSLP.obj");
  //translate(0, 0, 0);
  //scale(2000);

  //popMatrix();

  ////create a ROLLER Coaster;
  //pushMatrix();
  //RC = loadShape("RCLP.obj");
  //translate(0, 0, 0);
  //scale(2000);

  //popMatrix();

  ////create a STAGE;
  //pushMatrix();
  //STAGE = loadShape("STAGELP.obj");
  //translate(0, 0, 0);
  //scale(2000);
  //popMatrix();

  ////The above is too much trouble 
  ////Simply generate the whole scene!!
  pushMatrix();
  CLOUD3000 = loadShape("CLOUD3000.obj");
  CLOUD3000.rotateX(PI);
  CLOUD3000.rotateY(PI/2);
  popMatrix();


}
