
class Kat extends Dyr{
  float a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12;

  Kat (){
 
    farve = color(random(15, 35), random(0, 255), random(50, 255));
    farve2 = color(random(25, 30), random(0, 255), random(50, 255));
    farve3 = color(random(10, 45), random(0, 255), random(50, 200));
    farve4 = color (30, 50, random(50, 200));
    b = random(30, 60);
    w = random(5, 10);
    h = random(10, 30);
    sizeScale = random(0.8, 0.9);
    speed = 7;
    tempSpeed = -speed;
    slow = speed/3;
    
    a1 = random(20,50);
    a2 = random(10,30);
    a3 = random(0.5, 2);
    a4 = random(0.5, 1);
    a5 = random(20,50);
    a6 = random(10,30);
    a7 = random(0.5, 2);
    a8 = random(0.5, 1);
    a9 = random(20,50);
    a10 = random(10,30);
    a11 = random(0.5, 2);
    a12 = random(0.5, 1);
    
     
  }
  
  void display(){
    super.display();
    noStroke();

  
    //Head 
    fill(farve);
    rect(x - 5, y, 25, 25, 7);
    ellipse(x + 5, y, 20, 24);

    //Body
    rect(x - 40, y + 20, b * sizeScale, (h + b / 4) * sizeScale, 5);
    ellipse(x - 20, y + 20, h, 35);
  
    //Tail
    push();
    translate(x - 60, y + 10);
    rotate(sin(random(0, PI))- 30);
    ellipse(0, 0, random(5,8), random(30, 60));
    pop();
  
    //Legs
    rect(x - 55, y + 35, w, h, 5);
    rect(x - 50, y + 35, w, h, 5);
    rect(x - 20, y + 35, w, h, 5);
    rect(x - 15, y + 35, w, h, 5);
  
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
    fill(farve4);
    ellipse(x + 15, y, 5, 7);
  
    //Details
    fill(farve3);
    ellipse(x - a1, y + a2, w * a3, h * a4);
    ellipse(x - a5, y + a6, w * a7, h * a8);
    ellipse(x - a9, y + a10, w * a11, h * a12);
    
    //Mouth
    stroke(5);
    line(x + 5, y + 10, x + 10, y + 8);
    stroke(250);
    line(x + 10, y, x, y + 10);
    line(x + 10, y + 1, x - 1, y + 5);
    line(x + 10, y - 1, x + 1, y + 2);
}
  
  }
