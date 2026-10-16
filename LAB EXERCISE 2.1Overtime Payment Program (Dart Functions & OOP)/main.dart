import 'myLib.dart';

void main() {
  Employee employee = Employee(
    'John',
    5000.0,
    2.0,
    35.0,
  );

  double totalSalary = employee.calculateTotalSalary();

  print('Total Salary = \$${totalSalary} USD');
}
