class Sword {
  PVector colliderPosition;
  float colliderRadius;
  
  float x, y, w, h;

  Sword(float sx, float sy) {
    x = sx;
    y = sy;
    w = 40;
    h = 10;
  }
  void update () {
    
  }
  
  void display(){
    fill (255);
    rect (x, y, w, h);
  }
}
