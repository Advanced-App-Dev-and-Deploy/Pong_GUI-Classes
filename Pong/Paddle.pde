/* Ideas - Abstract
 Paddle as a Pin-Ball-Lookalike in the middle of the table
 Make the paddle smaller with more points
 [Advanced Option] 360 degrees full rotation for the ball/paddles
 [Advanced Option] Curved Paddle, deflects and different angles
 
 Behaviours of Paddles
 - Paddle stays on the screen
 - Paddle will flash for fraction of second when (FOR with delay built in)
 - 
 */

class Paddle {
  //Global Variables
  //
  Paddle () { //General Population
  //Game start, paddles in the middle
  }//End Contructor
  //
  void draw() {
    leftPaddle();
    rightPaddle();
  }//End draw
  //
  void leftPaddle() {
    //Specific Colour - configuration?
    move();
  }//End leftPaddle
  //
  void rightPaddle() {
    //Specific Colour - configuration?
    move();
  }//End rigthPaddle
  //
  void move() {
    //Needs to stop at the top and bottom, else off the screen
  }//End move
  //
  //void momentumAddToBall() {}//End momentumAddToBall
  //- if the paddle is moving, increase the moment of the ball in the direction of the paddle
  //- if the paddle is stationary, increase the x-axis movement only
  //- Easter Egg: super strength ... technique ... OR ... Skill by points (level-up)
  //- ability is controlled in configuration (one or off)
  //
  // Getter
  // - When the Ball Bounces off the Paddle, randomize the color 20 times (1/3 of a second)
  //
  // Setters
  // - Send Paddle Location to Ball Class for Collision and Bounce
  //
}//End Paddle
