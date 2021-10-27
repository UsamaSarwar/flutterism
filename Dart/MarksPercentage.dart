import 'dart:io';

class Subject {
  double totalMarks = 150;
  double gainedMarks;
  Subject({required this.gainedMarks});

  /// Getter
  double get getGainedMarks => gainedMarks;

  /// Setter
  set setGainedMarks(double gainedMarks) => this.gainedMarks = gainedMarks;
  // double get percentage => (gainedMarks / totalMarks) * 100;
  // double get percentageWithOutRound {
  //   double percentage = (gainedMarks / totalMarks) * 100;
  //   return percentage;
  // }
  // double findPercentage(){
  //   double percentage = (gainedMarks / totalMarks) * 100;
  //   return percentage;
  // }
}

double calculatePercentage(double gainedMarks, double totalMarks) {
  double percentage = (gainedMarks / totalMarks) * 100;
  return percentage;
}

void main() {
  print("Enter your Urdu marks...");
  double? urduMarks = double.parse(stdin.readLineSync()!);
  Subject urdu = Subject(gainedMarks: urduMarks);
  print("Enter your English marks...");
  double? englishMarks = double.parse(stdin.readLineSync()!);
  Subject english = Subject(gainedMarks: englishMarks);
  print("Enter your Math marks...");
  double? mathMarks = double.parse(stdin.readLineSync()!);
  Subject math = Subject(gainedMarks: mathMarks);
  print("Enter your Science marks...");
  double? scienceMarks = double.parse(stdin.readLineSync()!);
  Subject science = Subject(gainedMarks: scienceMarks);

  double totalMarks = urdu.gainedMarks +
      english.gainedMarks +
      math.gainedMarks +
      science.gainedMarks;
  double percentage = calculatePercentage(totalMarks, 600);

  print('Percentage: $percentage%');
  if (percentage <= 33)
    print('You are fail');
  else
    print('You are pass');
}

// void main() => print('hello');
