# Challenge 1

## Solution with `For Loop`

Write a program that displays on the console (using print) the numbers from 1 to 100 (including both). If the number is multiple of 3 replace with the word "fizz". If it's multiple of 5 with the word "buzz". And finally if it's multiple of both 3 and 5 with the word "fizzbuzz".
Taken from: [Retos de Programacion by MoureDev](https://retosdeprogramacion.com/semanales2023)

```Dart
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
```

>Note that line 11 must be checked first, because if it is placed at the end, that condition will never be met. e.g : number=15 is multiple of both 3 and 5, the program should display "fizzbuzz", but when the first condition is acomplished(15 % 3 == 0 the program will display "fizz" but this is a mistake) since the rest of conditions will never be ejecuted, and the program will pass to the next loop.

## Solution with `While Loop`

```Dart
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
```
