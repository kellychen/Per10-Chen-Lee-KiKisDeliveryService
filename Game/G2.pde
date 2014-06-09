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
  int wavecount;
  boolean win;
  boolean wave1, wave2, wave3, wave4, wave5;
  boolean flashing, retry;
  int check;

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
    if (retry) {
      noStroke();
      fill(rectfill);
      rect(165, 255, 375, 25);
      fill(textfill);
      text("Press 'y' to play again, 'n' to skip", 350, 275);
      if (keyPressed) {
        if (key == 'y' || key == 'Y') {
          retry2 = true;
        } else if (key == 'n' || key == 'N') {
          game2 = false;
          togame3 = true;
        }
      }
    } else {
      wavecount++;
      bgxcor--;
      image(bg, bgxcor % 1000, 0);
      image(bg, 1000+(bgxcor % 1000), 0);
      if (!flashing) {
        k.draw();
      }
      wave1();
      wave2();
      wave3();
      wave4();
      wave5();
      flash();
      if (check % 3 == 0) {
        checkHit(c);
        checkHit(c2);
        checkHit(c3);
        checkHit(c4);
        checkHit(c5);
      }
      check++;
      System.out.println(k.getHealth());
    }
  }

  void checkHit(Crow c) {
    if (!flashing) {
      if (Math.abs(c.getxcor()- k.getxcor()) < 30 && Math.abs(c.getycor() - k.getycor()) < 30) {
        if (k.getHealth() == 1) {
          k.stop();
        } else {
          k.decHealth();
        }
        flashing  = true;
        check = 1;
      }
    }
  }

  void flash() {
    if (check % 24 == 0) {
      flashing = false;
    }
  }

  void wave1() {
    if (wave1) {
      c.draw();
      if (wavecount >= 800) {
        wave2 = true;
      }
    }
  }
  void wave2() {
    if (wave2) {
      c2.draw();
      if (wavecount >= 1400) {
        wave3 = true;
      }
    }
  }
  void wave3() {
    if (wave3) {
      c3.draw();
      if (wavecount >= 2100) {
        wave4 = true;
      }
    }
  }
  void wave4() {
    if (wave4) {
      c4.draw();
      if (wavecount >= 2800) {
        wave5 = true;
      }
    }
  }
  void wave5() {
    if (wave5) {
      c5.draw();
    }
  }

  void changeRetry() {
    retry = true;
  }
}

