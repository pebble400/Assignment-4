int menu = 0;
// 0 = start screen, 1 = game screen, 2 = end screen
// using https://www.youtube.com/watch?v=p3rt3zDr2SE as a reference for the screen switching

Player p;
Enemy e;

Start s;
boolean LEFT, RIGHT, UP, DOWN;
void setup() {
  size(800, 600);
  LEFT = false;
  RIGHT = false;
  UP = false;
  DOWN = false;

  p = new Player ();
  e = new Enemy ();
  s = new Start (350,350,100,50,"Start",0,200,200);
}

void draw() {
  background(0);
  switch (menu) {
  case 0:
    {
      s.update();
      s.display();
      if(s.isClicked()){
        menu = 1;
      }
    }
    break;

  case 1:
    {
      p.update();
      p.display();
      e.update();
      e.display();
    }
    break;

  case 2:
    {
    }
    break;
  }
  //p.update();
  //p.display();
  //e.update();
  //e.display();
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
