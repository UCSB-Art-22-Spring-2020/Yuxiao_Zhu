void boundaries() {

  if ( xPos > width || xPos < 0 ) { // check if the geometry is at the edge of the screen
    xDirection = xDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }

  if ( yPos > height || yPos < 0 ) { // check if the geometry is at the edge of the screen
    yDirection = yDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }
}
