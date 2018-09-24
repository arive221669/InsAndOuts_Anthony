//Marshmellow by Anthony Rivera
int head = 400;
float marshmellow = 32;
void setup(){
  size(800,800);
  background(255);
  frameRate(30);
  
}
void draw(){
  
}
void mousePressed() {
  
  //EDM colorchanger
   background(random(255), random(255), random(255));
   
// HEAD
   fill(255);
   strokeWeight(10);
   rectMode(CENTER);
   rect(head, head, 350, 350, 50);
   
   
   // LEFT EYE
   strokeWeight(15);
   line(280, 280, 350, 350);
   
   //drop part
   strokeWeight(30);
   line(320, 320, 350, 350);
      
   strokeWeight(15);
   line(280, 350, 350, 280);
   //drop part
   strokeWeight(30);
   line(280, 350, 310, 320);
   
   
   // RIGHT EYE
   strokeWeight(15);
   line(500, 280, 430, 350);
   
      //drop part
   strokeWeight(30);
   line(460, 320, 430, 350);
   
   strokeWeight(15);
   line(500, 350, 430, 280);
   
    // drop part
   strokeWeight(30);
   line(470, 320, 500, 350);
   
   //SMILE
   fill(0);
   arc(400, 480, 300, 100, 0, PI);
   line(250, 480, 550, 480);
   
   //WORDS that grow
   textSize(1 * marshmellow);
   fill(random(255), random(255), random(255));
   text("MARSHMELLOW", 100, 180);
   if(marshmellow < 80){
     marshmellow = marshmellow + 10;
   } else {
     marshmellow = 32;
   }
   
}
  
void keyPressed() {
  
    if(key == 'c'){
      background (255);
    }
    
}
