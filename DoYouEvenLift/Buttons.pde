void drawButtons(int key) {
  String no;
  if (key == 20) {
    textSize(15);
    no = "What's that?";
  } 
  else if(key == 16){
    textSize(15);
    no = "I've seen \nbigger";
  }
  else {
    no = "No";
  }
  rect(150, 350, 100, 50);//yes button
  rect(350, 350, 100, 50);
  fill(255);
  text(no, 350, 350);
  textSize(25);
  text("Yes", 150, 350);
  fill(0);
}

void playAgainButton() {
  rect(width/2, 350, 200, 50);
  fill(255);
  text("Play Again?", width/2, 350);
}