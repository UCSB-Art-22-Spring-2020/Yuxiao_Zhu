void nav() {
  if (keyPressed) {
    if (key == CODED) {

      if (keyCode == UP) {
        rotY+=5; // increase x-axis rotation
      }
      if (keyCode == DOWN) {
        rotY-=5; // decrease x-axis rotation
      }

      if (keyCode == LEFT) {
        rotX+=5; // increase y-axis rotation
      }
      if (keyCode == RIGHT) {
        rotX-=5; // decrease y-axis rotation
      }
    }
    if (key == 'w') {
      camZ+=10; // increase navigation z position by 10
    }
    if (key == 's') {
      camZ-=10; // decrease navigation z position by 10
    }
  }
}
