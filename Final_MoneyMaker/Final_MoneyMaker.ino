// MTEC 2280 Final

void setup() {
  Serial.begin(9600);
  Serial.println("Online");
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);

}

void loop() {
  int value1 = digitalRead(2);
  int value2 = digitalRead(3);
  int value3 = digitalRead(4);
  int value4 = digitalRead(5);
  
  if(value1 == LOW){
    Serial.write(1);
    delay(200);
  } 
  else if(value2 == LOW){
    Serial.write(2);
    delay(200);
  }

  else if (value3 == LOW){
    Serial.write(3);
    delay(200);
  }
  else if(value4 == LOW){
    Serial.write(4);
    delay(200);
  }

}
