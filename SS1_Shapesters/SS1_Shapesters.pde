// Shapesters -- Anthony Rivera
void setup(){
  size (1080, 720);
  
  
};

void draw(){
  
  //rectangle 1
  strokeWeight(10);
  fill(150,200,100);
  rect(100, 200, 300, 300);
  
  //rectangle 2
  strokeWeight(10);
  fill(150,200,100);
  rect(600, 200, 300, 300);
  
  //triangle left (house)
  strokeWeight(10);
  fill(250,100,200);
  triangle(230,10,400,190,100,190);
  
  //triangle left (house)
  strokeWeight(10);
  fill(250,100,200);
  triangle(750,10, 600, 190, 900, 190);
  
  // circles that follow the path of mouse
  strokeWeight(5);
  fill(200,0,150);
  ellipse(mouseX, mouseY, 20, 20);
  
  //window
  fill(255,255,255);
  rect(250,250,100,100);
  
    //window
  fill(255,255,255);
  rect(650,250,100,100);
  
  // line going left to right
  strokeWeight(20);
  line(500, 0, 500,1080 );
  
  // line going left to right
  strokeWeight(20);
  line(0, 500, 1080, 500);

};
