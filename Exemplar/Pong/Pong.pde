/*To Do List
 Ball Collisions
 Pseudocode other class
 See Starting Instructions
 Configuring the Game - setting initial variables (i.e. paddle speed)
 Screen Saver Pong or 1-Player Pong: paddle.y=ball.y
 
 Main Program Knows to 
 - Create Objects
 - Create Single Ball Instances based on Geometry
 */

// Global Variables & Objects
Ball myBall, yourBall; 
ScoreBoard scoreBoard = new ScoreBoard();
//
void setup()
{
  size(700, 500); //fullScreen(); displayWidth, displayHeight
  //ScreenSizeChecker() for Landscape, Portrait, square views (updated automatically for screen rotate)
  //
  //Constructor
  myBall = new Ball( width*1/10, height*1/3, width*1/25, color(31, 255, 3), width/width, height/height ); //Line can be anywhere
  yourBall = new Ball( width*9/10, height*1/3, width*1/25, color( random( 0, 255), random(255), random(255) ), width/width, height/height );
  //
  scoreBoard.textSetup(); //For all text
  //exit(); //Exit Button, TBA
}//End setup()
//Object is garbage collected here
//
void draw()
{
  //Pregame Code
  //startingInstructions();
  //
  //Game Code
  myBall.draw();
  yourBall.draw(); //Notice Bug
  //
  //myBall.detectCollision(Paddle.x); // Example: Classes Talking
  //
  ballCollisions(); //Student Problem
}//End draw()
//
void keyPressed() {
  //Press W-S-D for Left Paddle
  //Press UP-DOWN-LEFT Arroes for Right Paddle
}//End keyPressed()
//
void mousePressed() {
}//End mousePressed()
//
//
/* What to look at in Procedural
 Done
 - Text Calcualtor, see Scoreboard
 */
