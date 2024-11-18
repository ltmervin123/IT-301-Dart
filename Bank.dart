import 'Customer.dart';
import 'Employee.dart';
import 'dart:io';

List<String> costumerDetail = [];
List<String> employeeDetail = [];
const String employeeFileName = "Employee.txt";
const String customerFileName = "Customer.txt";

class Bank {
  void login() {
    //Set Customer and Employee datas
    setData();
    while (true) {
      try {
        print("\n===== LOG IN =====");
        print("Enter username : ");
        String username = stdin.readLineSync()!;
        print("Enter password : ");
        String password = stdin.readLineSync()!;
        List<String> user = isExist(username, password);
        if (user.isNotEmpty) {
          String role = user[4];
          switch (role) {
            case "customer":
              customerDashboard(user);
              break;
            case "employee":
              employeeDashboard(user);
              break;
          }
        } else {
          print("\nINVALID USERNAME OR PASSWORD");
        }
      } catch (Error) {
        print(Error);
      }
    }
  }

  void logout() {}

  void addAccount() {}

  void addCustomer() {}

  void viewCustomer() {}

  void saveCustomer() {}

  void customerDashboard(List<String> user) {
    print("\nCUSTOMER DASHBOARD");
    print("Hello ${user[1]}");

    //Intialize Customer object
    Customer customer = new Customer(int.parse(user[0]), user[1], user[2],
        user[3], user[4], double.parse(user[5]));

    while (true) {
      print("1. CHECKBALANCE");
      print("2. DEPOSTI");
      print("3. WITHDRAW");
      print("4. LOGOUT");
      print("ENTER CHOICE : ");
      String choice = stdin.readLineSync()!;

      switch (choice) {
        case "1":
          checkBalance(customer);
      }
    }
  }

  void employeeDashboard(List<String> user) {
    print("\nEMPLOYEE DASHBOARD");
    print("Hello ${user[1]}");
  }

  void getCustomer() {
    File file = new File(customerFileName);
    List<String> data = file.readAsLinesSync();
    for (var datas in data) {
      costumerDetail.add(datas);
    }
  }

  void getEmployee() {
    File file = new File(employeeFileName);
    List<String> data = file.readAsLinesSync();
    for (var datas in data) {
      employeeDetail.add(datas);
    }
  }

  List<String> isExist(String username, String password) {
    //Check if user exist at the customeer record
    for (var data in costumerDetail) {
      //Extract record
      List<String> record = data.split(" ");
      //Extract username username from the record
      String currentUserName = record[2];
      //Extract password password from the record
      String currentPassword = record[3];

      //Check if the username and password if match with the current record username and password
      if (username == currentUserName && password == currentPassword) {
        //Return true if match
        return record;
      }
    }
    //Check if user exist at the employee record
    for (var data in employeeDetail) {
      //Extract record
      List<String> record = data.split(" ");
      //Extract username username from the record
      String currentUserName = record[2];
      //Extract password password from the record
      String currentPassword = record[3];

      //Check if the username and password if match with the current record username and password
      if (username == currentUserName && password == currentPassword) {
        //Return true if match
        return record;
      }
    }
    return [];
  }

  void setData() {
    //Set Customer Data
    getCustomer();

    //Set Employee Data
    getEmployee();
  }

  void checkBalance(Customer customer) {}
}
