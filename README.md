# Pong_GUI-Classes
Creating a Working Copy of an Object Orientated Pong Game (Visual Objects match class-based objects)

Note: see comments in Pong for ideas and Pseudocode

Teaching Version with fully included notes: https://github.com/Advanced-App-Dev-and-Deploy/Pong_GUI-Classes-_TeachingVersion

---

# Notes, algorithms, and grading considerations

CATUION: In person lessons will demonstrate how Processing-Driver and Classes can be read

Main Vocabulary: Public, Private, this, static, and final

Algorithms from Procedural Pong to Include:
- see https://github.com/Advanced-App-Dev-and-Deploy/1972-Vintange-Pong-Features-and-Easter-Eggs
- Screen Size Checker for Landscape, portrait, or square (and user feedback will update automatically if screen is rotated)
  - Testing: use size() instead of fullScreen() to force portrait, and square
  - Note: the original geometry was 5:4 (landscape orientation)
- Difference between daytime and night time game play by limiting blue light
  - User initiated by button
  - OS Time initiated, see Time Date Functions, for example https://processing.org/reference/hour_.html
- User Initiated Configuration for Game Play (i.e. easy, medium, and fast play)
  - paddle config demonstrated
  - expected ball speed is configurated
  - also expected that ball speed automatically changes after a measurable time (in "bounces", seconds-minutes, etc.)
- Multiple Play Modes possible with instructions
  - Screen Saver mode possible (for debugging and for fun): paddle.y=ball.y
  - Single Player
  - Two player
- "Text is Difficult to Draw to the Canvas": use text calculator
  - must include the text calculator efficiently for game play
  - Text Calculator is only demonstrated as layered procedures to use parameters for multiple text functions and size calculated based on display geometry

---

## Object Specific notes and algorithms

Pong: What is an Object?
- see https://github.com/Advanced-App-Dev-and-Deploy/Pong_An-Object-Is
- difference between class object, instance, and visual object (the ball on the screen)

Pong: What is a constructor? (Interaction between Driver or Main Program and Class)
- see https://github.com/Advanced-App-Dev-and-Deploy/Pong_Constructor
- Related to "Population" in Procedural Pong
- Concepts to note:
  1. Class Variables can be accessed and rewritten outside the class
  2. Visual Objects are instantiations of a class
  3. Class-type "variables" can be "local" or "global"
  4. Best Practice: Classes encapsulate the "population" in a Constructor and all code related to all class-instantiations
    - Note: the main program's ```void draw ()``` is an empty loop, but the visual object is still "drawn"
    - variables are still populated with display geometry
    - parameters are sent into class, not actual variables

Pong: Classes create instances call objects (not visual objects, although here these are similar)
- instances know their own code and the computer tracks ```this``` variables independently of each other according to encapsulated code
- Instantiated Objects' ```this``` variables can be compared in Driver Program
- Classes are for generally understanding objects
  - For example: a Ball will bounce off the edges of the display
- Updated instance-values are time dependent and individually understood
  - For example: myBall and yourBall instances variables can be compared
  - Algorithm here only compares these values if Ball Instances are colliding

Additional Pong Algorithms
- Introduction of a Static Variable (not final and does not need an object instance to exist)
- Creating new Ball Instances with mouse click (either pressed or released)
- Ball instances will move at different speeds
- Ball Instance will move different speeds depending on display geometry in factors of 1000 pixels
- Ball Instance can start in any part of the screen
- Ball Instance will move in any one of four randomly chosen directions
- Ball Instance will know when it has scored (Boolean Variable) and get stuck by Empty-IF
- Ball and Paddle Instances compare variables for collision encapsulated in Ball Class
  - Ball Class: Setter for instance direction (*-1)
  - Paddle Class: Getter since class-type variables are private to the class
- Paddle Class knows how to move instances based on user interaction (keypressed demonstrated)
- Paddle Class will ```this``` type variable values from user interaction to Ball Class so instances can know when to bounce off the paddle
  - Note: Ball Class will only execute this code if instance is close to paddle (demonstrated nested-IF in single and multi lines forms)
- Scoreboard is part of Paddle class to introduce concepts of abstract classes: scoreboard is rect(), paddle is also rect()
  - Demonstrated Scoreboard Algorithm uses
    - 2 Booleans to control score increase between two classes and associated variables

---
