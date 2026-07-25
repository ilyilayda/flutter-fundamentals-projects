import 'bankCustomer.dart';

void main() {
  var c1 = bankCustomer('Isaac Asimov'),
      c2 = bankCustomer('Ihsan Oktay Anar'),
      c3 = bankCustomer('Jose Saramago'),
      c4 = bankCustomer('Aldous Huxley');

  print(c1.getName());

  c1.addToBalance(341.5);
  c2.addToBalance(500);
  c3.addToBalance(233);

  print(c3.getBalance());
  print(c4.getBalance());

  bankCustomer.printBankData();

  c2.subtractIfPossible(100);
  print(c2.getBalance());

  c3.subtractIfPossible(300);
  print(c3.getBalance());

  bankCustomer.printBankData();
}
