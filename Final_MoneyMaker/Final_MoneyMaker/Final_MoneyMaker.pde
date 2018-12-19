/* Anthony Rivera
    Money Maker
    Press play to start, connect controller to computer
*/

// Arduino to Processing
import processing.serial.*;
Serial myPort;
int value;

import processing.sound.*;
SoundFile Creative;

int win_cond = 0;
PImage gameshow;
String state = "pregame";
PFont font;

String wrong = "false";
String right = "false";


void setup() {
  fullScreen();
  textAlign(CENTER);
  textSize(35);
  println(state);
  gameshow = loadImage("gameshow.jpg");
  
  Creative = new SoundFile(this, "Creative.mp3");
  Creative.loop();


  font = createFont("Typewriter.ttf", 50);
  textFont(font, 35);


  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw() {

  
  if ( myPort.available() > 0) { 
    value = myPort.read();

  }
println(value);


  if (state == "pregame"){
    win_cond = 0;
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Welcome to Money Maker", width/2, height/2-200 );
    text("If you would like to play, press the A button.", width/2, height/2+300);
  }

  if (state == "startgame"){
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("This game will test your knowledge of the world, and history,\n answering correctly will let you advance in difficulty", width/2, height/2-200); 
    text("but getting an answer wrong will be game over,",width/2, height/2);
    text("Press the A button to continue",width/2, height/2+300);

  }
  //QUESTON 1
  if (state == "question 1"){
    background(0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Made up predominantly of young men,\n\n adult fans of the animated television series\n\n My Little Pony are known as what?", width/2, height/2-200);
    text("A: Ponies B: Bronies C: Littles D: Adult Fans", width/2, height/2+100);
      if(wrong == "true"){
        background(0);
        lose();
      } else if (right == "true"){
        background(0);
      }
  }
  //QUESTION 2
  if(state == "question 2"){
    right = "false";
    background(0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Which city served as the capital of the United States\n\n from 1785 until 1790?",width/2 ,height/2-200);
    text("A: New York B: Chicago C: Boston D: Virginia ",width/2 ,height/2+100);
        if(wrong == "true"){
        background(0);
        lose();
      } else if (right == "true"){
        background(0);
      }
  }
  //QUESTION 3
  if(state == "question 3"){
    right = "false";
    background(0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("What does the online acronym SMH stand for?",width/2 ,height/2-200);
    text("A: Shaking My Heart B: Shaking My Hand \nC: Shaking My Head D: Shaking My Hair",width/2 ,height/2+100);
            if(wrong == "true"){
        background(0);
        lose();
      }  else if (right == "true"){
        background(0);
      }
}
  //QUESTION 4
  if (state == "question 4"){
    right = "false";
    background(0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("What is the only snake in the world\n that builds a nest for its eggs?",width/2 ,height/2-200);
    text("A: Anaconda B: Viper C: Python D: King Cobra",width/2 ,height/2+100);
            if(wrong == "true"){
        background(0);
        lose();
      }  else if (right == "true"){
        background(0);
      }
}
  //QUESTION 5
  if(state == "question 5"){
    right = "false";
    background(0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("How the Grinch Stole Christmas is a\n 2000 American Christmas fantasy comedy film starring\n which actor as the Grinch?",width/2 ,height/2-200);
    text("A: Johnny Depp B: Liam Neeson C: Jim Carrey D: Kevin Costner",width/2 ,height/2+100);
        if(wrong == "true"){
          background(0);
          lose();
      } else if (right == "true"){
          background(0);
      }
  }
  
  // CHOICES
  
    // Beginning
  if (value == 1 && state == "pregame") {
    state = "startgame";
    println(state);
    value = 0;
  } else if (value == 1 && state == "startgame") {
    state = "question 1";
    println(state);
    value = 0;
  } 
  // Question 1
    else if (value == 1 && state == "question 1") {
    wrong = "true";
    println(state);
    value = 0;
  }
  else if (value == 2 && state == "question 1") {
    state = "question 2";
    right = "true";
    win_cond++;
    println(state);
    value = 0;
  } 
    else if (value == 3 && state == "question 1") {
      wrong = "true";
      println(state);
      value = 0;
  }
    else if (value == 4 && state == "question 1") {
      wrong = "true";
      println(state);
      value = 0;
  }
  
  // Question 2
  else if (value == 1 && state == "question 2") {
    state = "question 3";
    right = "true";
    win_cond++;
    println(state);
    value = 0;
  } 
    else if (value == 2 && state == "question 2") {
      wrong = "true";
      println(state);
      value = 0;
  } 
    else if (value == 3 && state == "question 2") {
      wrong = "true";
      println(state);
      value = 0;
  } 
    else if (value == 4 && state == "question 2") {
      wrong = "true";
      println(state);
      value = 0;
  } 
  
  // Question 3
  else if (value == 1 && state == "question 3") {
    wrong = "true";
    println(state);
    value = 0;
  } 
    else if (value == 2 && state == "question 3") {
      wrong = "true";
      println(state);
      value = 0;
  } 
    else if (value == 3 && state == "question 3") {
      state = "question 4";
      right = "true";
      win_cond++;
      println(state);
      value = 0;
  } 
    else if (value == 4 && state == "question 3") {
      wrong = "true";
      println(state);
      value = 0;
  } 
  
  // Question 4
  else if (value == 1 && state == "question 4") {
    wrong = "true";
    println(state);
    value = 0;
  }
    else if (value == 2 && state == "question 4") {
      wrong = "true";
      println(state);
      value = 0;
    }
    else if (value == 3 && state == "question 4") {
      wrong = "true";
      println(state);
      value = 0;
      }
    else if (value == 4 && state == "question 4") {
      state = "question 5";
      right = "true";
      win_cond++;
      println(state);
      value = 0;
      }
      
    // Question 5
  else if (value == 1 && state == "question 5") {
    wrong = "true";
    println(state);
    value = 0;
  }
    else if (value == 2 && state == "question 5") {
      wrong = "true";
      println(state);
      value = 0;
    }
    else if (value == 3 && state == "question 5") {
      right = "true";
      win_cond++;
      println(state);
      value = 0;
      }
    else if (value == 4 && state == "question 5") {
      wrong = "true";
      println(state);
      value = 0;
      }
  
  //WIN CONDITION TO BEAT THE GAME
  if (win_cond == 5){
    win();
  }

}
//FUNCTION FOR WINNING
void win(){
  background(0);
  image(gameshow, 0, 0);
  gameshow.resize(displayWidth, displayHeight);
  text("CONGRATULATIONS!!!, you've won a $1,000,000 \n\n Want to play again? \n\n A: Yes B: No", width/2, height/2+100);
  if(value == 1){
    state = "pregame";
    right = "false";
    wrong = "false";
    value = 0;
  } else if (value == 2){
    exit();
  }
}
  //FUNCTION FOR LOSING
  void lose(){
    background (0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Thank for you playing but sadly, you did not win the prize, \n\n Want to try again? \n\n A: Yes B: No", width/2, height/2+100);
     if(value == 1){
        state = "pregame";
        right = "false";
        wrong = "false";
        value = 0;
      } else if (value == 2){
        exit();
  }  
}
  
