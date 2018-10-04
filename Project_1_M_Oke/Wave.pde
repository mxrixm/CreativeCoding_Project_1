class Wave {
  float theta= 0.0;
  float xPos;
  float yPos;
  float angle;
  int ew;
  int eh;

  Wave() {
  }
  void display(float xPos_, float yPos_, int ew_, int eh_) {
    xPos = xPos_;
    yPos = yPos_;
    ew = ew_;
    eh= eh_;

    ellipse(xPos, yPos, ew, eh);
  }
}
