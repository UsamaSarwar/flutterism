/// Inheritennce Examples
class Vehicle {
  // Members
  int? tyres;
  String? engine;
  String? color;

  Vehicle({required this.tyres, required this.engine, required this.color});
}

class Car extends Vehicle {
  // Members
  // int? tyres;
  // String? engine;
  // String? color;
  // Car({required this.tyres, required this.engine, required this.color});

  Car()
      : super(
            color: 'Red',
            engine: '1000cc',
            tyres: 4); // Alternative way to do it
}

// class Honda extends Car {
//   Honda() : super(color: 'Red', engine: '1000cc', tyres: 4);
// }

class Motorcycle extends Vehicle {
  Motorcycle()
      : super(
            color: 'Black',
            engine: '125cc',
            tyres: 2); // Alternative way to do it
}

main(List<String> args) {
  /// Alternative way to do it
  Car car = Car();
  print(
      'CAR => Tyres: ${car.tyres} || Color: ${car.color} || Engine: ${car.engine}');
  Motorcycle motorcycle = Motorcycle();
  print(
      'MOTORCYCLE => Tyres: ${motorcycle.tyres} || Color: ${motorcycle.color} || Engine: ${motorcycle.engine}');
}
