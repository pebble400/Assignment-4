class Player {
  float x, y, w, h;
  float vx, vy;
  float maxSpeed, accelerate;
  float offsetx, offsety;
  Sword s;
  Player () {

    x = width/4;
    y = width/4;
    w = 50;
    h = 50;
    vx = 0;
    vy = 0;
    maxSpeed = 10;
    accelerate = 0.3;
    offsetx = 5;
    offsety = -40;
    s = new Sword(x+offsetx, y+offsety);
  }
  void update () {
    //check for keys
    if (LEFT) {
      //vx = -5;
      if (vx > -maxSpeed) {
        vx -= accelerate;
      }
    } else if (RIGHT) {
      //vx = 5;
      if (vx < maxSpeed) {
        vx += accelerate;
      }
    } else if (!LEFT && !RIGHT) {
      vx = 0;
    }//horizontal check for keys
    if (UP) {
      //vy = -5;
      if (vy > -maxSpeed) {
        vy -= accelerate;
      }
    } else if (DOWN) {
      //vy = 5;
      if (vy < maxSpeed) {
        vy += accelerate;
      }
    } else if (!UP && !DOWN) {
      vy = 0;
    }//vertical check for keys



    //update position
    x += vx;
    y += vy;
    //update sword position
    s.x = x+offsetx;
    s.y = y+offsety;
    //boundary check
    if (x < -w) {
      x = width;
    } else if (x > width) {
      x = -h;
    }//horizontal boundary check
    if (y < -h) {
      y = height;
    } else if (y > height) {
      y = -h;
    }//vertical boundary check
  }
  void display () {
    fill (255, 0, 0);
    rect (x, y, w, h);
    s.update();
    s.display();
  }
}


























//PImage player;
//PImage playerWalk[];
//boolean isWalking;
//int playerFrame;
//PVector position;
//int direction = 1;

// Player () {
//position = new PVector(width/2, height/2);
//}
//void update () {
//}
//void display () {
//imageMode(CENTER);
// player = loadImage("Player_Standing.png");

//}
// void move () {

// playerWalk = new PImage [2];
// playerWalk [0] = loadImage("Player_Walking1.png");
// playerWalk [1] = loadImage("Player_Walking2.png");
//}
//}
