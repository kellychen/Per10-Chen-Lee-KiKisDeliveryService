PFont f;
PImage bg;
String[] introimgs = {"Kiki_flying.jpg", "kds2.jpg", "kds3.jpg"};
String [] introtxt = {"Once upon a time, there was a young witch named Kiki.\nSince she has turned 13 this year, as per tradition, she must live \naway from home for a year to develop her witch skills. ",
                      "Upon settling in her new town, Kiki meets a nice baker named \nOsono who agrees to let Kiki stay with her on the condition that \nshe helps around the bakery and allows her to make her own \nmoney by making deliveries.", 
                      "text3"};
int intronum = 0;
boolean drawintro;
boolean g1 = false;
boolean g2 = false;
boolean g3 = false;

int rectfill;
int textfill;

void setup(){
  size(1000, 600);
  f = createFont("Cambria",20,true);
  bg = loadImage(introimgs[intronum]);
  frameRate(70); //anything above 60 should be fine
  drawintro = true;
  rectfill = 160;
  textfill = 25;
}

void draw(){
  background(0);
  //while(drawintro){
  if(drawintro){
    intro();
  }
  //}
  else if(g1){
    playG1();
  }
  else if(g2){
   playG2(); 
  }
  else if(g3){
    playG3();
  }
}

void intro(){
  //background(0);
  bg = loadImage(introimgs[intronum]);
  image(bg,0,0);
  textFont(f,26);        
  textAlign(LEFT);
  //stroke(0);
  //strokeWeight(5);
  fill(rectfill);
  noStroke();
  if(intronum == 0){
    rect(95,430,620,25);
    rect(95,470,710,25);
    rect(95,510,608,25);
  }
  if(intronum == 1){
    rect(95,430,695,25);
    rect(95,470,715,25);
    rect(95,510,685,25);
    rect(95,550,325,25);
  }  
  fill(textfill);
  stroke(0);
  text(introtxt[intronum],100,450);
 //draw beginning story thing 
}

void playG1(){
  //code for Jiji's jumping quest

}

void playG2(){
 // code for Kiki's flying game

}

void playG3(){
 //code for Tombo's game

}



void mousePressed(MouseEvent e){
  int fade = 5;
  int tempmillis = millis();
  while(fade > 0){
    rectfill = rectfill + 50;
    textfill = textfill + 50;
    if(millis() - tempmillis > 500){
      fade--;
      tempmillis = millis();
    }
  }
  intronum++;
  rectfill = 160;
  textfill = 25;
  if(intronum >= introimgs.length){
    intronum = 0;
    drawintro = false;
   }
}
/* Key Press stuff for jumping of flying put within draw() method
if(keyPressed){
 if(key == 'w' ++ key = 'W'){
  //move up
 } else if(key == 'a' || key == 'A'){
  //move left
 } else if(key == 's' || key == 'S'){
   //move down
 } else if(key == 'd' || key == 'D'){
  //move right 
 }
 //we could probably use WASD for flying and arrow keys for jumping or something if we ever need to do them at the same time
}
*/
