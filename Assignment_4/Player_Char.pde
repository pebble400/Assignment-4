class Player {
  
  PImage player;
  PImage playerWalk[];
  boolean isWalking; 
  int playerFrame;
  PVector position;
  int direction = 1;
  
  Player () {
    imageMode(CENTER);
    player = loadImage("Player_Standing.png");
    
    playerWalk = new PImage [2];
    playerWalk [0] = loadImage("player_Walking1.png");
    playerWalk [1] = loadImage("player_Walking2.png");
    
    position = new PVector(width/2, height/2);
  }
  void update () {
    
  }
  void display () {
    
  } 
}
