Ball [] bobo;
boolean reacc;

void setup(){
  size(600,600);
  reacc = false;
  bobo = new Ball [10];
  for ( int i = 0 ; i < bobo.length; i++ ) {
     bobo[i] = new Ball(); 
  }
  //additional code not shown
}

void draw(){
    background(0);
    for ( int i = 0; i < bobo.length; i++ ) {
        Ball bo = bobo[i];
      bo.print();
      bo.move();
    }
}
