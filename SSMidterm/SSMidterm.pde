String state = "pregame";
String game = "start";
int chances = 3;


void setup () {

  fullScreen();
  textAlign(CENTER);
  textSize(20);
  println(state);

}

void draw(){
  
  
  if(state == "pregame"){
  background(0);
  text("GAME NAME HERE", width/2-20, height/2-20);
  text("If you would like to play the game Click the mouse.", width/2, height/2+50);
  }
  
  
  if (state == "startgame"){
  background(0);
  
  text("Welcome to your new home. I hope you enjoy your stay here",  width/2, height/2);
  
  text("If you want to leave, just answer some questions and you'll be free to go.", width/2, height/2+50);
  
  text("Mess up 3 times.... and you'll be stuck here with me.", width/2, height/2+80);
  
  text("Press Enter to Start", width/2, height/2 + 380);
  }
  
  if(game == "stage1"){
    chances = 3;
    background(0);
    text("Chances Left: " + chances, 100,100);
    text("Here is your first question", width/2, height/2);
    
    text("What color is the sky? *Snicker Snicker* \n\n",width/2 ,height/2 + 50);
    text("Press 'F' for Blue, 'A' Red", width/2, height/2 + 80);
  }
  
     if(game == "stage2"){
    background(0);
    text("Chances Left: " + chances, 100,100);
    text("Next Question \n \n What is the color of the Sun? *Hehehe*  \n \n Press 'I' for White 'L' for Yellow", width/2, height/2);
     }
  
   if (game == "stage3"){
      background(0);
      text("Chances Left: " + chances, 100,100);
      text("You're almost there can you smell that freedom? \n\n Last Question \n\n What did I say to you when you first woke up? (hehehe) \n\n Press 'E' for Welcome to your Prison 'D' for Welcome to your new home", width/2, height/2);
   }
  
  if (game == "end"){
    background(0);
    text("What do the choices I gave you spell? \n\n F.A.I.L.E.D \n\n You really thought I would let you out of our new place together? (hehehehehe) \n\n Your live with me forever now \n\n\n\n Press Enter to Try Again", width/2, height/2);
  }
}

void keyPressed (){
if(key == ENTER || key == RETURN && game == "start"){
  game = "stage1";
  println(game);
  } 
  
      if (game == "stage1" && key == 'f'){
       chances = 3;
       background(0);
       //text("Ughh.. you got it right.. moving on", width/2, height/2);
       game = "stage2";
       println(chances);
    } else if (game == "stage1" && key == 'a'){
        chances = chances - 1;
        background(0);
        //text("Wrong, maybe next time (hehehe)", width/2, height/2);
        game = "stage2";
        println(chances);
    }
    
         if (game == "stage2" && key == 'l'){
       chances = 3;
       background(3);
       //text("Ughh.. you got it right.. moving on", width/2, height/2);
       game = "stage3";
       println(chances);
    } else if (game == "stage2" && key == 'i'){
        chances = chances - 1;
        background(0);
        //text("Wrong, maybe next time (hehehe)", width/2, height/2);
        game = "stage3";
        println(chances);
    }
    
     if (key == 'd'){
       chances = 3;
       background(0);
       //text("Ughh.. you got it right.. moving on", width/2, height/2);
       game = "end";
       println(chances);
    } else if (key == 'e'){
        chances = chances - 1;
        background(0);
        //text("Wrong, maybe next time (hehehe)", width/2, height/2);
        game = "end";
        println(chances);
    }
}

void mousePressed(){
  
if(state == "pregame"){
  state = "startgame";
  println(state);
}

}
