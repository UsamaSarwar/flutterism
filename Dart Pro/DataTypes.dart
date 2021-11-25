/// Rules for Naming Veriables
/// (x) Special Character except '_'
/// (x) Space Character
/// (+) Alphanumeric Character
/// (x) Numeric Character
/// (x) Punctuation Character
/// (x) Symbol Character
/// (x) Start with Number

void main(List<String> args) {
  String _string = 'This is String';
  print('_string = $_string');
  int _int = 123;
  print('_int = $_int');
  double _double = 123.45;
  print('_double = $_double');
  bool _bool = true;
  print('_bool = $_bool');

  /// Different from C++
  var _var = 'This is var'; // Does not override datatype
  print('_var = $_var');

  dynamic _dynamic = 'This is dynamic'; // Does override datatype
  print('_dynamic = $_dynamic');

  List<dynamic> _list = ['This is item 1', 'This is item 2'];
  print('_list[0] = ${_list[0]}');
  print('_list[1] = ${_list[1]}');

  Map<String, dynamic> _map = {
    'key1': 'This is item 1',
    'key2': 'This is item 2',
  };

  print('_map = ${_map.toString()}');
  print('_map[key1] = ${_map['key1']}');
  print('_map[key2] = ${_map['key2']}');

  _map.forEach((key, value) {
    print('$key = $value');
  });
}

/// Assignment
/// You need to print a message to the console
/// "Hi, I'm Software Engineer and I love $Flutter"
