int menu = 0;
// 0 = start screen, 1 = game screen, 2 = end screen
// using https://www.youtube.com/watch?v=p3rt3zDr2SE as a reference for the screen switching

Player p;
//Enemy e;
ArrayList<Enemy>enemies=new ArrayList<Enemy>();
boolean GameOver;
Start s;
int timer;
Restart r;
boolean LEFT, RIGHT, UP, DOWN;
void setup() {
  size(800, 600);
  LEFT = false;
  RIGHT = false;
  UP = false;
  DOWN = false;

  //p = new Player ();
  //e = new Enemy ();
  s = new Start (350, 350, 100, 50, "Start", 0, 200, 200);
  r = new Restart(350, 350, 100, 50, "Restart", 200, 0, 200);
}

void draw() {
  background(0);
  switch (menu) {
  case 0:
    {
      //if(r.isClicked
      s.update();
      s.display();
      if (s.isClicked()) {
        p = new Player ();
        menu = 1;
      }
    }
    break;

  case 1:
    {
      if(GameOver == true) {
        menu = 2;
      }
      p.update();
      p.display();
      timer++;
      if (timer%100 == 1) {
        enemies.add(new Enemy());
      }

      //e.update();
      //e.display();
      for (int i=0; i<enemies.size(); i++) {
        enemies.get(i).update();
        enemies.get(i).display();
        boolean hit = enemies.get(i).rectRect(p.x,p.y,p.w,p.h, enemies.get(i).enemyX,enemies.get(i).enemyY,enemies.get(i).enemyW,enemies.get(i).enemyH);
        if(hit == true) {
          menu = 2;
        }
        if(enemies.get(i).hit){
          enemies.remove(i);
        }
      }
      
    }
    break;

  case 2:
    {
      r.update();
      r.display();
      if (r.isClicked()) {
        menu = 0;
      }
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
