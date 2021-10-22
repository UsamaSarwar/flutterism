import 'dart:io';

main(List<String> args) {
  String? password = '';

  do {
    print('\nEnter Password: ');
    password = stdin.readLineSync();
    if (password == '786') {
      print('Welcome!');
    } else {
      print('Wrong Password');
    }
  } while (password != '786');
}

/// Assignment
/// Enter password: 123
/// Password is incorrect
/// 
/// Try Again!
/// Enter password: 786
/// 
/// Success!
