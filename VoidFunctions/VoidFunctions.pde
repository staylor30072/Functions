void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  drawRandomCircle();  //Add circles at random parts of program
  if (mousePressed) {    // If mouse pressed add circles at mouse locaion
    drawCircleAt(255,255,153);
  }
  blueSquare();
  filter(BLUR);
}

void keyPressed() {
  if (keyCode == BACKSPACE) {    //Creates a blank screen
    resetScreen();
  }
  if (keyCode==ESC) {    //Adds a way to close program
    exit();
  }
}

void drawRandomCircle() {    //Define drawing random cirlce function
  noStroke();
  fill(255);
  float sz = random(15,25);
  ellipse(random(width), random(height), sz, sz);
}

void drawCircleAt(int r, int g, int b) {    //Define a function that draws circles where mouse is located
  fill(r, g, b);
  float sz = random(10,15);
  ellipse(mouseX, mouseY, sz, sz);
}

void resetScreen() {    //Defines funcion that redraws the background
  background(0);
}

void blueSquare() {  //Defines function that draws blue square at location  
  fill(0, 0, 255, 100);
  float sz = 40;
  rect(width/2-sz, height/2-sz, sz, sz);
}