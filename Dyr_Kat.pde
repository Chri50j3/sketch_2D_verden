
class Kat extends Dyr{

  Kat (){
     
    farve = color(random(0,255),random(0,55),random(0,255));
    speed = 10;
     
  }
  
  void display(){
    super.display();
    ellipse(x,y,50,30);
    ellipse(x+20,y-20,30,30);
    fill(farve + color (0,10,0));
    ellipse(x+25,y-13,20,15);
  
  }

}
