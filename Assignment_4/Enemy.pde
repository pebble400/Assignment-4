class Enemy {
  Boolean hit = false;
  float enemyX, enemyY, enemyW, enemyH;
  //float x, y, w, h;
  float vx, vy;
  float maxSpeed, accelerate;
  boolean MOVELEFT, MOVEUP, MOVERIGHT, MOVEDOWN;
  //float Swordx, Swordy, Swordw, Swordh;
  Enemy () {

    enemyX = random(100, width-100);
    enemyY = random(100, height-100);
    enemyW = 50;
    enemyH = 50;
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
    float distApart = dist(enemyX+enemyW/2, enemyY+enemyY/2, p.x+p.w/2, p.y+p.h/2);
    float dx = abs(enemyX - p.x);
    float dy = abs(enemyY - p.y);
    if (distApart < 200) {
      if (dx > dy) {
        if (enemyX < p.x) {
          MOVERIGHT = true;
          MOVELEFT = false;
        }
        if (enemyX > p.x) {
          MOVERIGHT = false;
          MOVELEFT = true;
        }
      } else {
        if (enemyY < p.y) {
          MOVEDOWN = true;
          MOVEUP = false;
        }
        if (enemyY > p.y) {
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
    enemyX += vx;
    enemyY += vy;
    //collision
    hit = rectRect(swordX, swordY, swordW, swordH, enemyX, enemyY, enemyW, enemyH);
   
 
    
  }//end update
  boolean rectRect(float swordX, float swordY, float swordW, float swordH, float x, float y, float w, float h) {
    //Swordx = swordX;
    //Swordy = swordY;
    //Swordw = swordW;
    //Swordh = swordH;
    
    println(swordX);
    boolean returning = false;
 
    if (swordX + swordW >= x &&
     swordX <= x + w &&
     swordY + swordH >= y &&
     swordY <= y + h) {
     returning = true;
     }

    return returning;
  }
  void display () {
    fill (0, 255, 255);
    rect (enemyX, enemyY, enemyW, enemyH);
  }
}
