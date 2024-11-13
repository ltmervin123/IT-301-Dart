import 'Customer.dart';
import 'Employee.dart';
import 'dart:io';

class Bank {
  void login(String username, String password) {}

  void logout() {}

  void addAccount() {}

  void addCustomer() {}

  void viewCustomer() {}

  void saveCustomer() {}

  void customerDashboard() {}

  void employeeDashboard() {}

  Customer getCustomer() {
    File file = File('customer.txt');
    String content = file.readAsStringSync();
    List<String> lines = content.split(' ');
    int id = int.parse(lines[0]);
    String name = lines[1];
    String username = lines[2];
    String password = lines[3];
    String role = lines[4];
    double balance = double.parse(lines[5]);
    Customer customer = Customer(id, name, username, password, role, balance);

    return customer;
  }

  Employee getEmployee() {
    File file = File('employee.txt');
    String content = file.readAsStringSync();
    List<String> lines = content.split(' ');
    int id = int.parse(lines[0]);
    String name = lines[1];
    String username = lines[2];
    String password = lines[3];
    String role = lines[4];
    Employee employee = Employee(id, name, username, password, role);
    return employee;
  }
}
