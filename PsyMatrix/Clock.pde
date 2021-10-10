class Clock {
 PVector position;
float rotSeconds = 0;
float rotMinutes = 0;
float rotHours = 0;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;

float faceSize = 250;
float lengthSecondHand = 110;
float lengthMinuteHand = 100;
float lengthHourHand = 75;

color outlineCol = color(180, 255, 251);
color secondCol = color(255, 77, 205);
color faceCol = color(46, 255, 250);

Clock(float x, float y) {
  position = new PVector(x, y);



}

void draw() {
  int s = second();
  int m = minute();
  int h = hour();
  
  if (s != lastSecond) {
    rotSeconds = ((float) s / 60) * TWO_PI;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rotMinutes = ((float) m / 60) * TWO_PI; 
    lastMinute = m;
  }
  
  if (h != lastHour) {
    rotHours = ((float) h / 12) * TWO_PI;  
    println(h);
    lastHour = h;
  }
  
  fill(faceCol);
  stroke(outlineCol);
  ellipse(position.x, position.y, faceSize, faceSize);
  
  stroke(0, 127, 255, 44);
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    pushMatrix();
    translate(position.x, position.y);
    rotate(rot);
    ellipse(0, faceSize/5, 0, faceSize/2);
    popMatrix();
  }
  
  pushMatrix();
  translate(position.x, position.y);
  rotate(rotSeconds);
  fill(secondCol);
  stroke(secondCol);
  strokeWeight(6);
  line(0, 0, 0, -lengthSecondHand);

  popMatrix();
  
  pushMatrix();
  translate(position.x, position.y);
  rotate(rotMinutes);
  fill(0);
  stroke(outlineCol);
  line(0, 0, 0, -lengthMinuteHand);
  popMatrix();
  
  pushMatrix();
  translate(position.x, position.y);
  rotate(rotHours);
  line(0, 0, 0, -lengthHourHand);
 
  popMatrix();
  
  fill(faceCol);
  ellipse(position.x, position.y, 10, 10);
}

void run() {
  draw();
}

}
