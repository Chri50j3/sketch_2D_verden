ArrayList<Dyr> DyrListe = new ArrayList<Dyr>();
ArrayList<Plante> PlanteListe = new ArrayList<Plante>();
ArrayList<Terrain> TerrainListe = new ArrayList<Terrain>();

void setup(){
fullScreen();
rectMode(CENTER);
}

void draw(){
  clear();
  colorMode(RGB);
  fill(189, 131, 70);
  rect(width/2,900,width,500);
  fill(122, 68, 10);
  rect(width/2,300,width,700);
  
  for(Dyr r: DyrListe){
    r.update();
    r.display();
  }
  for(Plante r: PlanteListe){
    int s = PlanteListe.size();
    r.update();
    r.display();
    
    if(r.kill == true)
    PlanteListe.remove(r);
    
    if(PlanteListe.size() != s)
    break;
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
    PlanteListe.add(new Plante());
  }
}
