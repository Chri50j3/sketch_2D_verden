ArrayList<Dyr> DyrListe = new ArrayList<Dyr>();
ArrayList<Plante> PlanteListe = new ArrayList<Plante>();
ArrayList<Terrain> TerrainListe = new ArrayList<Terrain>();

PImage cocaleaf;
PImage weedleaf;

void setup(){
fullScreen();
rectMode(CENTER);
imageMode(CENTER);
noStroke();
weedleaf = loadImage("Weed.png");
cocaleaf = loadImage("Coca.png");
}

void draw(){
  noStroke();
  clear();
  colorMode(RGB);
  fill(189, 131, 70);
  rect(width/2,900,width,500);
  fill(122, 68, 10);
  rect(width/2,300,width,700);
  
  for(Terrain r: TerrainListe){
  r.display();
  }
  
  for(Dyr r: DyrListe){
    r.update();
    r.display();
  }
  for(Plante r: PlanteListe){
    int s = PlanteListe.size();
    r.update();
    r.display();
    
    if(r.dead == true)
      PlanteListe.remove(r);
    
    if(PlanteListe.size() != s)
    break;
  }
  
  for(Dyr r: DyrListe){
    for(Terrain t: TerrainListe){
      if(dist(r.x,r.y+50,t.x,t.y)<50){
        r.speed = r.slow;
      }
      else{r.speed = -r.tempSpeed;}
    }
  }

}

void keyPressed(){
  if(key == '1'){
    DyrListe.add(new Hund());
  }
  if(key == '2'){
    DyrListe.add(new Kat());
  }
  if(key == '3'){
    PlanteListe.add(new Coca());
  }
  if(key == '4'){
    PlanteListe.add(new Weed());
  }
  if(key == '5'){
    TerrainListe.add(new Mud());
  }
  if(key == '6'){
    TerrainListe.add(new HighGuy());
  }
}
