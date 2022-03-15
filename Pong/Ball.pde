class Ball
{
  //Global Variables
  float x, y, diameter;
  color colour;
  int xSpeed, ySpeed;
  //
  Ball (float xParameter, float yParameter, float diameterParameter, color colourParameter, int xSpeedParameter, int ySpeedParameter) { //Constructor Is ... hard coded, single visual object
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
    colour = colourParameter; //Hexidecimal: #1FFF03, Night Mode Friendly
    xSpeed = xSpeedParameter;
    ySpeed = ySpeedParameter;
  }//End Constructor
  //
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    //
    move();
    bounce();
  }//End draw
  //
  void move() {
    x += xSpeed;
    y += ySpeed;
  }//End move
  //
  void bounce() {//not the bounce off the paddles
    if ( x-diameter*1/2 < width*0 || x+diameter*1/2 > width ) xSpeed *= -1; //Net Bounce, will change
    if ( y-diameter*1/2 < height*0 || y+diameter*1/2 > height ) ySpeed *= -1; //Top and Bottom
  }//End bounce
}//End Ball
