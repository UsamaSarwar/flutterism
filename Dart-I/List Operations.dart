/// Algorithm Paractice

void main(List<String> args) {
  // Let's create a list of numbers
  List<int> numbers = [11, 2, 33, 43, 45, 66, 7, 66, 19, 5];
  print("List: "+numbers.toString());

  // Sorting the list (Accending)
  numbers.sort();
  print('Sorted List (Accending): ' + numbers.toString());

  // Sorting the list (Decending)
  numbers.sort();
  print('Sorted List (Decending): ' + numbers.reversed.toString());

  // Smallest Integer
  print('Smallest Integer: ' + numbers.first.toString());

  // Largest Integer
  print('Largest Integer: ' + numbers.last.toString());

  // Count of Integer
  print('Count of Integer: ' + numbers.length.toString());

  // Sum of all Integers
  print('Sum of all Integers: ' + numbers.reduce((a, b) => a + b).toString());

  // Average of all Integers
  print('Average of all Integers: ' + (numbers.reduce((a, b) => a + b) / numbers.length).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [indexOf(66)]: ' + numbers.indexOf(66).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [lastIndexOf(66)]: ' + numbers.lastIndexOf(66).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [indexWhere((element) => element == 66)]: ' + numbers.indexWhere((element) => element == 66).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [lastIndexWhere((element) => element == 66)]: ' + numbers.lastIndexWhere((element) => element == 66).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [contains(66)]: ' + numbers.contains(66).toString());

  // Search for a specific Integer
  print('Search for a specific Integer [elementAt(2)]: ' + numbers.elementAt(2).toString());
}
