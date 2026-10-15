import 'myLib.dart';

double calculateOvertimePay(Employee emp) {
  return emp.overtimeHours * emp.overtimePay;
}

double calculateTotalSalary(Employee emp) {
  return emp.basicSalary + calculateOvertimePay(emp);
}

void main() {
  Employee emp1 = Employee('Ainur', 50000.0, 10.0, 7.0);

  double totalSalary = calculateTotalSalary(emp1);
  print("Total Salary = \$$totalSalary USD");
}
