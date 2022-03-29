# Pong_GUI-Classes
Creating a Working Copy of an Object Orientated Pong Game (Visual Objects match class-based objects)

Note: see comments in Pong for ideas and Pseudocode

---

# To Include

Modifiers
- Public, Private, this

This code need updating a little bit.

Algorithms, including sequencing codes

---

Algorithms from Procedural Pong to Include:
- see https://github.com/Advanced-App-Dev-and-Deploy/1972-Vintange-Pong-Features-and-Easter-Eggs
- Screen Size Checker for Landscape, portrait, or square (and user feedback will update automatically if screen is rotated)
  - Testing: use size() instead of fullScreen() to force portrait, and square
  - Note: the original geometry was 5:4 (landscape orientation)
- Difference between daytime and night time game play by limiting blue light
  - User initiated by button
  - OS Time initiated, see Time Date Functions, for example https://processing.org/reference/hour_.html

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
