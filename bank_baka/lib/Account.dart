// ignore_for_file: unnecessary_this

import 'package:bank_baka/Transaction.dart';

class Account {
  String _name;
  String _pass;
  String _PAN;
  double _balance;
  List<Transaction> _transactions = [];

  Account(this._name, this._pass, this._PAN, this._balance) {
    _transactions.add(Transaction(DateTime.now(), "Deposit", this._balance));
  }

  String get getName => this._name;

  void setName(String name) => this._name = name;

  get getPass => this._pass;

  void setPass(pass) => this._pass = pass;

  get getPAN => this._PAN;

  void setPAN(PAN) => this._PAN = PAN;

  get getBalance => this._balance;

  void setBalance(balance) => this._balance = balance;

  List<Transaction> getTransactions() {
    return this._transactions;
  }

  void setTransactions(List<Transaction> txn) => this._transactions = txn;

  @override
  String toString() {
    return "Name : ${_name} \nPass : ${_pass} \nPAN : ${_PAN} \nBalance : ${_balance}";
  }
}
