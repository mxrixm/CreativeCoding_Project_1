Wave w_one;
Wave w_two;

Rect[] rectangles;

float theta = 0.0;
float x;
float y;
int value=1;
float lineLength;
int i;
float angle;
float r= 255;
float g= 255;
float b= 255;
int col= color(255, 255, 0);

void setup() {
  //frameRate(50);
  size(600, 600);
  background(0);

  w_one = new Wave();
  w_two = new Wave();

  rectangles= new Rect[20];
}

void draw() {
  for (int i =0; i<rectangles.length; i++){
    rectangles[i]=new Rect (random(-0.1, 0.1), random(30), random(500), random(500));
  } 
  theta += 0.15;
  noStroke();
  float angle = theta;
  if (value==1) {
    frameRate(30);
    fill(255);
    textSize(80);
    text("WELCOME", 100, height/2);
    for (x = 0; x <= width; x +=25) {
      fill(random(r), random(g), random(b));
      y = map(cos(angle), -1, 1, 0, mouseX); //map the cos of the angle to a value between 0 and mouseX pos
      w_one.display(y, x, 40, 40);
      angle += .3;
    }
    for (x = 0; x <= width; x +=20) {   
      y = map(sin(angle), -1, 1, 0, mouseX); //map the sin of the angle to a value between 0 and mouseX pos
      fill(random(r), random(g), random(b));
      w_two.display(x, y, 30, 30); 
      angle += .2;
    }
  }
  if (value==2) {
    frameRate(30);
    background(0);
    pushMatrix();
    translate (width/2, height/2);
    for (i = 0; i<mouseY; i++) {
      rotate(radians(i*.02));
      scale(.99);
      fill(col);
      spiral(mouseX, mouseY, width*4, 2, random(0, 15));
      rotate(radians(i*.02));
      spiral(mouseX, mouseY, width*10, 2, random(0, 20));
    }
    popMatrix();
  }
  if (value==3) {
    frameRate(2);
    background(255);
    for (int i =0; i<rectangles.length; i++ ) {
      rectangles[i].display();   
    }
  }
  if (value==4){
    //frameRate(20);
    
    rectMode(CENTER);
    noStroke();
    background(mouseY/2,255,255);
    
    fill(255-mouseY/2,255);
    rect(255,255,mouseX+1, mouseX+1);
  }
}


void keyPressed() {
  value++;
  if (value > 3) {
    value = 1;
  }
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
  if (key=='4'){
    value=4;
  }
}

void mousePressed() {
  if (value==2) {
    col = color(random(r), 255, 0);
  }
}

void spiral(float aPos, float bPos, float s_width, float s_height, float thic) {
  fill(col);
  stroke(col);
  strokeWeight(thic);
  line (aPos, bPos, s_width, s_height);
}
