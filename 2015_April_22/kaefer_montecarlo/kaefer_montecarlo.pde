ArrayList<Kaefer> liste = new ArrayList<Kaefer>();
PImage map;

void setup() {

  size(800, 800);
  //size(displayWidth, displayHeight);
  //for(int i=0; i<20; i++) liste.add(new OwiKaefer1());
  
  map = loadImage("test2.png");
}

void draw() {

  background(255);
  image(map, 0, 0);
  
  for (Kaefer k : liste) k.draw();
  fill(0);
  text("fps: " + frameRate, 10, 30);
  text("kaefer: " + liste.size(), 10, 50);
}

boolean sketchFullScreen() {
  return true;
}

void mousePressed() {
  
  Kaefer neuerKaefer = new OwiKaefer1();
  neuerKaefer.position.set(mouseX, mouseY);
  liste.add(neuerKaefer);
}

