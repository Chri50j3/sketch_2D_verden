
class Dyr{
  float x,y;
  float speed;
  color farve, farve2, farve3, farve4;
  float h,b,w;
  float sizeScale;

  Dyr(){
    colorMode(HSB);
    x = mouseX;
    y = mouseY;
    if(y < 650){
    y = 650;
    }
  }
  
  void update(){
  x+=speed;
  if(x>width || x<0){speed *= -1;}
  y += random(-2,2);
  
  if(y < 650) 
  y = 650;
  
  if(y > height)
  y = height;
  }
  
  void display(){
    noStroke();
    fill(0,0,0,50);
    ellipse(x-35,y+50,b*2,10);
  }
  
}
