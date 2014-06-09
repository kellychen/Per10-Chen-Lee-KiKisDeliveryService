public class ToG1 {
  PImage bg;
  int bgxcor;
  Jiji1 j;

  void setup() {
    j = new Jiji1();
    j.setup();
    bg = loadImage("road.jpg");
  }

  void draw() {
    //background(150);
    image(bg, bgxcor % 1000, 0);
    textFont(f, 26);        
    textAlign(LEFT);
    noStroke();
    fill(rectfill);
    rect(50, 50, 615, 25);
    rect(50, 90, 615, 25);
    rect(120, 130, 480, 25);
    fill(textfill);
    stroke(0);
    text("Press 'w' to jump, 'a' to move left, and 'd' to move right \nNote: in order to move left or right while jumping, both \n            up and either left or right must be pressed", 55, 70);
    check();
    j.draw();
  }

  void check() {
    if (j.getXcor() == 900) {
      game1 = true;
      togame1 = false;
    }
  }
}

