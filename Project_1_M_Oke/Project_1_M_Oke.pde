Wave w_one;
Wave w_two;
Wave w_three;

Rect[] rectangles; //array of rectangles

float theta = 0.0;
float x;
float y;
int value=1;
float lineLength;
int i;
float angle;
float r= 360;
float g= 360;
float b= 360;
int col;
int col2;

void setup() {
  print("Interact using keys 1-3"); //using text for instructions 
  size(600, 600);
  background(0);
  colorMode(HSB);

  w_one = new Wave();
  w_two = new Wave();
  w_three = new Wave();
  rectangles = new Rect[20];
  
  col = color(random(r), 255, 360);
    col2= color(random(r), random(g), 360);
}

void draw() {
  
  for (i =0; i<rectangles.length; i++) {
    rectangles[i]=new Rect (random(-0.1, 0.1), random(30), random(500)); //make a new rectangle 
  } 
  theta += 0.15;
  noStroke();
  float angle = theta;
  if (value==1) {
    frameRate(15);
    colorMode(HSB);
    for (x = 0; x <= width; x +=25) {
      fill(random(r), random(g), 360);
      y = map(cos(angle), -1, 1, 0, 200); //map the cos of the angle to a value between 0 and 200 pos
      w_one.display(y, x, 40, 40);
      angle += .3;
    }
    for (x = 0; x <= width; x +=20) {   
      y = map(sin(angle), -1, 1, 0, 200); //map the sin of the angle to a value between 0 and 200 pos
      fill(random(r), random(g), 360);
      w_two.display(x, y, 30, 30); 
      angle += .2;
    }
    for (x = 0; x <= width; x +=20) {
      fill(random(r), random(g), 360);
      w_three.display(x, y, 30, 30);
      y = map(sin(angle), -1, 1, 200, 400);
      angle+=.2;
    }
    for (x = 0; x <= width; x +=20) {
      fill(random(r), random(g), 360);
      w_three.display(x, y, 30, 30);
      y = map(sin(angle), -1, 1, 400, 600);
      angle+=.2;
    }
    for (x = 0; x <= width; x +=20) {
      fill(random(r), random(g), 360);
      w_one.display(y, x, 30, 30);
      y = map(sin(angle), -1, 1, 400, 600);
      angle+=.3;
    }
  }

  if (value==2) {
    colorMode(HSB);
    frameRate(4);
    col = color(random(r), 255, 360);
    col2= color(random(r), random(g), 360);
    background(0, 10);
    pushMatrix();
    translate (width/2, height/2);
    for (i = 0; i<width; i++) {
      rotate(radians(i*.02));
      scale(.99);

      spiral(100, 100, width*4, 2, random(0, 15), col);
    }
    popMatrix();
    pushMatrix ();
    translate (width/2, height/2);
    for (i = 0; i<mouseY; i++) {
      scale(.99);
      rotate(radians(i*.02));
      spiral(mouseX, mouseY, width*10, 2, random(0, 20), col2);
    }
    popMatrix();
  }
  if (value==3) {
    colorMode(HSB);
    frameRate(3);
    background(40, 360, 360);
    for (int i =0; i<rectangles.length; i++ ) {
      rectangles[i].display();
    }
  }

  if (value==4) {
    stroke(random(r),360,360);
  strokeWeight(random(1,50));
  line(width/2,height/2,random(width),random(height));
  }
}


void keyPressed() {
  if (key=='1') {
    value = 1;
    background(0);
  }
  if (key=='2') {
    value=2;
  }
  if (key=='3') {
    value=3;
  }
  if (key=='4') {
    value=4;
    background(255);
  }
}

void spiral(float aPos, float bPos, float s_width, float s_height, float thic, float spiralcolor) {
  fill(spiralcolor);
  stroke(col);
  strokeWeight(thic);
  line (aPos, bPos, s_width, s_height);
}
