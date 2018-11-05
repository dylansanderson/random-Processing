class shapes{
  float x = random(0,width);
  float y = random(0,height);
  float xspeed = 1;
  float yspeed = 1;
  float ny;
  float nx;
  float len = 40;
  
  void boundary(){
     line(300,0,300,600);
     line(400,0,400,600);
     line(180,300,300,300);
     line(180,0,180,600);
  }
  
  void remap(){
    
    nx = map(x,0,width,0,300);
    ny = map(y,0,height,0,300);
    ellipse(nx,ny,len,len);
    
  }
  void remap2(){
    nx = map(x,0,width,0,300);
    ny = map(y,0,height,300,600);
    fill(0);
    ellipse(nx,ny,len,len);
    
  }
  void flash(){
    float d = dist(x,y,nx,ny);
    if(d<200){
      fill(255);
      rect(0,0,width,height);
    }

  }
  void show(){
    
    fill(225,255,120);
    rect(x,y,len,len);
    if(x<300){
      nx = map(x,0,width,300,600);
      ny = map(y,0,height, 300,600);
      fill(0,255,0);
      rect(nx,ny,len,len);
    }
  }
  void moveX(){
    x = x + xspeed;
    if(x > 300 & x < 400){
      xspeed = 4;
    }
    if(x+ len >width){
    xspeed = -2;
    }
    if (x<0){
      x = 1;
      xspeed = 1;
    }
  }
  void moveY(){
    y = y + yspeed;
    if(y>height)
    yspeed = -1;
    if(y<0)
    yspeed = 1;
  }
  
}

shapes[] shape = new shapes[10];
void setup(){
  size(600,600);
  for(int i = 0; i < shape.length; i++){
    shape[i] = new shapes();
  }
}


void draw(){
 background(0,100,100);
  for(int i = 0; i < shape.length; i++){
    shape[i].show();
    shape[i].boundary();
    shape[i].moveX();
    shape[i].moveY();
    shape[i].remap();
    shape[i].remap2();
    shape[i].flash();
  }
      
}  
