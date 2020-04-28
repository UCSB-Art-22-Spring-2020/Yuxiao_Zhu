//Art 22 2020 Spring
//Author: Yuxiao Zhu
//Code Activity 4; I revised it after watching the class1B
//April 22, 2020

int[] evens = new int[20]; //new array with 20 elements of type "even"
int[] odds = new int[20]; //new array with 20 elements of type "odd"
int evenNum = 0; //I think 0 is the first even number, so we can count from 0
int oddNum = 1; // count from 1

void setup() {
  
    for (int i = 0; i < evens.length; i++) { // fill in the evens array
      evens[i] = evenNum;
      evenNum += 2; //evenNum = evenNum +2

    }
    
    for (int i = 0; i < odds.length; i++) { // fill in the odds array
      odds[i] = oddNum;
      oddNum += 2; //oddNum = oddNum +2
    }
    
    printArray(evens);
    printArray(odds);
  }
