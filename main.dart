import 'myLib.dart';

double calculateTotalSalary(Employee emp) {
  return emp.basicSalary + emp.overtimePay;
}

void main() {
  Employee emp1 = Employee('Ainur', 50000.0, 650.0);

  double totalSalary = calculateTotalSalary(emp1);
  print("Total Salary = \$$totalSalary USD");
}
