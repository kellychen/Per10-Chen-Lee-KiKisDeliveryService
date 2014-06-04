public class G2 {
  Kiki k = new Kiki();
  Crow c = new Crow();
  Crow c2 = new Crow();
  Crow c3 = new Crow();
  Crow c4 = new Crow();
  Crow c5 = new Crow();
  PImage bg;
  int bgxcor;
  int crownum;
  boolean win;
  boolean wave1, wave2, wave3, wave4, wave5;
  boolean flashing;

  void setup() {
    size(1000, 600);
    bg = loadImage("skybg.jpg");
    frameRate(70); //anything above 60 should be fine
    crownum = 2;
    k.setup();
    c.setup();
    c2.setup();
    c3.setup();
    c4.setup();
    c5.setup();
    wave1 = true;
  }

  void draw() {
    bgxcor--;
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    k.draw();
    wave1();
    wave2();
    wave3();
    wave4();
    wave5();
    flash(k);
    checkHit(c);
    checkHit(c2);
    checkHit(c3);
    checkHit(c4);
    checkHit(c5);
  }

  void checkHit(Crow c) {
    if (!flashing) {
      if (Math.abs(c.getxcor()- k.getxcor()) < 30 && Math.abs(c.getycor() - k.getycor()) < 30) {
        if (k.getHealth() == 1) {
          k.stop();
        } else {
          k.decHealth();
        }
      }
    }
  }

  void flash(Kiki k) {
    flashing = true;
    //flashing animation
    flashing = false;
  }

  void wave1() {
    if (wave1) {
      c.draw();
    }
  }
  void wave2() {
    if (wave2) {
      c2.draw();
    }
  }
  void wave3() {
    if (wave3) {
      c3.draw();
    }
  }
  void wave4() {
    if (wave4) {
      c4.draw();
    }
  }
  void wave5() {
    if (wave5) {
      c5.draw();
    }
  }  
}
