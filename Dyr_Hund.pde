
class Hund extends Dyr{

  Hund (){
    
    farve = color(random(25,30),random(0,255),random(0,255));
    speed = 5;
  }
  
  void display(){
    super.display();
    rect(x,y,50,50);
    rect(x+25,y-25,30,30);
    fill(farve + color (0,10,0));
    ellipse(x+35,y-20,20,15);
  }
  
}
