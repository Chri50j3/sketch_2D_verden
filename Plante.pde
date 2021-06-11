
class Plante{
  ArrayList<Blad> blade = new ArrayList<Blad>();
  
  float x,y;
  float h = 10,b = 10;
  float speed = 1, tempSpeed;
  color farve;
  float hue = 110,sat = 255,bri = 255;
  boolean kill = false, dead = false;
  float gulv = 650;
  PImage blad;
  float bladSize;
  
  Plante(){    
    x = mouseX;
    y = mouseY;
    

  }
  
  void lavBlade(){
    for(int i = 0; i < 10;i++){
      blade.add(new Blad(x+random(-b/2,b/2),y+random(-h/2,h/2),blad,random(0,100)));
    }
  }
  
  void update(){
    if(kill == false){
    colorMode(HSB);
    bri --;
    farve = color (hue,sat,bri);
    }
    h += speed;
    b += speed*0.1;
    y -= speed*0.5;
    gulv -= speed*0.5;
    if(y < gulv) 
    y = gulv;

    if(bri <50){
      kill = true;
    }
    
    if(kill == true){
    colorMode(HSB);
    bri ++;
    sat --;
    farve = color (hue,sat,bri);
    speed = tempSpeed;
    }
   
   if(h <0){
      dead = true;
    }  
  }
  void display(){
    noStroke();
    fill(farve);
    rect(x,y,b,h);
    bladSize = h/3;
    for(Blad r: blade){
      r.display();
      //r.y -= speed;
      r.y = y+(h*(r.bredde/100))-h/2; 
    }
  }
}
