import processing.sound.*;
SoundFile Scary;

String state = "pregame";
String game = "start";

PFont font;

// colors
int g = 0;
int b = 0;
boolean mouseState = false;

// chances player has left
int chances = 3;

//fade in text
float fadein = 0;
float fadeout = 255;

//images
PImage Warehouse1;
PImage Warehouse2;
PImage Warehouse3;
PImage Warehouse4;
PImage Warehouse5;
PImage Ending;
PImage Popup1;
PImage popup2;
PImage Popup3;
//fullScreen and resize 


void setup () {
  fullScreen();
  textAlign(CENTER);
  rectMode(CENTER);
  textSize(30);
  println(state);
  
  // load images
Warehouse1 = loadImage("Warehouse1.jpg");
Warehouse2 = loadImage("Warehouse2.jpg");
Warehouse3 = loadImage("Warehouse3.jpg");
Warehouse4 = loadImage("Warehouse4.jpg");
Warehouse5 = loadImage("Warehouse5.png");
popup2 = loadImage("popup2.jpg");
Popup3 = loadImage("Popup3.jpg");
Ending = loadImage("Ending.jpg");
font = loadFont("GNUTypewriter-48.vlw");
textFont(font, 30);


//SOUND

Scary = new SoundFile(this, "Scary.mp3");
Scary.loop();


}

void draw(){
  
  if(state == "pregame"){
    background(0);
  image(Warehouse1, 0, 0);
  Warehouse1.resize(displayWidth, displayHeight);
   fill(fadein,g,b);
  text("Dare to Escape", width/2, height/2-200 );
  text("If you would like to play the game Click the mouse.", width/2, height/2-150);

  
  // FADE IN
  fadein = fadein+5;
  if(fadein == 255){
    fadein = 255;
  }
  }

  
  
  if (state == "startgame"){
    background(0);
  image(Warehouse2, 0, 0);
  Warehouse2.resize(displayWidth, displayHeight);
  
  text("Welcome to your new home. I hope you enjoy your stay here",  width/2, height/2);
  
  text("If you want to leave, just answer some questions and you'll be free to go.", width/2, height/2+50);
  
  text("Mess up 3 times.... and you'll be stuck here with me.", width/2, height/2+80);
  
  text("Press Enter to Start", width/2, height/2 + 380);
  
  
  }

  
  if(game == "stage1"){
    background(0);
    chances = 3;
    image(Warehouse3, 0,0);
    Warehouse3.resize(displayWidth, displayHeight);
    text("Chances Left: " + chances, 200,100);
    text("Here is your first riddle", width/2, height/2);
    
    text(" Can you cry underwater? *Snicker Snicker* \n\n",width/2 ,height/2 + 50);
    text("Press 'F' for Yes, 'A' No", width/2, height/2 + 80);
               if (right == "correct"){
             background(0);
               correct();
           } else if (wrong == "wrong"){
             background(0);
               incorrect();
           }
  }
  
     else if(game == "stage2"){
    background(0);
    image(Warehouse4,0,0);
    Warehouse4.resize(displayWidth, displayHeight);
    text("Chances Left: " + chances, 100,100);
    text("Next Question \n \n There are sixty cups on a table. \n\n If one falls down, \n\n then how many are left? *hehehe*  \n\n Press 'I' for 59 'L' for 5", width/2, height/2);
             if (right == "correct"){
             background(0);
               correct();
           } else if (wrong == "wrong"){
             background(0);
               incorrect();
           }
     
     }
   else if (game == "stage3"){
      background(0);
      image(Warehouse5,0,0);
        Warehouse5.resize(displayWidth, displayHeight);
      text("Chances Left: " + chances, 100,100);
      text("You're almost there can you smell that freedom? \n\n Last Question \n\n IS WATER WET? *Giggle Giggle* \n\n Press 'E' NO 'D' YES", width/2, height/2);
             if (right == "correct"){
             background(0);
               correct();
           } else if (wrong == "wrong"){
             background(0);
               incorrect();
           }
      
   }
  
  else if (game == "end"){
    background(0);
    image(Ending,300, 50);
    text("What do the choices I gave you spell? \n\n F.A.I.L.E.D \n\n You really thought I would let you out of here? (hehehehehe) \n\n You live with me forever now \n\n\n\n Press 'S' to Try Again", width/2, height/2);
    forward = 0;
    mouseState = false;
  }
}

void mousePressed(){
  
  if(state == "pregame"){
    state = "startgame";
    println(state);
}

}
