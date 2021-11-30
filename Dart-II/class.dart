class Student {
  String name;
  int age;
  int rollNo;
  Student({required this.name, required this.age, required this.rollNo});

  printData() {
    print("NAME: " + name);
    print("AGE: " + age.toString());
    print("ROLL NO: " + rollNo.toString());
  }
}

void main(List<String> args) {
  Student student = Student(name: 'Usama', age: 20, rollNo: 1);
  student.printData();
}
