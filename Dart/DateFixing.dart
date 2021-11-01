import 'dart:io';

class GetDateTime {
  int date = DateTime.now().day;
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  int get getCurrentDate => this.date;
  int get getCurrentMonth => this.month;
  int get getCurrentYear => this.year;
}

int calculatedate(int datebirth, int currentDate) {
  int ageInDays = currentDate - datebirth;
  return ageInDays;
  /// 22 OCT - 01 NOV
}

int calculatemonth(int monthbirth, int Currentmonth) {
  int ageInMonths = Currentmonth - monthbirth;
  return ageInMonths;
}

int calculateyear(int yearbirth, int Currentyear) {
  int ageInYears = Currentyear - yearbirth;
  return ageInYears;
}

main(List<String> args) {
  GetDateTime _getDateTime = GetDateTime();
  print("Enter your Date of birth:");
  int? birthDate = int.parse(stdin.readLineSync()!);
  print("Enter your Month of birth:");
  int? birthmonth = int.parse(stdin.readLineSync()!);
  print("Enter your Year of birth:");
  int? birthyear = int.parse(stdin.readLineSync()!);
  print('Age in days: ' +
      calculatedate(birthDate, _getDateTime.getCurrentDate).toString() +
      ' days');
  print('Age in months: ' +
      calculatemonth(birthmonth, _getDateTime.getCurrentMonth).toString() +
      ' months');
  print('Age in years: ' +
      calculateyear(birthyear, _getDateTime.getCurrentYear).toString() +
      ' years');
}
