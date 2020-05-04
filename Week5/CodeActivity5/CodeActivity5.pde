//Art 22 2020 Spring
//Author: Yuxiao Zhu
//4 May, 2020
//Code Activity 5

particle p; // initialize a particle named p
particle q; // initiate a particle named q

void setup(){
  size(600,600);
 
  p = new particle(random(0,width),random(0,height), 500, 2, 1); 
  q = new particle(random(0,width),random(0,height), 30, -2, -1);
  
}

void draw(){
  background(248,206,189);
 
  p.display();
  q.display();
  
}

void mouseReleased(){
  p.size-=3; //each click the size of p particle will reduce by 3
  q.size+=5; //each click the size of q particle will increase by 5
}
