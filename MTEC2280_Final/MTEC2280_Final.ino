// MTEC 2280 Final

Button_A = 2;
Button_B = 3;
Button_C = 4;
Button_D = 5;


void setup() {

  Serial.begin(9600);
  // Speaker Pin
  pinMode(10, OUTPUT);

  // Button Pins
  pinMode(Button_A, INPUT);
  pinMode(Button_B, INPUT);
  pinMode(Button_C, INPUT);
  pinMode(Button_D, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if (digitalRead(2) == LOW){
    tone(10, 1000);
    delay(100);
    noTone(10);
    delay(1000);
    Serial.print("Go");
  }
}
