/* Ideas
 */
//
//Text for entire game is here!!!
//ScreenSaver illustrates instructions found here
//
class ScoreBoard { 
  //Global Variables
  //
  //Global Variables for Text Calculator
  PFont titleFont;
  color purpleInk=#2C08FF; //Not nice for Night Mode, Blue Content
  color whiteInk=#FFFFFF, blackInk=#000000;
  //
  ScoreBoard () {
  }//End Constructor
  //
  void draw() {
  }//End draw
  //
  //Entire Text Calculator here
  //Means any additional text to the Canvas origonates here
  void textSetup() {
    titleFont = createFont ("Harrington", 55);
  }//End textSetup
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight) {
    fill(ink); //Ink, hexidecimal copied from Color Selector
    textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
    //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
    textFont(font, height); //Change the number until it fits, largest font size
    //textFont() has option to combine font declaration with textSize()
    //textSize: textWidth(STRING), rectWidth, startingFontSize
    textSize(textCalculator(height, string, rectWidth));
    text(string, rectX, rectY, rectWidth, rectHeight);
    fill(whiteInk); //reset
  }//End textDraw
  //
  float textCalculator(float size, String string, float rectWidth)
  {
    textSize(size); //For textWidth sizing
    while ( textWidth(string) > rectWidth)
    {
      size = size * 0.99; //size-- will do pixels
      textSize(size);
    }//End WHILE;
    size =  size * 0.15; //different fonts and string sizes need extra shrinking
    return size; //Purpose of Calculator
  }//End textCalculator
}//End ScoreBoard
