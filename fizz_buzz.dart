/*
Write a program that displays on the console (using print) the numbers from
1 to 100 (including both). If the number is multiple of 3 replace with the word
"fizz". If it's multiple of 5 with the word "buzz". And finally if it's multiple
of both 3 and 5 with the word "fizzbuzz".
*/

///Using a for loop

void main() {
  for (int number = 1; number >= 1 && number <= 100; number++) {
    if (number % 3 == 0 && number % 5 == 0) {
      print('fizzbuzz');
    } else if (number % 3 == 0) {
      print('fizz');
    } else if (number % 5 == 0) {
      print('buzz');
    } else {
      print('$number');
    }
  }
}

///Using a while loop

/*
void main() {
  int number = 1;

  while (number <= 100) {
    if (number % 3 == 0 && number % 5 == 0) {
      print('fizzbuzz');
    } else if (number % 3 == 0) {
      print('fizz');
    } else if (number % 5 == 0) {
      print('buzz');
    } else {
      print('$number');
    }
    number++;
  }
}
*/
