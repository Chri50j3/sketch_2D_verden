
class Hund extends Dyr{

  Hund (){
    
    farve = color(random(25,30),random(0,255),random(0,255));
    farve2 = color(random(25, 30), random(0, 255), random(50, 255));
    speed = 3;
    b = random(40, 60);
    h = random(20, 40);
    w = random(7, 10);
    h = random(15, 30);
  }
  
  void display(){
    super.display();
    //rect(x,y,50,50);
    //rect(x+25,y-25,30,30);
    //fill(farve + color (0,10,0));
    //ellipse(x+35,y-20,20,15);
    noStroke();
    
    //Head 
    fill(farve);
    rect(x, y, 35, 25, 5);
    ellipse(x + 15, y, 20, 24);

    //Body
    rect(x - 40, y + 20, b, h, 5);
    ellipse(x - 20, y + 20, h, 35);
  
    //Tail
    push();
    translate(x-60, y+10);
    rotate(sin(random(0, PI))-45);
    ellipse(0, 0, random(5,8), random(30, 50));
    pop();
  
    //Legs
    rect(x - 60, y + 35, w, h, 5);
    rect(x - 55, y + 35, w, h, 5);
    rect(x - 25, y + 35, w, h, 5);
    rect(x - 20, y + 35, w, h, 5);
  
    //Ear
    colorMode(HSB);
    triangle(x - 17, y - 5, x - 5, y - 25, x + 5, y - 10);
    fill(300, 50, 250);
    triangle(x - 10, y - 12, x - 5, y - 18, x, y - 12);
    
    //Paws
    fill(farve2);
    ellipse(x - 55, y + h + 25, w , h / 2.5);
    ellipse(x - 50, y + h + 25, w , h / 2.5);
    ellipse(x - 20, y + h + 25, w , h / 2.5);
    ellipse(x - 15, y + h + 25, w , h / 2.5);
  
    //Eye
    fill(255);
    ellipse(x - 3, y - 6, 8, 5);
    fill(10);
    ellipse(x - 3, y -6, 4, 4);
  
    //Nose
    ellipse(x + 25, y, 5, 7);
  
    //Mouth
    stroke(5);
    line(x + 15, y + 10, x + 5, y+8);
  }
  
}
