import 'package:bank_baka/Account.dart';

class TransactionEngine {
  Account account;

  TransactionEngine(this.account);

  void setAccount(Account account) {
    this.account = account;
  }

  void deposit(double amount) {
    account.setBalance(account.getBalance + amount);
    print("Success");
    print(account.getBalance);
  }
}
