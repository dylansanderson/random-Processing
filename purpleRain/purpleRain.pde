Drop d;
Drop[] Dropz = new Drop[400];
void setup(){
  size(640,400);
  for(int i =0; i< Dropz.length; i++){
    Dropz[i] = new Drop();
  }
  
}

void draw(){
  background(230,230,250);
  for(int i =0; i< Dropz.length; i++){
    Dropz[i].show();
    Dropz[i].fall();
    Dropz[i].fixSpeed();
  } 
}
