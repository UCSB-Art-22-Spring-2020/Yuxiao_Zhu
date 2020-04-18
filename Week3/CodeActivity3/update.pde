void update() {
  xVel = xVel * xDirection; // make sure xVel is in the right or left directions
  xPos+=xVel; // add x velocity to our x position, equals to xPos=xPos+xVel
  xVel+=xGravity; // add gravity to velocity

  yVel = yVel * yDirection; // make sure yVel is in the up or down directions
  yPos+=yVel; // add y velocity to our y position
  yVel+=yGravity; // add gravity to velocity
}
