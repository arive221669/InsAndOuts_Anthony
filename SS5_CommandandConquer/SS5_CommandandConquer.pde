
//all maps in order

PImage map1;
PImage map2;
PImage map3;
PImage map4;
PImage map5;
PImage map6;

// each map will display for 5 seconds
int time1 = 0;
int time2 = 5000;
int time3 = 10000;
int time4 = 15000;
int time5 = 20000;
int time6 = 25000;

void setup(){
size(1619,1050);
map1 = loadImage("map1.png");
map2 = loadImage("map2.jpg");
map3 = loadImage("map3.jpg");
map4 = loadImage("map4.jpg");
map5 = loadImage("map5.jpg");
map6 = loadImage("map6.jpg");
}

void draw(){
  
  int currentTime = millis();
  println(currentTime);
  
  if (currentTime > time6){
    background(255);
    image(map6, 0, 0);
    textSize(50);
    text("Command And Conquer 4 Tiberian Twilight (2010)", 100, 80);
    
  } else if (currentTime > time5){
    background(255);
    image(map5, 0, 0);
    textSize(50);
    text("Command And Conquer Red Alert 3 (2008)", 100, 80);
    
  } else if (currentTime > time4){
    background(255);
    image(map4, 0, 0, 1619, 1050);
    textSize(50);
    text("Command And Conquer Generals (2003)", 100, 80);
    
  } else if (currentTime > time3){
    background(255);
    image(map3, 0 ,0, 1619, 1050);
    textSize(50);
    text("Command And Conquer Red Alert 2 (2000)", 100, 80);
    
  } else if(currentTime > time2) {
    background(255);
    image(map2, 0 ,0,1619,1050);
    textSize(50);
    text("Command And Conquer Tiberian Sun (1999)", 100, 80);
    
  } else {
    background(255);
    image(map1, 0, 0);
    textSize(50);
    text("Command And Conquer Red Alert (1996)", 100, 80);
  
  }
  
}
