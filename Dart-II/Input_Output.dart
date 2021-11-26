// importing dart:io file
import 'dart:io';

void main() {
  print("Enter your name?");
  String? name = stdin.readLineSync();

  print("Enter your age?");
  double? age = double.parse(stdin.readLineSync()!);
  
  print("Name: $name\nAge: $age");
}
