public class ToG3 {
  PFont f;
  PImage bg;

  void setup() {
    bg = loadImage("tog3.jpg"); 
    f = createFont("Cambria", 20, true);
  }

  void draw() {
    textFont(f, 26);        
    textAlign(LEFT);
    text("Whew that was a close call, \n but you escaped the crows! \n Congratulations on your delivery and enjoy this bonus game!", 200, 100);
  }

}

