import 'package:bank_baka/Account.dart';
import 'package:bank_baka/Transaction.dart';
import 'package:bank_baka/TransactionEngine.dart';

void main(List<String> args) {
  Account a = Account("S", "SP", "DSW99AS12", 12000, "Savings");
  var e = TransactionEngine(a);
  print(a.getTodaysWithdrawable());
  e.deposit(15000);
  e.withdraw(9000);
  e.withdraw(1500);
  e.withdraw(500);
  for (Transaction t in a.getTransactions()) {
    print("${t.getAmount()} _ ${t.getType()}");
  }
  print(a.getTodaysWithdrawable());
}
