import 'Person.dart';

class Customer extends Person {
  double? balance;

  Customer(int id, String name, String username, String password, String role,
      double balance)
      : super(id, name, username, password, role) {
    this.balance = balance;
  }

  void setBalance(double balance) {
    this.balance = balance;
  }

  double getBalance() {
    return balance!;
  }
}
