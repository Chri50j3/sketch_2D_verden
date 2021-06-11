
class Mud extends Terrain{
  
  Mud(){
    colorMode(HSB);
    farve = color (random(25,35),random(50,200),random(50,100));
  }
  
  void display(){
    fill(farve);
    ellipse(x,y,100,50);
  }

}
