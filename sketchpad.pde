PShape shape;
PImage img;
PImage img2;
PImage img3;

void clearScreen(){
  fill(255);
  noStroke();
  rect(0,0,width*3,height*3);
  stroke(1);
}


void shapeMake(){
   fill(random(0,255),random(0,255),random(0,255));
   ellipse(mouseX,mouseY,50,50);
}

void shapeMake2(){
  fill(random(0,255),random(0,255),random(0,255));
  beginShape(TRIANGLES);
  vertex(mouseX,mouseY);
  vertex(mouseX + 50, mouseY - 20);
  vertex(mouseX+50,mouseY +50);
  endShape();
  
}

void star(){
  translate(mouseX,mouseY);
 fill(random(255),random(0,255),random(0,255));
  noStroke();
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CLOSE);
  stroke(1);
}
void shapeMake3(){
  
  rectMode(CENTER);
  fill(random(255),random(255),random(255));
  rect(mouseX,mouseY,20,100);
  ellipse(mouseX,mouseY-30,60,60);
  ellipse(mouseX-19,mouseY-30,16,32);
  ellipse(mouseX+19,mouseY-30,16,32);
  line(mouseX-10,mouseY+50,mouseX-20,mouseY+60);
  line(mouseX+10,mouseY+50,mouseX+20,mouseY+60);
}
void erase(){
  fill(255);
  noStroke();
  ellipse(mouseX,mouseY,60,60);
  stroke(1);
}
void flower(){
  translate(mouseX,mouseY);
  fill(255,255,0);
  for(int x = 0; x < 10; x++){
    ellipse(0,30,20,80);
    rotate(PI/5);
  }
  stroke(1);
  }

void thick1(){
  if(key == '1'){
    strokeWeight(5);
  }
  else
  strokeWeight(1);
}

void thick2(){
  if(key == '2'){
    strokeWeight(10);
  }
  else{
    strokeWeight(1);
  }
}

void thick3(){
  if(key == '3'){
    strokeWeight(15);
  }
  else{
    strokeWeight(1);
  }
}

void thick4(){
  if(key == '4'){
    strokeWeight(20);
  }
  else {
    strokeWeight(1);
  }
}
  
void changeColor1(){
  if(key == 'R'){
    stroke(255,0,0);
  }
   else{
    stroke(0);
  }
}

void changeColor2(){
  if(key == 'G'){
    stroke(0,255,0);
  }
  else{
    stroke(0);
  }
}

void changeCol3(){
  if(key == 'B'){
    stroke(0,0,255);
  }
  else{
    stroke(0);
  }
}

void changeColor4(){
  if(key == 'Y'){
    stroke(255,255,0);
  }
  else
    stroke(0);
}

void colorChange5(){
  if(key == 'O'){
    stroke(255,160,0);
  }
  else{
    stroke(0);
  }
}

void colorChange6(){
  if(key == 'W'){
    stroke(255);
  }
  else{
    stroke(0);
  }
}

void colorChange7(){
  if (key == 'V'){
    stroke(128,0,128);
  }
  else{
    stroke(0);
  }
}

void setup(){
  background(255);
  img = loadImage("115.PNG");
  img2 = loadImage("090.PNG");
  img3 = loadImage("120.PNG");
  size(800,800);
  print("Press 'R' for red, 'r' to undo \n");
  print("Press 'O' for orange, 'o' to undo \n");
  print("Press 'G' for green, 'g' to undo \n");
  print("Press 'B' for blue, 'b' to undo \n");
  print("Press 'V' for violet, 'v' to undo \n");
  print("Press 'Y' for yellow, 'y' to undo \n");
  print("Press 'L' for a star \n");
  print("Press 'Q','E','T' for images \n");

  print("Press 1,2,3, 4 to adjust font size, 0 is default \n");
  print("Use 'Z' to erase \n");
  print("Press SPACE to clear screen \n");


}

void draw(){
 
  if(mousePressed){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  else if(keyPressed){
      if(key == 'Q' || key == 'q'){
        image(img,mouseX-40,mouseY-60,80,120);
      }
      if(key == 'E' || key == 'e'){
        image(img2,mouseX-50,mouseY-70,100,140);
      }
      if(key == 'T' || key == 't'){
        image(img3,mouseX-50,mouseY-70,100,140);
      }
      if(key == 'r' || key == 'R'){
        changeColor1();
      }
      if(key == 'B' || key == 'b'){
        changeCol3();
      }
       if(key == 'G' || key == 'g'){
        changeColor2();
      }
       if(key == 'Y' || key == 'y'){
        changeColor4();
      }
      if(key == 'O' || key == 'o'){
        colorChange5();
      }
      if(key == 'W' || key == 'w'){
        colorChange6();
      }
      if(key == 'V' || key == 'v'){
        colorChange7();
      }
      if(key == '1' || key == '0'){
        thick1();
      }
      if(key == '2'){
        thick2();
      }
      if(key == '3'){
        thick3();
      }
      if(key == '4'){
       thick4();
      }
      if(key == 'Z' || key == 'z'){
        erase();
      }
      if(key == ' '){
        clearScreen();
      }
      if(key == '5'){
        shapeMake();
      }
      if(key == '6'){
        shapeMake2();
      }
      if(key == 'L' || key == 'l'){
       star();
      }
      if(key == '@'){
        shapeMake3();
      }
      if(key == '+'){
        flower();
      }
  }
}
