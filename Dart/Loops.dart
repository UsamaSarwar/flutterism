//? Loops
/// for loop
/// while loop
/// do while loop
/// break
/// continue

main(List<String> args) {
  /// for (initialization; condition; increment){
  /// body
  /// }
  int table = 98;
  for (int num = 1; num <= 10; num++) {
    /// 2 x 1 = 2
    print('$table x $num = ${table * num}');
    print(table.toString() +
        ' x ' +
        num.toString() +
        ' = ' +
        (table * num).toString()); // Alternative way to write the above line
  }

  /// while (condition){
  /// body
  /// }
  // Example of while loop

  int num = 1;
  while (num <= 10) {
    print('$table x $num = ${table * num}');
    num++;
  }

  do { // It will execute at least once
    print('$table x $num = ${table * num}');
    num++;
  } while (num <= 10);
}
