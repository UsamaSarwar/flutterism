/// Class Example
class Student {
  // Members
  String studentName;
  int studentRollNumber;
  int studentClass;

  // Name Constructor
  Student(
      {required this.studentName,
      required this.studentRollNumber,
      required this.studentClass});

  void printStudentDetails() {
    print("Student Name: ${this.studentName}" +
        '\n' +
        "Student Roll Number: ${this.studentRollNumber}" +
        '\n'
            "Student Class: ${this.studentClass}");
  }
}

main(List<String> args) {
  // String variableName= 'init';
  // Create an object of Student class
  Student student1, student2; // Object Decleration
  student1 = Student(
    studentName: 'Usama Sarwar',
    studentRollNumber: 090,
    studentClass: 17,
  ); // Object Initialization
  student2 = Student(
    studentName: 'Abdullah Naveed',
    studentRollNumber: 070,
    studentClass: 11,
  ); // Object Initialization

  student1.printStudentDetails(); // method of student1 object
  student2.printStudentDetails();
}
