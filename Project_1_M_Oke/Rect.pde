class Rect{
  float x,y;
  float theta2;
  float speed;
  float rw;
  
  Rect(float x_,float y_, float speed_, float rw_){
    x = x_;
    y = y_;
    theta2=0;
    speed = speed_;
    rw = rw_;
  }
  
  void display(){
    rectMode(CENTER);
    stroke(0);
    strokeWeight(2);
    fill(random(r), random(g), random(b));
    pushMatrix();
    translate(x, y);
    rotate(theta2);
    rect(width/2, height/2, rw, rw);
    popMatrix();
} 
}
