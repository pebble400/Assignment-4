class Enemy {
  Boolean hit = false;
  float x, y, w, h;
  float vx, vy;
  float maxSpeed, accelerate;
  boolean MOVELEFT, MOVEUP, MOVERIGHT, MOVEDOWN;
  float Swordx, Swordy, Swordw, Swordh;
  Enemy () {

    x = random(100, width-100);
    y = random(100, height-100);
    w = 50;
    h = 50;
    vx = 0;
    vy = 0;
    maxSpeed = 1;
    accelerate = 0.3;
    MOVELEFT = false;
    MOVEUP = false;
    MOVERIGHT = false;
    MOVEDOWN = false;
  }
  void update () {
    float distApart = dist(x+w/2, y+h/2, p.x+p.w/2, p.y+p.h/2);
    float dx = abs(x - p.x);
    float dy = abs(y - p.y);
    if (distApart < 200) {
      if (dx > dy) {
        if (x < p.x) {
          MOVERIGHT = true;
          MOVELEFT = false;
        }
        if (x > p.x) {
          MOVERIGHT = false;
          MOVELEFT = true;
        }
      } else {
        if (y < p.y) {
          MOVEDOWN = true;
          MOVEUP = false;
        }
        if (y > p.y) {
          MOVEDOWN = false;
          MOVEUP = true;
        }
      }
    } else {
      MOVELEFT = false;
      MOVEUP = false;
      MOVERIGHT = false;
      MOVEDOWN = false;
      vx = 0;
      vy = 0;
    }

    if (MOVELEFT) {
      vx = -maxSpeed;
    }
    if (MOVERIGHT) {
      vx = maxSpeed;
    }
    if (MOVEUP) {
      vy = -maxSpeed;
    }
    if (MOVEDOWN) {
      vy = maxSpeed;
    }

    //update position
    x += vx;
    y += vy;
    //collision
    hit = rectRect(Swordx, Swordy, Swordw, Swordh, x, y, w, h);
    // println(x);
 
    
  }//end update
  boolean rectRect(float Swordx, float Swordy, float Swordw, float Swordh, float x, float y, float w, float h) {
    boolean returning = false;
 
    if (Swordx + Swordw >= x &&
     Swordx <= x + w &&
     Swordy + Swordh >= y &&
     Swordy <= y + h) {
    println("come");
     returning = true;
     }

    return returning;
  }
  void display () {
    fill (0, 255, 255);
    rect (x, y, w, h);
  }
}
