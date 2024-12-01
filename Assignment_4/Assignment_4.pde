
boolean LEFT, RIGHT, UP, DOWN;
void setup() {
  size(400, 400);
  LEFT = false;
  RIGHT = false;
  UP = false;
  DOWN = false;
}

void draw() {
  background(0);
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
