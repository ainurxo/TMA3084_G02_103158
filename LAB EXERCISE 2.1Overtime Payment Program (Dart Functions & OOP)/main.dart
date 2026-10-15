import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;

  var Ainur = emp.Employee('Quality Assurance', 'New York', 5000, 7);

  if (Ainur.salary >= 4000) {
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }

  double total = Ainur.salary + (Ainur.overtimeHr * extraPayPerHr);
  print('Total Salary = \$$total USD');
}
