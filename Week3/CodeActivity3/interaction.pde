void interaction() {
  if (keyPressed) { // have we pressed a key?
    if (key == 'x') { // is key x pressed?
      xVel = 5; // if so, set x velocity to 3
      stroke(249,207,208,50); //change the stroke color
      println("xVel = :", xVel);
    }
    if (key == 'y') { // is key y pressed?
      yVel = 5; // if so, set y velocity to 3
      stroke(171,177,250,50); //change the stroke color
      println("yVel = :", yVel);
    }
  }
}
