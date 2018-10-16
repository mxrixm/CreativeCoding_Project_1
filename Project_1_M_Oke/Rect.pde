class Rect{
  float rw;
  float x,y;
  
  Rect(float rw_){

    rw = rw_;
  }
  
  void display()  {
    rectMode(CENTER);
    stroke(60,99,360);
    strokeWeight(2);
    fill(random(r), 360, 360);
    pushMatrix();
    translate(x, y);
    rect(width/2, height/2, rw, rw);
    popMatrix();
} 
}
