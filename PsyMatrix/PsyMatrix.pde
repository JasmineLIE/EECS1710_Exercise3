import processing.sound.*;

import gifAnimation.*;

/*
*PsyMatrix, an exercise 3 project, is an interactive display that includes a clock.  Here the use of GIFs and sound are utilized to add to the interactivity and artistic sense
*This direction for this exercise was inspired by a Text Adventure story I hold with a friend.
* Counting the time passing, four chat notifications will pop up on the left side of the interface, right under DreamIt.  
*Each has a 2.5 second interval between appearing.  The notifications are clickable and will bring up a chat screen that can be exited out of.
*/

Clock c1;
Characters cc1;

Gif theMesa;
SoundFile bgMusic;
SoundFile interactionClick, notifPop;
PImage mainScreen, cursor;

public void setup() {
  size(870, 388, P2D);
   c1 = new Clock(590, 199); 
   cc1 = new Characters();
  theMesa = new Gif(this, "themesa.gif");
  theMesa.loop();
  bgMusic = new SoundFile(this, "Synth.mp3");
  notifPop = new SoundFile(this, "Interact.mp3");
  bgMusic.loop();
  
  mainScreen = loadImage("mainScreen.png");
  cursor = loadImage("cursor.png");
  
  noCursor();
}

void draw() {
  background(theMesa);
  int t = millis();
 
  
     imageMode(CENTER);
  image(mainScreen, 435, 194);
    imageMode(CENTER);
 c1.run();
cc1.run();






   image(cursor, mouseX, mouseY);
}
