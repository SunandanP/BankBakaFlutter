import 'package:bank_baka/Transaction.dart';

import 'package:bank_baka/Account.dart';

class TransactionEngine {
  Account account;

  TransactionEngine(this.account);

  void setAccount(Account account) {
    this.account = account;
  }

  void deposit(double amount) {
    account.setBalance(account.getBalance + amount);
    account.addTransaction(Transaction(DateTime.now(), "Deposit", amount));
    print("Success");
    print(account.getBalance);
  }

  void withdraw(double amount) {
    double dailyLimit = account.getTodaysWithdrawable();
    if (dailyLimit <= 0) {
      print("Daily limit reached!");
    } else if (0 > dailyLimit - amount) {
      print(
          "Daily limit is being breached\ntry withdrawing amount till $dailyLimit");
    } else {
      if (account.getBalance - amount >= 0) {
        account.setBalance(account.getBalance - amount);
        account
            .addTransaction(Transaction(DateTime.now(), "Withdrawal", amount));
        account.updateTodaysWithdrawable();
        print("Successfully withdrew $amount");
      }
    }
  }
}
