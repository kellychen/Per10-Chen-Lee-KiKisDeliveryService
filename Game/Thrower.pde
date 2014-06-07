public class Thrower {
  int range;
  int xcor, ycor, destxcor, destycor;
  int timer;
  PImage person;
  boolean reached;

  public Thrower(PImage p) {
    person = p;
  }

  void setup() {
    xcor = (int)(1000*Math.random());
    ycor = (int)(600*Math.random());
    destxcor = (int)(1000*Math.random());
    destycor = (int)(600*Math.random());
    image(person, xcor, ycor);
  }

  void draw() {
    image(person, xcor, ycor);
    move();
  }

  void move() {
    if(xcor == destxcor && ycor = destycor){
     reached = true; 
    }
    if (reached) {
      destxcor = (int)(1000*Math.random());
      destycor = (int)(600*Math.random());
    } else {
      if (Math.abs(xcor - destxcor) != 0) {
        if (xcor < destxcor) {
          xcor++;
        } else {
          xcor--;
        }
      }
      if (Math.abs(ycor - destycor) != 0) {
        if (ycor < destycor) {
          ycor++;
        } else {
          ycor-- ;
        }
      }
    }
  }
}

