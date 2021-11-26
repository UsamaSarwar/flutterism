int calculateAreaOfSquare(int side) {
  return side * side;
}

int calculateAreaOfRectangle(int length, int width) {
  return length * width;
}

double calculateAreaOfCircle(int radius) {
  double PI = 3.14159265358979323846;
  return radius * radius * PI;
}

int _calculateAreaOfSquare({required int side}) {
  return side * side;
}

int _calculateAreaOfRectangle({required int length, required int width}) {
  return length * width;
}

double _calculateAreaOfCircle({required int radius}) {
  double PI = 3.14159265358979323846;
  return radius * radius * PI;
}

void main(List<String> args) {
  print('Calculate Area of Square (Side = 12): ' +
      calculateAreaOfSquare(12).toString());
  print('Calculate Area of Rectangle (Length = 12, Width = 10): ' +
      calculateAreaOfRectangle(12, 10).toString());
  print('Calculate Area of Circle (Radius = 10): ' +
      calculateAreaOfCircle(10).toString());

  print('Calculate Area of Square (Side = 12): ' +
      _calculateAreaOfSquare(side: 12).toString());
  print('Calculate Area of Rectangle (Length = 12, Width = 10): ' +
      _calculateAreaOfRectangle(length: 12, width: 10).toString());
  print('Calculate Area of Circle (Radius = 10): ' +
      _calculateAreaOfCircle(radius: 10).toString());
}
