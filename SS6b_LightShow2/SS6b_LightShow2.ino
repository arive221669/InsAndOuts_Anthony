const int BUTTON = 11;

int val = 0;
int val2 = 0;

int old_val = 0;
int state = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(BUTTON,INPUT);
  pinMode(A0, INPUT);
  pinMode(3, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  val = digitalRead(BUTTON);
  val2 = analogRead(A0);
  Serial.println(val2);


  if((val == HIGH) && (old_val == LOW)){
    state++;
    delay(10);
    }
    old_val = val;
    
    if (state == 1){
      
        digitalWrite(3, HIGH);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(7, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, HIGH);
        delay(300);
      
        digitalWrite(3, LOW);
        digitalWrite(5, HIGH);
        digitalWrite(6, LOW);
        digitalWrite(7, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, LOW);
        delay(150);
      
        digitalWrite(3, LOW);
        digitalWrite(5, LOW);
        digitalWrite(6, HIGH);
        digitalWrite(7, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, LOW);
        delay(150);
      
        digitalWrite(3, LOW);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(7, HIGH);
        digitalWrite(9, LOW);
        digitalWrite(10, LOW);
        delay(800);

        digitalWrite(3, LOW);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(7, LOW);
        digitalWrite(9, HIGH);
        digitalWrite(10, LOW);
        delay(800);

        digitalWrite(3, LOW);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(7, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, HIGH);
        delay(800);
    }
        if (state == 2){

          if (val2 > 300) {
        digitalWrite(3, HIGH);
        digitalWrite(5, HIGH);
        digitalWrite(6, HIGH);
        digitalWrite(9, HIGH);
        digitalWrite(10, HIGH);
        delay(300);
      
        digitalWrite(3, LOW);
        digitalWrite(5, HIGH);
        digitalWrite(6, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, HIGH);
        delay(150);
      
        digitalWrite(3, HIGH);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, LOW);
        delay(150);
      
        digitalWrite(3, LOW);
        digitalWrite(5, HIGH);
        digitalWrite(6, LOW);
        digitalWrite(9, LOW);
        digitalWrite(10, HIGH);
        delay(800);

        digitalWrite(3, HIGH);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(9, HIGH);
        digitalWrite(10, LOW);
        delay(800);

        digitalWrite(3, LOW);
        digitalWrite(5, LOW);
        digitalWrite(6, HIGH);
        digitalWrite(9, LOW);
        digitalWrite(10, HIGH);
        delay(800);
          }
        } 
        
          else {
          
          digitalWrite(3, HIGH);
          digitalWrite(5, LOW);
          digitalWrite(6, LOW);
          digitalWrite(7, LOW);
          digitalWrite(9, HIGH);
          digitalWrite(10, LOW);
          delay(500);

          digitalWrite(3, HIGH);
          digitalWrite(5, HIGH);
          digitalWrite(6, HIGH);
          digitalWrite(7, LOW);
          digitalWrite(9, LOW);
          digitalWrite(10, HIGH);
          delay(200);

          digitalWrite(3, LOW);
          digitalWrite(5, HIGH);
          digitalWrite(6, HIGH);
          digitalWrite(7, HIGH);
          digitalWrite(9, HIGH);
          digitalWrite(10, LOW);
          delay(600);

          digitalWrite(3, LOW);
          digitalWrite(5, HIGH);
          digitalWrite(6, HIGH);
          digitalWrite(7, LOW);
          digitalWrite(9, HIGH);
          digitalWrite(10, LOW);
          delay(500);

    }
 }
