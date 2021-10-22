//? Conditional Statements
/// if
/// if else
/// if else if
/// switch
/// break
/// continue

main(List<String> args) {
  // Example of if else
  int age = 32;
  if (age >= 18) {
    print('You are eligible to vote');
  } else {
    print('You are not eligible to vote');
  }
  // Example of if else if

  String result = 'LoSe';

  if (result == 'Win') {
    print('Congratulations! You won the match');
    // Case Control Flow
  } else if (result.toLowerCase() == 'lose') {
    print('Better Luck next time');
  } else {
    print('Match is drawn');
  }

  // Nested if else
  String password = 'abc@gmail.com';
  if (password.length >= 8) {
    print('Strong Password');
    if (password.contains('@')) {
      print('Password contains @');
    } else {
      print('Password does not contain @');
    }
  } else {
    print('Weak Password\nTry again');
  }

  // Example of switch
  int number = 5;
  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    case 4:
      print('Four');
      break;
    case 5:
      print('Five');
      break;
    default:
      print('Invalid number');
  }
}
