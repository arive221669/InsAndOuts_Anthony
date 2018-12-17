String wrong = "false";
String right = "false";


void keyPressed() {
  if (key == 'a' && state == "pregame") {
    state = "startgame";
    println(state);
  } else if (key == 'a' && state == "startgame") {
    state = "question 1";
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  } 
  // Question 1
    else if (key == 'a' && state == "question 1") {
    wrong = "true";
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  }
  else if (key == 'b' && state == "question 1") {
    state = "question 2";
    right = "true";
    win_cond++;
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  } 
    else if (key == 'c' && state == "question 1") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  }
    else if (key == 'd' && state == "question 1") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  }
  
  // Question 2
  else if (key == 'a' && state == "question 2") {
    state = "question 3";
    right = "true";
    win_cond++;
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  } 
    else if (key == 'b' && state == "question 2") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
    else if (key == 'c' && state == "question 2") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
    else if (key == 'd' && state == "question 2") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
  
  // Question 3
  else if (key == 'a' && state == "question 3") {
    wrong = "true";
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  } 
    else if (key == 'b' && state == "question 3") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
    else if (key == 'c' && state == "question 3") {
      state = "question 4";
      right = "true";
      win_cond++;
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
    else if (key == 'd' && state == "question 3") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
  } 
  
  // Question 4
  else if (key == 'a' && state == "question 4") {
    wrong = "true";
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  }
    else if (key == 'b' && state == "question 4") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
    }
    else if (key == 'c' && state == "question 4") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
      }
    else if (key == 'd' && state == "question 4") {
      state = "question 5";
      right = "true";
      win_cond++;
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
      }
      
    // Question 5
  else if (key == 'a' && state == "question 5") {
    wrong = "true";
    questionNumber = int(random(Questions.length));
    println(state);
    println(questionNumber);
  }
    else if (key == 'b' && state == "question 5") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
    }
    else if (key == 'c' && state == "question 5") {
      right = "true";
      win_cond++;
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
      }
    else if (key == 'd' && state == "question 5") {
      wrong = "true";
      questionNumber = int(random(Questions.length));
      println(state);
      println(questionNumber);
      }
}
