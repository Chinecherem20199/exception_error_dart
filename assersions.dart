class BankAccount {
  double balance;

  BankAccount({required this.balance})
      : assert(balance >= 0, 'The balance cannot be less than 0');
}

void user(String username, String password) {
  assert(username.isNotEmpty, 'username should not be empty');
  assert(password.isNotEmpty, 'password shout not nbe empyy');
}

void main() {
  // var account = BankAccount(balance: -100);
  // print(account.balance);

  user('chi', '');
}
