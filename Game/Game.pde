PFont f;
PImage bg;
String[] introimgs = {"kds.jpg", "kds2.jpg", "kds3.jpg"};
String [] introtxt = {"text1", "text2", "text3"};
int intronum = 0;
boolean g1 = false;
boolean g2 = false;
boolean g3 = false;

setup{
  size(1000, 1000);
  f = createfont("Cambria",20,true);
  bg = loadimage(introimgs[intronum]);
  intro();
}

draw{
  while(g1){
    playG1();
  }
  while(g2){
   playG2(); 
  }
  while(g3){
    playG3();
  }
}

intro{
 //draw beginning story thing 
}

playG1{
  //code for Jiji's jumping quest
}

playG2{
 // code for Kiki's flying game
}

playG3{
 //code for Tombo's game
}

}

void mousePressed{MouseEvent e){
 if(intronum >= introimgs.length){
  intronum = 0;
 }
bg = loadImage*intromgs[intronum]);
intronum ++;
}
