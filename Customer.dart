import 'Person.dart';

class Customer extends Person {
  double? _balance = 0.0;

  Customer(int id, String name, String username, String password, String role,
      double balance)
      : super(id, name, username, password, role) {
    this._balance = balance;
  }

  void addBalance(double balance) {
    _balance = (_balance ?? 0) + balance;
  }

  double getBalance() {
    return _balance!;
  }
}
