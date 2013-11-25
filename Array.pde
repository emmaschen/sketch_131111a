int count = 24;
PVector[] locs = new PVector[count];
PVector[] vels = new PVector[count];
Rain[] rain= new Rain[count];

 
void setup() {
  size(500, 500);
  for (int i = 0; i < count; i++) {
    locs[i] = new PVector(random(width), random(height));
    vels[i] = PVector.random2D();
  }
}
 
void draw() {
  for (int i = 0; i < count; i++) {
    rain[i].display();
    
          ellipse(locs[i].x, locs[i].y, 50, 50);
    locs[i].add(vels[i]);
  }
}
