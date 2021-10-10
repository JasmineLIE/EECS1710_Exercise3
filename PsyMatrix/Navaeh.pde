

PImage nevaehNotif, nevaehChat;



boolean nevaehTurnsVisible = false;
int  nevaehVisibleTime = 25000;
int nevaehStopNotifTime = 25100;
boolean nevaehIsClicked = false;
boolean nevaehNotifVisible = false;
boolean nevaehChatVisible = false;


class Nevaeh {
Nevaeh() {
 nevaehNotif = loadImage("nevaehNotif.png");
 nevaehChat = loadImage("nevaehChat.png");
 
}
  
  void update() { //this is for measuring time and interactions, sets the booleans
       
     int t = millis();
    if (t >= nevaehVisibleTime) { 

     nevaehNotifVisible = true;
    }
    

  
  }
  
  void draw() { //this responds to the boolean results
   int t = millis();
  if (t >= nevaehVisibleTime) {
    notifPop.play();
  } 
  if (t >= nevaehStopNotifTime) {
    notifPop.stop();
  }
  
 
    if (nevaehNotifVisible) {
    
           imageMode(CENTER);
       image(nevaehNotif, 435, 200);
       
       
    }
    
  }
  void run() {
 update();   
 draw();
    
  
}
}
