import processing.sound.*;

import gifAnimation.*;

/*
*PsyMatrix, an exercise 3 project, is an interactive display that includes a clock.  Here the use of GIFs and sound are utilized to add to the interactivity and artistic sense
*This direction for this exercise was inspired by a Text Adventure story I hold with a friend.
* Counting the time passing, four chat notifications will pop up on the left side of the interface, right under DreamIt.  
*Each has a 5 second interval before appearing after the previous.  The notifications can open chat menus by pressing the assigned numbered keys 1-4.  If the notification has NOT appeared yet, the chat menu won't open
*Background Music: https://www.youtube.com/watch?v=K3QfcHbrDJ8
*Sound Effects in declaration order: https://freesound.org/people/InspectorJ/sounds/403019/,  https://freesound.org/people/BenjaminNelan/sounds/321082/,  https://freesound.org/people/ZoviPoland/sounds/517717/
*All artwork sans the GIF background is illustrated by me
*GIF background: https://i.imgur.com/dU18gto.gif
*/

Clock c1;
Characters cc1;

Gif theMesa;
SoundFile bgMusic;
SoundFile interactionClick, notifPop, chatClose;
PImage mainScreen, cursor;

public void setup() {
  size(870, 388, P2D);
   c1 = new Clock(590, 199); 
   cc1 = new Characters();
  theMesa = new Gif(this, "themesa.gif");
  theMesa.loop();
  bgMusic = new SoundFile(this, "Synth.mp3");
  notifPop = new SoundFile(this, "Interact.mp3");
  interactionClick = new SoundFile(this, "Blerp.mp3");
  chatClose = new SoundFile(this, "Boop.mp3");
  bgMusic.loop();
  
  mainScreen = loadImage("mainScreen.png");
  cursor = loadImage("cursor.png");
  
  noCursor();
}

void draw() {
  background(theMesa);
  int t = millis(); //counts time passing in milliseconds; 1000 milliseconds = 1 second
 
  
     imageMode(CENTER);
  image(mainScreen, 435, 194);
    imageMode(CENTER); //sets up the mock interface

 c1.run(); //runs the clock class
cc1.run(); //runs the character class



//depending on what numbered key is pressed, different message pages will appear; these messages can switch between one another by clicking different numbered keys but will ultimately be closed upon the 'x' key being pressed
   
   
    if (nevaehIsClicked) { //if the '1' key was clicked, Nevaeh's message page will appear
     imageMode(CENTER);
     image(nevaehChat, 435, 194);
   
     
   } else if (dartIsClicked) { //if the '2' key was clicked, D'Artagnan's message page will appear
   
     
      imageMode(CENTER);
     image(dartChat, 435, 194);
     
      

   }else if (marcusIsClicked) { //if the '3' key was clicked, Marcus' message page will appear 
     
   
      
      imageMode(CENTER);
     image(marcusChat, 435, 194);
   
   
   }else if (jackIsClicked) { //if the '4' key was clicked, Jack's message page will appear
  
     
     imageMode(CENTER);
     image(jackChat, 435, 194);

   } else { //if the 'x' key was clicked or no numbered keys were click, the interface will be displayed
     imageMode(CENTER);
  image(mainScreen, 435, 194);
    imageMode(CENTER);
      c1.run();
cc1.run();

   }
   
   image(cursor, mouseX, mouseY); //the cursor image is set

   }



   void keyPressed() { //here sets the boolean variables upon a numbered key being clicked.  However, it cannot be assigned until the message notification appears first, so it must wait
     
      if (key == '1' && nevaehNotifVisible == true) {//if the '1' key is pressed and Nevaeh's notification banner is visible, set to true
        nevaehIsClicked = true;
        dartIsClicked = false;
        marcusIsClicked = false;
        jackIsClicked = false;
        interactionClick.play();
     
   } else if (key == '2' && dartNotifVisible == true) {//if the '2' key is pressed and D'Artagnan's notification banner is visible, set to true
     nevaehIsClicked = false;
        dartIsClicked = true;
        marcusIsClicked = false;
        jackIsClicked = false;
         interactionClick.play();
   }else if (key == '3' && marcusNotifVisible == true) {//if the '3' key is pressed and Marcus' notification banner is visible, set to true
     nevaehIsClicked = false;
        dartIsClicked = false;
        marcusIsClicked = true;
        jackIsClicked = false;
         interactionClick.play();
   }else if (key == '4' && jackNotifVisible == true) {//if the '4' key is pressed and Jack's notification banner is visible, set to true
     nevaehIsClicked = false;
        dartIsClicked = false;
        marcusIsClicked = false;
        jackIsClicked = true;
         interactionClick.play();
   }else if (key == 'x') {//if the 'x' key is pressed, set everything to false
     nevaehIsClicked = false;
        dartIsClicked = false;
        marcusIsClicked = false;
        jackIsClicked = false;
        chatClose.play();
        
        
 
        
   }
  
   }
