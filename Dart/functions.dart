/// Functions in Dart

void ConstructRoom1(double length, double width) {
  print('Length: $length \nWidth: $width');
}

// Named Paremeters Case 1
void ConstructRoom2({required double length, required double width}) {
  print('Length: $length \nWidth: $width');
}

// Named Paremeters Case 2
void ConstructSquareRoom3({double? length, required double width}) {
  print('Length: $width \nWidth: $width');
}

main(List<String> args) {
  ConstructRoom1(12, 30);
  ConstructRoom2(length: 12, width: 30);
  ConstructSquareRoom3(width: 30);
  ConstructSquareRoom3(length: 30, width: 30);
}
