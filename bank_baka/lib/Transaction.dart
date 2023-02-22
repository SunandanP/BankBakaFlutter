// ignore_for_file: unnecessary_this

class Transaction {
  DateTime _dateTime;
  String _type;
  double _amount;

  Transaction(this._dateTime, this._type, this._amount);

  DateTime getDateTime() {
    return this._dateTime;
  }

  String getType() {
    return this._type;
  }

  double getAmount() {
    return _amount;
  }
}
