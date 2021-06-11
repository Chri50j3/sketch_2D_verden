
class Blad{
  float x,y;
  float bladSize = 20;
  PImage billed;
  
  Blad(float x_, float y_, PImage billed_){
  x = x_;
  y = y_;
  billed = billed_;
  
  }
  
  void display(){
  image(billed,x,y,bladSize,bladSize);
  }

}
