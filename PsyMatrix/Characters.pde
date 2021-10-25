

PImage nevaehNotif, nevaehChat;



boolean nevaehTurnsVisible = false;
int  nevaehVisibleTime = 25000;
int nevaehStopNotifTime = 25100;
boolean nevaehIsClicked = false;
boolean nevaehNotifVisible = false;
boolean nevaehChatVisible = false;

PImage dartNotif, dartChat;

boolean dartTurnsVisible = false;
int  dartVisibleTime = 30000;
int dartStopNotifTime = 30100;
boolean dartIsClicked = false;
boolean dartNotifVisible = false;
boolean dartChatVisible = false;

PImage marcusNotif, marcusChat;

boolean marcusTurnsVisible = false;
int  marcusVisibleTime = 35000;
int marcusStopNotifTime = 35100;
boolean marcusIsClicked = false;
boolean marcusNotifVisible = false;
boolean marcusChatVisible = false;

PImage jackNotif, jackChat;

boolean jackTurnsVisible = false;
int  jackVisibleTime = 40000;
int jackStopNotifTime = 40100;
boolean jackIsClicked = false;
boolean jackNotifVisible = false;
boolean jackChatVisible = false;


class Characters {
  Characters() {
    nevaehNotif = loadImage("nevaehNotif.png");
    nevaehChat = loadImage("nevaehChat.png");
    dartNotif = loadImage("dartNotif.png");
    dartChat = loadImage("dartChat.png");
    marcusNotif = loadImage("marcusNotif.png");
    marcusChat = loadImage("marcusChat.png");
    jackNotif = loadImage("jackNotif.png");
    jackChat = loadImage("jackChat.png");
  }

  void update() { //this is for measuring time and interactions, sets the booleans.  the t timer waits on the time being calculated.  Upon reaching a set time, each notif will be set from false to true

    int t = millis();
    if (t >= nevaehVisibleTime) { 

      nevaehNotifVisible = true;
    }

    if (t >= dartVisibleTime) { 

      dartNotifVisible = true;
    }
    if (t >= marcusVisibleTime) { 

      marcusNotifVisible = true;
    }

    if (t >= jackVisibleTime) { 

      jackNotifVisible = true;
    }
  }

  void draw() { //this responds to the boolean results, essentially when the timer for a notification has reached its goal, the message will generate and appear alongside a sound effect
    int t = millis();
    if (t >= nevaehVisibleTime) {
      notifPop.play();
    } 
    if (t >= nevaehStopNotifTime) {
      notifPop.stop();
    }
    if (t >= dartVisibleTime) {
      notifPop.play();
    } 
    if (t >= dartStopNotifTime) {
      notifPop.stop();
    }

    if (t >= marcusVisibleTime) {
      notifPop.play();
    } 
    if (t >= marcusStopNotifTime) {
      notifPop.stop();
    }

    if (t >= jackVisibleTime) {
      notifPop.play();
    } 
    if (t >= jackStopNotifTime) {
      notifPop.stop();
    }
    if (nevaehNotifVisible) {

      imageMode(CENTER);
      image(nevaehNotif, 435, 200);
    }

    if (dartNotifVisible) {

      imageMode(CENTER);
      image(dartNotif, 435, 200 );
    }
    if (marcusNotifVisible) {

      imageMode(CENTER);
      image(marcusNotif, 435, 200);
    }
    if (jackNotifVisible) {

      imageMode(CENTER);
      image(jackNotif, 435, 200);
    }
  }

  void run() {

    update();
    draw();
  }
}
