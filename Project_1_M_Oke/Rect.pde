class Rect{
  float x,y;
  float speed;
  float rw;
  
  Rect(float x_,float y_, float rw_){
    x = x_;
    y = y_;
    rw = rw_;
  }
  
  void display(){
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
