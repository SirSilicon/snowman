  color white = #ffffff;
  color DeepBlue = #0016e0;
  color nonHover = DeepBlue;
  color Hover = white;
  PFont titleFont;
  color goldenBrown = #EDC600;

void quitButtonDraw (){
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  titleFont = createFont ("Onyx", 85);
  if (mouseX>width*14/16 && mouseY<height/16) {
    fill(Hover);
    rect(width*14/16, 0, width, height/16);
    fill(goldenBrown);
    textAlign(RIGHT,BOTTOM);
    textFont(titleFont, 55);
    textSize(15);
    text("quit", width*14/16, height/32);
  } else {
    fill(nonHover);
    rect(width*14/16, 0, width, height/16);
    textAlign(RIGHT,BOTTOM);
    textFont(titleFont, 55);
    textSize(15);
    fill(goldenBrown);
    text("quit",width*14/16, 0, width, height/16);
    fill(255);//white
  }
}

void mouseClicked(){
  if (mouseX>width*14/16 && mouseY<height/16){
   exit();
  }
}
