Player p;
Enemy e;
boolean LEFT, RIGHT, UP, DOWN;
void setup() {
  size(800, 600);
  LEFT = false;
  RIGHT = false;
  UP = false;
  DOWN = false;
  
  p = new Player ();
  e = new Enemy ();
}

void draw() {
  background(0);
  p.update();
  p.display();
  e.update();
  e.display();
}

void keyPressed () {
  if (keyCode == 37) {
    LEFT = true;
  }
  
  if (keyCode == 38) {
    UP = true;
  }
  
  if (keyCode == 39) {
    RIGHT = true;
  }
  
  if (keyCode == 40) {
    DOWN = true;
  }
}

void keyReleased () {
  if (keyCode == 37) {
    LEFT = false;
  }
  
  if (keyCode == 38) {
    UP = false;
  }
  
  if (keyCode == 39) {
    RIGHT = false;
  }
  
  if (keyCode == 40) {
    DOWN = false;
  }
}
