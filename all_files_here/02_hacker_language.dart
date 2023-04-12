/*
Escribe un programa que reciba un texto y transforme lenguaje natural a
"lenguaje hacker" (conocido realmente como "leet" o "1337"). Este lenguaje
se caracteriza por sustituir caracteres alfanuméricos.
Utiliza esta tabla (https://www.gamehouse.com/blog/leet-speak-cheat-sheet/) 
con el alfabeto y los números en "leet".
(Usa la primera opción de cada transformación. Por ejemplo "4" para la "a")
*/

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

/*
This is a Dart program that uses a function to translate a given text string 
into "Leet Code" or "1337 5p34k", an alternative language used online in gaming 
and computing culture. This language is based on replacing letters with similar 
symbols and numbers.

The leetTranslator() function takes a string of text as an argument and returns 
the Leet Code version of that string. The code uses a dictionary alphabetLeetMap 
that maps each letter of the alphabet to its Leet Code equivalent. For example, 
the letter "A" is translated to "4", the letter "B" is translated to "I3", 
and so on.

First, the function splits the text string into a list of individual characters 
using text.split(''). Then, it loops through each character in the list using a 
for loop. Inside the loop, each character is converted to uppercase using 
char.toUpperCase(), and it is checked whether alphabetLeetMap contains that 
character. If so, the character is translated to its Leet Code equivalent using 
alphabetLeetMap[upperCaseChar]!, and it is added to a leetCodeList. If the 
character is not in the dictionary, it is simply added to leetCodeList without 
being modified.

Finally, the function returns the Leet Code version of the original string by 
joining the elements of the leetCodeList with leetCodeList.join('').

In the main code, the leetTranslator() function is called with an example text 
string, and the result is printed to the console using print().
*/