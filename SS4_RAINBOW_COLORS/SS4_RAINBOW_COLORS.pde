// RAINBOW COLORS BY ANTHONY RIVERA
float center = 0;
float size = 10;
void setup(){
  background(255);
  size(800,800);
  frameRate(30);  
}
void draw(){
  
  if(center >= 10 ){
    for (int i = 0; i < 400; i = i+5) {
      fill(random(255),random(255),random(255));
      rectMode(CENTER);
      rect(i, i, 75, 75);
  }
  }
  
  
  if(center >= 20){
    for(int b = 800; b > 400; b = b - 5){
      fill(random(255),random(255),random(255));
      rectMode(CENTER);
      rect(b, b, 75, 75);
  }
  }
    
  if(center >= 30){
      for(int c = 0; c < 400; c = c + 5){
        fill(random(255),random(255),random(255));
        rectMode(CENTER);
        rect(c, 400, 75, 75);
  
  }
  }
  
  
    if(center >= 40 ){
      for(int d = 800; d > 400; d = d - 5){
        fill(random(255),random(255),random(255));
        rectMode(CENTER);
        rect(d, 400, 75, 75);
      }
    }
    
        if(center >= 50 ){
          for(int x = 800; x > 400; x = x - 5){
            fill(random(255),random(255),random(255));
            rectMode(CENTER);
            rect(400, x, 75, 75);
      }
    } 
    
     if(center >= 60 ){
        for(int z = 0; z < 400; z = z + 5){
          fill(random(255),random(255),random(255));
          rectMode(CENTER);
          rect(400, z, 75, 75);
      }
    } 
    
     if(center >= 70 ){
        for (int q = 800; q > 0; q = q-5) {
          fill(random(255),random(255),random(255));
          rectMode(CENTER);
          rect(800, q, 75, 75);
  }
  }
    
   if(center >= 80 ){
      for (int q = 0; q < 800; q = q+5) {
        fill(random(255),random(255),random(255));
        rectMode(CENTER);
        rect(0, q, 75, 75);
  }
  }
    
    if (mousePressed == true){
        fill(random(255),random(255),random(255));
        ellipseMode(CENTER);
        ellipse(mouseX, mouseY, size, size);
    }
    
    if(size <= 25){
      size = size + 10;
    } else if (size >= 50){
      size = 10;
    } else {
        size = size + 10;
    }
}
void keyPressed(){
  if(key == 'w'){
      background(255);
      center = 0;
    
  }
  
  if(key == 'a'){
    center = center + 10;
  }
  
  
  }
