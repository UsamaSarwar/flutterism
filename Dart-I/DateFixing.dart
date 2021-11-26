import 'dart:io';

class GetDateTime {
  int date = DateTime.now().day;
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  int get getCurrentDate => this.date;
  int get getCurrentMonth => this.month;

  int get getCurrentYear => this.year;
}

int calculatedate(int datebirth) {
  DateTime dateTime =
      DateTime(0, 0, DateTime.now().day).subtract(Duration(days: datebirth));
  return dateTime.day;
}

int calculatemonth(int monthbirth, int Currentmonth) {
  int ageInMonths;
  if (monthbirth >= Currentmonth)
    ageInMonths = monthbirth - Currentmonth;
  else
    ageInMonths = Currentmonth - monthbirth;
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
  print('Age in days: ' + calculatedate(birthDate).toString() + ' days');
  print('Age in months: ' +
      calculatemonth(birthmonth, _getDateTime.getCurrentMonth).toString() +
      ' months');
  if (calculateyear(birthyear, _getDateTime.getCurrentYear) < 0)
    print('Invalid Year of Birth');
  else
    print('Age in years: ' +
        calculateyear(birthyear, _getDateTime.getCurrentYear).toString() +
        ' years');
}
