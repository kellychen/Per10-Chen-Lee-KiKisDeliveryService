public class Jiji1 {
  int health, xcor, ycor, yvel, jumpHeight, time;
  boolean up, down;
  PImage jiji;

  /*
  yvel = yvel + 9.8*time
   */

  void setup() {
    jiji = loadImage("jiji.png");
    health = 3;
    ycor = 450;
  }

  void setycor(int ycor) {
    this.ycor = ycor;
  }
  
  int getXcor(){
    return xcor;
  }

  void draw() {
    image(jiji, xcor, ycor);
    jump();
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        if (!up && !down) {
          up = true;
          tempmillis = millis();
        }
      } else if (key == 'a' || key == 'A') {
        moveLeft();
      } else if (key == 'd' || key == 'D') {
        moveRight();
      }
    }
  }

  void jump() {
    if (millis() - tempmillis > 25) {
      if (ycor <= 350) {
      }
      if (ycor < 600 && ycor > 0) {
        if (up && jumpHeight < 160) {
          ycor = ycor - 20;
          jumpHeight = jumpHeight + 20;
        } else if (up && jumpHeight >= 160) {
          up = false;
          down = true;
        } else if (down && jumpHeight > 0) {
          ycor = ycor + 20;        
            jumpHeight = jumpHeight - 20;
        } else if (down && jumpHeight <= 0) {
          down = false;
        }
        tempmillis = millis();
      }
    }
  }

  void moveRight() {
    if (xcor < 950) {
      xcor = xcor + 20;
    } 
  }
  
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 20;
    } 
  }

  void stop() {
    noLoop();
  }
}

