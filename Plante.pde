
class Plante{
  float x,y;
  float h = 10,b = 10;
  float speed;
  color farve;
  float hue = 110,sat = 255,bri = 255;
  boolean kill = false;
  
  Plante(){    
    x = mouseX;
    y = mouseY;
  }
  
  void update(){
    colorMode(HSB);
    bri --;
    farve = color (hue,sat,bri);
    h ++;
    
    y -= 0.5;
    
    if(bri <50){
      kill = true;
    }
  }
  
  void display(){
    fill(farve);
    rect(x,y,b,h);
  }
}
