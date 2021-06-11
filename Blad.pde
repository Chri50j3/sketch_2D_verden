
class Blad{
  float x,y;
  float bladSize = 20;
  float bredde;
  PImage billed;
  
  Blad(float x_, float y_, PImage billed_, float bredde_){
  x = x_;
  y = y_;
  billed = billed_;
  bredde = bredde_;
  
  }
  
  void display(){
  image(billed,x,y,bladSize,bladSize);
  }

}
