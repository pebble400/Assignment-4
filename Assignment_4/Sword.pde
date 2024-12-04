float swordX, swordY, swordW, swordH;

class Sword {



  Sword(float sx, float sy) {
    swordX = sx;
    swordY = sy;
    swordW = 40;
    swordH = 10;
  }
  void update () {
  }

  void display() {
    fill (255);
    rect (swordX, swordY,swordW, swordH);
  }
}
