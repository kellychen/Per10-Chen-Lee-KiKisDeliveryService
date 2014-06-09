public class Thrower {
  int range;
  int timer;
  int xcor, ycor, destxcor, destycor;
  PImage person;
  boolean reached;
  boolean infected;
  boolean control;
  boolean toMove;
  Thrower[] throwarr;

  public Thrower(String s, Thrower[] t) {
    person = loadImage(s);
    this.throwarr = t;
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
    //Just for KiKi
    if (control) {
      if(toMove){
        move();
      }
      if (keyPressed) {
        if (key == 'i' || key == 'I') {
          toMove = false;
        }
      }
    }else{
     if(infected){
      tint(100);
      toMove = false;
     } else if(!infected){
      move(); 
     }
    }
  }

      void move() {
        if (xcor == destxcor && ycor == destycor) {
          reached = true;
        }
        if (reached) {
          destxcor = (int)(1000*Math.random());
          destycor = (int)(600*Math.random());
          reached = false;
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

      int getxcor() {
        return xcor;
      }
      int getycor() {
        return ycor;
      }
      void setInfected(boolean b) {
        infected = b;
      }
      double distance(Thrower t) {
        return Math.sqrt((this.xcor - t.getxcor())^2 + (this.ycor - t.getycor())^2);
      }
      void Infect(Thrower t) {
        //you have to be infected in order to infect others
        if (infected) {
          if (this.distance(t) <= range) {
            t.setInfected(true);
          }
        }
      }
      void throwflour() {
        for (int i = 0; i < throwarr.length; i++) {
          Infect(throwarr[0]);
        }
      }
      void changeControl() {
        control = true;
      }
    }

