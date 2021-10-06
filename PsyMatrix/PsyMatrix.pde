import processing.sound.*;

import gifAnimation.*;

/*
*PsyMatrix, an exercise 3 project, is an interactive display that includes a clock.  Here the use of GIFs and sound are utilized to add to the interactivity and artistic sense
*This direction for this exercise was inspired by a Text Adventure story I hold with a friend.
*
*
*/


Gif theMesa;

public void setup() {
  size(870, 388, P2D);
  
  theMesa = new Gif(this, "themesa.gif");
  theMesa.loop();

}

void draw() {
  background(theMesa);

  
}
