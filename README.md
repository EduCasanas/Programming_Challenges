# Programming Challenges

## Challenge 0

Write a program that displays on the console (using print) the numbers from 1 to 100 (including both). If the number is multiple of 3 replace with the word "fizz". If it's multiple of 5 with the word "buzz". And finally if it's multiple of both 3 and 5 with the word "fizzbuzz".
Taken from: [Retos de Programacion by MoureDev](https://retosdeprogramacion.com/semanales2023)

### Solution with `While Loop`

```Dart
void main() {
  int number = 1; // initialize the variable 'number' to 1

  while (number <= 100) { // loop through numbers from 1 to 100

    if (number % 3 == 0 && number % 5 == 0) { // check if number is divisible by both 3 and 5
      print('fizzbuzz'); // print 'fizzbuzz' if the number is divisible by both 3 and 5
    } else if (number % 3 == 0) { // check if number is divisible by 3
      print('fizz'); // print 'fizz' if the number is divisible by 3
    } else if (number % 5 == 0) { // check if number is divisible by 5
      print('buzz'); // print 'buzz' if the number is divisible by 5
    } else { // if the number is not divisible by either 3 or 5
      print('$number'); // print the number itself
    }
    number++; // increment the number variable by 1
  }
}
```

>Note in the first `if` this must be checked first, because if it is placed at the end, that condition will never be met. e.g : number=15 is multiple of both 3 and 5, the program should display "fizzbuzz", but when the first condition is acomplished(15 % 3 == 0 the program will display "fizz" but this is a mistake) since the rest of conditions will never be ejecuted, and the program will pass to the next loop.

## Challenge 1

Write a program that receives text and transforms natural language to "hacker language" (actually known as "leet" or "1337"). This language is characterized by substituting alphanumeric characters. Use this table [](https://www.gamehouse.com/blog/leet-speak-cheat-sheet/) with the alphabet and numbers in "leet". (Use the first option of each transformation. For example, use "4" for "a").
Taken from: [Retos de Programacion by MoureDev](https://retosdeprogramacion.com/semanales2023)

### Solution code 01

```Dart
// Define the main function that calls the leetTranslator function with an 
//example argument
void main() {
  print(leetTranslator(text: 'ñEste es uÑ téxto prueba 20'));
}

// Define the leetTranslator function that takes a string of text as an 
// argument
String leetTranslator({required String text}) {
   
  // Split the text string into a list of individual characters
  List<String> stringList = text.split('');

  // Define a dictionary that maps each letter of the alphabet to its 
  //"Leet Code" equivalent
  Map<String, String> alphabetLeetMap = {
    'A': '4', 'B': 'I3', 'C': '[', 'D': ')', 'E': '3', 'F': '|=',
    'G': '&', 'H': '#', 'I': '1', 'J': ',_|', 'K': '>|', 'L': '1',
    'M': '\/\\\/\\', 'N': '^/', 'O': '0', 'P': '|*', 'Q': '(_,)',
    'R': 'I2', 'S': '5', 'T': '7', 'U': '(_)', 'V': '\\\/', 'W': '\/\/',
    'X': '><', 'Y': 'j', 'Z': '2', '1': 'L', '2': 'R', '3': 'E', '4': 'A',
    '5': 'S', '6': 'b', '7': 'T', '8': 'B', '9': 'g', '0': 'o'
  };

  // Define an empty list to store the Leet Code version of each character
  List<String> leetCodeList = [];
  
  // Loop through each character in the character list
  for (String char in stringList){

    // Convert the character to uppercase
    String upperCaseChar = char.toUpperCase();

    // If the dictionary contains the character, translate it to Leet Code and 
    //add it to the Leet Code list
    if (alphabetLeetMap.containsKey(upperCaseChar)){
      leetCodeList.add(alphabetLeetMap[upperCaseChar]!);
    } 
    // If the dictionary doesn't contain the character, add it to the Leet Code 
    //list without modifying it
    else {
      leetCodeList.add(char);
    }
  }
  // Return the Leet Code version of the original string by joining all the 
  //characters in the list
  return leetCodeList.join('');
}
```

## Challenge 2

## Challenge 3

## Challenge 4

## Challenge 5
