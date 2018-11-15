//global variables
String Xmessage = "Marry Xmas!";
PFont XmessageFont;
color green = #0AE800;
color red = #D10000;
PImage tree;
int Nsnow = 0;
int value = 2;
void setup() {
  noStroke();
  size (600, 500);
    while (Nsnow <= 35){
    fill(255);
    ellipse(random(15)*width/15, random(3, 12)*height/15, 15, 15);
    Nsnow = Nsnow + 1 ;
    }
  stroke(1);
  fill (#ffffff);//white
  ellipse (width/2, height*4/6, width/3.75, height/3.6);
  ellipse (width/2, height/2, width/4.6, height/4.2);
  ellipse (width/2, height/3, width/6.667, height/5.556);
  line (width*5/12, height/2, width/3, height*5/12);
  line (width*7/12, height/2, width*2/3, height*5/12);
  ellipse (width*8/17, height*5/16, width/30, height/30);
  ellipse (width*9/17, height*5/16, width/30, height/30);
  XmessageFont = createFont ("BrushScriptStd", 85);
  tree = loadImage ("christmas_tree.jpg");
  noStroke();
  rect (0, height*5/6, width, height);
  image (tree, width*5/6, height*5/6, width*1/6, height*1/6);
  stroke(1);
}

void draw() {
  int s = second();
  if (s % value == 0) {
    fill(green);
    rect (0, 0, width, height/5);
    textAlign(CENTER, CENTER);
    textFont(XmessageFont, 55);
    fill (red);
    text(Xmessage, 0, 0, width, height/5);
  } else {
    fill(red);
    rect (0, 0, width, height/5);
    textAlign(CENTER, CENTER);
    textFont(XmessageFont, 55);
    fill (green);
    text(Xmessage, 0, 0, width, height/5);
  }

  quitButtonDraw();
}
void keyPressed() {
  if (value == 2) {
    value = 1;
  } else {
    value = 2;
  }
}
