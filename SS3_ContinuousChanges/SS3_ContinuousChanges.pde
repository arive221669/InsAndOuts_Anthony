//CONTINUOUS CHANGES BY ANTHONY RIVERA

float B2 = 100;

void setup(){
    background(255);
  size(800,800);
  rectMode(CENTER);
  ellipseMode(CENTER);
  frameRate(10);
}

void draw(){

  strokeWeight(5);
  
  
  println("mouse X " + mouseX +" mouse Y " + mouseY);
  
  if(mouseX >= 400){
    rect(50, 50, B2, B2);
    rect(750, 750, B2, B2);
    rect(50, 750, B2, B2);
    rect(750, 50, B2, B2);
    
  } else if (mouseX <= 400){
    ellipse(400, 50, B2, B2);
    ellipse(400, 750, B2, B2);
    ellipse(50, 400, B2, B2);
    ellipse(750, 400, B2, B2);
  }
  
  if (mousePressed == true){
    fill(random(255), random(255), random(255));
  }

    if (B2 >= 400){
      B2 = 100;
    } else if (B2 <= 400){
        B2 = B2 + 50;
    } else {
      B2 += 50; 
    }
}


void keyPressed(){
  if(key == 'a'){
      fill(random(255), random(255), random(255));
  }
  if (key == 'c'){
    background(255);
  }
}

void mousePressed(){
    fill(random(255), random(255), random(255));
  }
