// Subprogram for void draw()

void ballCollisions() {
  // Ball Objects bounce off each other
  // Specific instant variables must be compared in main program, classes use conceptual behaviour of X & Y
  //For more than one ball, need to compare all objects even if scored
  float collisionProximityX = abs (myBall.x - yourBall.x); //Acceptable values will be +-, compare only +
  float collisionProximityY = abs (myBall.y - yourBall.y); //Y-Variable equibalent
  // Note: this will not include all cases about the physics of when two ball objects collide
  // Note: will break if myBall scores before yourBall;
  if (collisionProximityX <= myBall.diameter && collisionProximityX>0) {
    myBall.xSpeed *= -1;
    yourBall.xSpeed *= -1;
  }
}//End ballCollisions
