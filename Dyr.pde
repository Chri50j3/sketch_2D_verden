
class Dyr{
  float x,y;
  float speed;
  color farve;

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
  
  if(y < 650)//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm ms super sex sex sex sex sex sex sex sex sex sex sex sex  sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex sex  
  y = 650;
  
  if(y > height)
  y = height;
  }
  
  void display(){
    fill(farve);
    
  }
  
}
