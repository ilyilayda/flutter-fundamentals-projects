class bankCustomer {
  static int _numOfCustomers = 0;
  static double _bankBalance = 0;

  late final int _id;
  final String _name;
  double _balance = 0;

  bankCustomer(this._name) {
    _numOfCustomers++;
    _id = _numOfCustomers;
  }

  int getId() {
    return _id;
  }

  String getName() {
    return _name;
  }

  double getBalance() {
    return _balance;
  }

  void addToBalance(double amount) {
    if (amount > 0) {
      _balance += amount;
      _bankBalance += amount;
    }
  }

  bool subtractIfPossible(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      _bankBalance -= amount;
      return true;
    }

    return false;
  }

  static void printBankData() {
    print('Number of customers: $_numOfCustomers');
    print('Bank balance: $_bankBalance');
  }
}
