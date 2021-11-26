//? Function
/// Input --> Procrss --> Output

//? Function Return Type
/// Input --> Procrss --> Output //?(Return Type)
/// Before the function_name
///
/// returnType functionName(Paremeters/Inputs){
/// Body
/// return value;
/// }

//? Add Function
/// This funtions adds two numbers
int add(int a, int b) {
  int c = a + b;
  return c;
}

main() {
  //? Printing
  print('String');
  print(123);
  print(true);
  print(null);
  print(add(10, 20));

  //? Variables
  int integer = 10;
  print(integer);
  double doubles = 20.5;
  print(doubles);
  String string = 'Hello World';
  print(string);
  bool boolean = true;
  print(boolean);
  // //? var is used to declare a variable and it can be changed but with same datatype
  var variable = 672;
  print(variable);
  // //? var is used to declare a variable and it can be changed with any datatype
  dynamic _dynamic = 'Hello';
  _dynamic = 123;
  _dynamic = true;
  print(_dynamic);
  List<dynamic> dynamicList = [1, 2, 'String', 4, 5];
  List<int> intList = [1, 2, 3, 4, 5];
  print(dynamicList+intList); // Concatenation
  Map<dynamic, dynamic> _map = {
    'name': 'Abdullah',
    'age': 19,
    'isStudent': true,
  };
  print(_map['name']);
  Map<String, String> _map2 = {
    'name': 'Abdullah',
    'age': '19',
    'isStudent': 'true',
  };
  print(_map2['age']);
}
