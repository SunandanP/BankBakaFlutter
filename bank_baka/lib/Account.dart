// ignore_for_file: unnecessary_this

import 'package:bank_baka/Transaction.dart';

class Account {
  static List<double> withdrawables = [10000, 80000, 120000];
  String _name;
  String _pass;
  String _PAN;
  double _balance;
  double _todaysWithdrawable = 10000;
  List<Transaction> _transactions = [];
  String _accountType;
  int txnUpdateIndex = 0;

  Account(this._name, this._pass, this._PAN, this._balance, this._accountType) {
    _transactions.add(Transaction(DateTime.now(), "Deposit", this._balance));

    if (_accountType == "Current")
      _todaysWithdrawable = 80000;
    else if (_accountType == "Salary") _todaysWithdrawable = 120000;
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

  void setAccountType(String type) {
    this._accountType = type;
  }

  String getAccountType() {
    return _accountType;
  }

  void setTodaysWithdrawable(double amount) {
    this._todaysWithdrawable = amount;
  }

  double getTodaysWithdrawable() {
    return _todaysWithdrawable;
  }

  void updateTodaysWithdrawable() {
    DateTime now = DateTime.now();
    DateTime e;
    if (DateTime.now().hour == 0) {
      _todaysWithdrawable = (this._accountType == "Savings")
          ? withdrawables[0]
          : (this._accountType == "Current")
              ? withdrawables[1]
              : withdrawables[2];
    }
    for (int i = txnUpdateIndex + 1; i < _transactions.length; i++) {
      e = _transactions[i].getDateTime();
      if (_transactions[i].getType() == "Withdrawal" &&
          now.day == e.day &&
          now.month == e.month &&
          now.year == e.year) {
        _todaysWithdrawable -= _transactions[i].getAmount();
        txnUpdateIndex = i;
      } else {}
    }
  }

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
  }

  @override
  String toString() {
    return "Name : ${_name} \nPass : ${_pass} \nPAN : ${_PAN} \nBalance : ${_balance}";
  }
}
