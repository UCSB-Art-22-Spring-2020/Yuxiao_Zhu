//Art 22 2020 Spring
//Author: Yuxiao Zhu
//Final Project
//June 4, 2020

//Welcome to Yuxiao's Fantacy World!!!! 
//Use W to zoom in, S to zoom out, and ↑ ↓ ← → to move up, down, left and right!
//You can also use your mouse to drag the scene! Enjoy!!!


//I was intended to change the colors of the sky according with the music but I found
// if I draw all the colors out, that will be easier for me. Since it is too slow to load all
//the models I found online, my friend helped me with generating my own whole scene by
//using "Gravity Sketch" and tansferred it into processing. 

//import a 3D World camera
import peasy.*;
PeasyCam cam; //initiate camera

//import the audio lib
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; //intialize lib
AudioPlayer song; //audio file

//create Pshape for the whole sphere and use images as wrappings
PShape world; 
PImage sky;

// rotation and translation of our navigation
float rotX, rotY, rotZ, camX, camY, camZ;  

//set a filter to make the scene blurry -> look fantacy
//import ch.bildspur.postfx.builder.*;
//import ch.bildspur.postfx.pass.*;
//import ch.bildspur.postfx.*;

//create a filter
//PostFX fx;

void setup() {
  //set a 3d screen
  size(1000, 1000, P3D); 

  //create a sphere for the world, wrap it with a background image
  sky = loadImage("bg.jpg");
  noStroke();
  noFill();
  world = createShape(SPHERE, 3000);
  world.setTexture(sky);

  //set the camera
  cam = new PeasyCam(this, 500);
  
  //set the camera for the filter view
  //fx = new PostFX(this);  

  //initialize fucntions
  initializeLolipop();
  initializeScene();
  textureMode(NORMAL);

  //DD.translate(0, 0);
  //DOME.translate(0, 0);
  //PINKS.translate(0, 0);
  //RC.translate(0, 0);
  //STAGE.translate(0, 0 );
  //translate(0, 0, 0);
  //shape(world, 0, 0);
  //ground.rotateX(PI);

  //set the scale for the whole scene
  CLOUD3000.scale(200, 200, 200);

  //set up the audio lib
  minim = new Minim(this); 

  //load the song file and loop it
  song = minim.loadFile("bgmusic.mp3", 1024);
  song.loop();
}

void draw() {
  //set the navigation
  translate(rotX, rotY, camZ);

  //set background
  background(251, 226, 226); 
  push();
  shape(CLOUD3000, -46, 117);

  pop();

  //shape(ground, 0, 0);
  //shape(bear, 0, 0);

  //shape(DOME, 0, 0);
  //shape(PINKS, 0, 0);
  //shape(RC, 0, 0);
  //shape(STAGE, 0, 0);


  // lolipops!
  drawLolipops();
  nav();

  // add bloom filter
  //fx.render()
  //  //.sobel()
  //  .bloom(0.0, 13, 8)
  //  .compose();
}
