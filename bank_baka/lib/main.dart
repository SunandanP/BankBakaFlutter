import 'package:bank_baka/Account.dart';
import 'package:bank_baka/Transaction.dart';
import 'package:bank_baka/TransactionEngine.dart';

void main(List<String> args) {
  Account a = Account("S", "SP", "DSW99AS12", 12000);
  var e = TransactionEngine(a);
  e.deposit(15000);
}
