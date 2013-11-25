class Rain {
  PVector loc, vel, acc;
  int size;
  int shape;

  Rain() {
    loc = new PVector(random(width), -50);
    vel = new PVector(0, 1);
    acc = new PVector(0, .01);
    
    size = 10;
    float r = random(1);
    if (r < .5) {
      shape =1;
    }
    else {
      shape = 0;
    }
  }

  void display() {
    if (shape == 0) {
      ellipse(loc.x, loc.y, size, size);
    }
    if (shape == 1) {
      rectMode(CENTER);
      rect(loc.x, loc.y, size, size);
    }
  }
}

