import 'Bank.dart';
import 'dart:io';

Bank bank = new Bank();
void main() {
  while (true) {
    print("BANKING SYSTEM");
    print("1. LOGIN");
    print("2. EXIT");
    print("ENTER CHOICE: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        bank.login();
        break;
      case "2":
        print("\nPROGRAM TERMINATING.....");
        return;
      default:
        print("\nINVALID CHOICE....");
    }
  }
}
