class Ball{
  //instance vars
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;
  
  Ball(){
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r,g,b);
    rad = 10;
    x = random((width-r) + r/2);
    y = random((height-r) + r/2);
    dx = random(10) -5;
    dy = random(10) -5;
    state = 0;
  }
  
  void move() {
     x = x + dx;
     y = y + dy;
     bounce();
  }  
  
  void bounce() {
    if ( x > width || x < 0) {
      dx = -dx;
    }
    if ( y > height || y < 0) {
      dy = -dy;
    }
  }
  
  void startReacc() {
     if ( mousePressed ) {
       grow();
       state = 1;
     }
  }
  
  void grow() {
     rad = rad+1;
     if ( rad == 50 ) {
       shrink();
     }
  }
  
  void shrink() {
     rad = rad-1; 
  }
  
  void initiateGrowth(Ball[] ballz){
    if( state == 0 ){ //hasn't collided with anything yet
      for(Ball bob: ballz){
        if( bob.state == 1 && dist(bob.x, bob.y, x, y) < (bob.rad + rad)){
          state = 1;
        }
      }
    }
  }
  
    void print() {
     fill( c);
     ellipse( x, y, x+rad, y+rad );
  }
}
