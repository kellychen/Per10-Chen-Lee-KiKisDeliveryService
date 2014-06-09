public class G3 {
  PImage bg;
  Thrower t, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16;
  Thrower[] throwarr = {
    t, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16
  };

  void setup() {
    bg = loadImage("floor.jpg");
    t = new Thrower("howl.png", throwarr);
    t.setup();
    t2 = new Thrower("sophie.png", throwarr);
    t2.setup();
    t3 = new Thrower("fuzz.png", throwarr);
    t3.setup();
    t4 = new Thrower("haku.png", throwarr);
    t4.setup();
    t5 = new Thrower("chihiro.png", throwarr);
    t5.setup();
    t6 = new Thrower("muska.png", throwarr);
    t6.setup();
    t7 = new Thrower("smalltotoro.png", throwarr);
    t7.setup();
    t8 = new Thrower("bigtotoro.png", throwarr);
    t8.setup();
    t9 = new Thrower("sheeta.png", throwarr);
    t9.setup();
    t10 = new Thrower("monoke.png", throwarr);
    t10.setup();
    t11 = new Thrower("ponyo.png", throwarr);
    t11.setup();
    t12 = new Thrower("fire.png", throwarr);
    t12.setup();
    t13 = new Thrower("noface.png", throwarr);
    t13.setup();
    t14 = new Thrower("tkiki.png", throwarr);
    t14.setup();
    t14.changeControl();
    t15 = new Thrower("tjiji.png", throwarr);
    t15.setup();
    t16 = new Thrower("totoro.png", throwarr);
    t16.setup();
  }

  void draw() {
    t.draw();
    t2.draw();
    t3.draw();
    t4.draw();
    t5.draw();
    t6.draw();
    t7.draw();
    t8.draw();
    t9.draw();
    t10.draw();
    t11.draw();
    t12.draw();
    t13.draw();
    t14.draw();
    t15.draw();
    t16.draw();
  }
}

