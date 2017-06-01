PImage p37;
PImage p47;
PImage pcf;
PImage p41;
PImage p39;
PImage p33;
PImage p26;
PImage p27;
PImage p18;
PImage p17;
PImage p12;
PImage p22;
boolean playAgain;
BinaryTree tree;
void setup() {
  tree = new BinaryTree();
   
  size(500, 500);
  
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(25);
  rectMode(CENTER);
  add();
  loadPics();
  tree.show();
  playAgain = false;
}


void draw(){}

void mousePressed(){
  if(mouseX >= 100 && mouseX <= 200 && mouseY<=400 && mouseY >= 300){
    tree.goRight();
  }
  else if(mouseX >= 300 && mouseX <= 400 && mouseY<=400 && mouseY >= 300){
    tree.goLeft();
  }
  else if(mouseX >= 150 && mouseX <=350 && mouseY<=400 && mouseY >= 300 && playAgain){
    setup();
  }
}









void loadPics(){
  p37 = loadImage("BlackGuyInPark.jpg");
  p47 = loadImage("AdamSandler.png");
  pcf = loadImage("crossfit.gif");
  p41 = loadImage("trx.jpg");
  p39 = loadImage("yoga.jpg");
  p33 = loadImage("drake.png");
  p26 = loadImage("arnoldGod.jpg");
  p27 = loadImage("arnoldOld.jpg");
  p18 = loadImage("aesthetic.jpg");
  p17 = loadImage("soft.jpg");
  p12 = loadImage("315.png");
  p22 = loadImage("compete.jpg");
}


void add() {
  String ydl = "You don't lift.";
  String dyl = "Do you even lift?";
  
  //first level
  tree.add(2, "Do you go to the gym?");//this needs to be the root
  //second level
  tree.add(1, ydl);
  tree.add(46, "Do you take classes?");
  //third level
  tree.add(44, "Do you do cardio?");
  tree.add(47, "What are you, a child? \n"+ ydl);
  //fourth level
  tree.add(4, "Do you do weight training?");
  tree.add(45, ydl);
  //fifth level
  tree.add(3, ydl);
  tree.add(42, "Do you lift with machines?");
  //sixth level
  tree.add(40, "Do you use TRX?");
  tree.add(43, "They're the ones lifting, you're not \n"+ydl);
  //seventh level
  tree.add(32, "Do you do bodyweight exercizes?");
  tree.add(41, ydl);
  //eigth level
  tree.add(6, "Do you use freeweights?");
  tree.add(38, "Are you white?");
  //ninth level
  tree.add(5, ydl);
  tree.add(28, "Do you do curcuit training?");
  tree.add(34, "Are you black?");
  tree.add(39, "That's called yoga. "+ydl);
  //tenth level
  tree.add(8, "Do you do bodybuilding?");
  tree.add(30, "Is it Crossfit?");
  tree.add(33, "This opporation is still in progress");       //Come back to this one
  tree.add(36, "Do you workout in a park?");
  //eleventh level
  tree.add(7, ydl);  
  tree.add(14, "Do you look like you bodybuild?");
  tree.add(29, "Don't lie to me, yet it is. \n"+dyl);
  tree.add(31, dyl);
  tree.add(35, ydl);
  tree.add(37, "Alright bro, have a nice day, \ndidn't mean nothing by it.");
  //twelfth level
  tree.add(10, "Are you strong?");
  tree.add(22, "Do you compete?");
  //thirteenth level
  tree.add(9, ydl);
  tree.add(12, "Do you bench 3 plates for sets of 15?");
  tree.add(18, "Are you aesthetic?");
  tree.add(24, "Did you win?");
  //fourteenth level
  tree.add(11, ydl);
  tree.add(13, "Nice set bro, \nbut you didn't touch your chest. \n"+dyl);
  tree.add(16, "Are you big?");
  tree.add(20, "Are people 'mirin?");
  tree.add(23, ydl);
  tree.add(26, "What are you, Arnold?");
  //fifteenth level
  tree.add(15, ydl);
  tree.add(17, "You're looking soft bro, \nyou need to cut. "+dyl);
  tree.add(19, "Obviously not. "+dyl);
  tree.add(21, "What's your Instagram? \nNevermind, found it, \nyou need to work on your lats. \n"+dyl);
  tree.add(25, ydl);
  tree.add(27, "Dude, what happened? \nYou used to be my hero. \nDo you even lift anymore?");
}