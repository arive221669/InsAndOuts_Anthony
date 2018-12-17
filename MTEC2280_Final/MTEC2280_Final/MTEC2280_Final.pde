import processing.serial.*;
Serial myPort;
String val;

import processing.sound.*;
SoundFile Creative;

int win_cond = 0;
int lose_cond = 1;
PImage gameshow;
String[] Questions = {"Made up predominantly of young men,\n\n adult fans of the animated television series My Little Pony are known as what?", "Which city served as the capital of the United States from 1785 until 1790?", "What does the online acronym SMH stand for?", "What is the only snake in the world that builds a nest for its eggs?", "How the Grinch Stole Christmas is a 2000 American Christmas fantasy comedy film starring which actor as the Grinch?"};

String state = "pregame";
int questionNumber = int(random(Questions.length));

PFont font;

//call a question based on array index
String buttonState = "0";

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


  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw() {

  if ( myPort.available() > 0) { 
    val = myPort.readStringUntil('\n');
  }


  if (state == "pregame"){
    lose_cond = 1;
    win_cond = 0;
    wrong = "false";
    right = "false";
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Welcome to Who Wants to Win Money", width/2, height/2-200 );
    text("If you would like to play, press the A button.", width/2, height/2+300);
  }

  if (state == "startgame"){
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("This game will test your knowledge of the world, and history,\n answering correctly will let you advance in difficulty", width/2, height/2-200); 
    text("but getting an answer wrong will be game over,",width/2, height/2);
    text("Press the A button to continue",width/2, height/2+300);

  }

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
  
  if (win_cond == 5){
    win();
  }
  if (lose_cond == 0){
    lose();
  }

}

void win(){
  background(0);
  image(gameshow, 0, 0);
  gameshow.resize(displayWidth, displayHeight);
  text("Thanks you playing, you've won a $1,000,000 \n\n Want to play again? \n\n Y: Yes N: No", width/2, height/2+100);
  if(key =='y'){
    state = "pregame";
    right = "false";
    wrong = "false";
  } else if (key == 'n'){
    exit();
  }
}
  void lose(){
    background (0);
    image(gameshow, 0, 0);
    gameshow.resize(displayWidth, displayHeight);
    text("Thank for you playing but sadly, you did not win the prize, \n\n Want to try again? \n\n Y: Yes N: No", width/2, height/2+100);
     if(key =='y'){
        state = "pregame";
        right = "false";
        wrong = "false";
      } else if (key == 'n'){
        exit();
  }  
}
  
