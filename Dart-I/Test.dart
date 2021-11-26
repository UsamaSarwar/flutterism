/// Suppose you are hired by a company to write a program that will take length and width of a site
/// and the software will calculate the area of the site.
///
/// Area of site = length x width
///
/// You need to make a function that will take the length and width of the site and return the area of the site.

/// Sample Program:
///
/// Please enter length of site in meters:
/// 12
/// Please enter width of site in meters:
/// 10
/// Area of site = 120 square meters
///
/// ----------------------------------------------------------------------------
///

import 'dart:io';

area() {
  print("Please Enter the lenght of your room");
  var lenght = double.parse(stdin.readLineSync()!);
  print("Please Enter the width of room");
  var width = double.parse(stdin.readLineSync()!);
  var area = lenght * width;
  return print("Area of the room is $area");
}

main(List<String> args) {
  area();
}
