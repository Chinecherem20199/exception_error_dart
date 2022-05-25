class BankAccount {
  double balance;

  // BankAccount({required this.balance});
  BankAccount.newClient(double balance) : this.balance = balance {
    if (balance < 0) throw ZeroBalanceException(balance);
  }
}

void main() {
  // var list = [1, 2, 4, 5, 6, 8];
  // try {
  //   print(list[10]);
  // } catch (e, f) {
  //   print(e);
  //   print(f);
  // } finally {
  //   print('Done');
  // }
  try {
    var account = BankAccount.newClient(100);
    print(account.balance);
  } on ZeroBalanceException catch (e) {
    print(e);
  }
}

class ZeroBalanceException implements Exception {
  final double balance;
  const ZeroBalanceException(this.balance);

  @override
  String toString() {
    return 'ZeroBalanceException: Balance: $balance Your balance cannot be less than 0';
  }
}
