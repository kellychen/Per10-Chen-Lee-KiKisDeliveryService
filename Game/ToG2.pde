public class ToG2 {
  PFont f;
  PImage bg, go;
  int bgxcor;
  Kiki k;
  boolean one;
  

  void setup() {
    k = new Kiki();
    k.setup();
    bg = loadImage("toG2.jpg");
    go = loadImage("cagejiji.png");
    f = createFont("Cambria", 20, true);
    one = true;
  }

  void draw() {
    if (one){
      draw1();
    }
    else{
      draw2();
    }
  }
  
  void draw1(){
    image(loadImage("osono.jpg"),0,0);
    noStroke();
    fill(rectfill);
    rect(60,480,630,25);
    fill(textfill);
    text("Fabulous! Now Kiki, can you deliver this for me please?",70,500);
  }
  
  void draw2(){
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    image(go, 900, 20);
    check();
    k.draw();
    noStroke();
    fill(rectfill);
    rect(55,480,885,25);
    rect(280,520,450,25);
    fill(textfill);
    textFont(f, 26);        
    textAlign(CENTER);
    text("Use WASD keys to fly and avoid the crows. You have 3 lives so use them wisely! \n Fly to the cage in the top right to begin!", 500, 500);
  }

  void check() {
    if (Math.abs(k.getxcor() - 900) < 10 && Math.abs(k.getycor() - 20) < 10) {
      game2 = true;
      togame2 = false;
    }
  }
  
  void setFalse(){
    one = false;
  }
}

