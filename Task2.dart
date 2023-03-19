import 'dart:io';

class BankAccount{

  int balance = 0;

  late int accountNumber;

  void deposit(int depositAmount){

    balance += depositAmount;

  }

  void withdraw(int withdrawAmount){

    balance -= withdrawAmount;

    print("$withdrawAmount has been Withdrawn");

  }

}

class CheckingAccount extends BankAccount{

  int transacctionLimit = 25000;

  void withdraw(int withdrawAmount){

    if (withdrawAmount <= transacctionLimit) {

      balance -= withdrawAmount;

      print("$withdrawAmount has been Withdrawn");

    }


  else {

      print("<=====================Transaction Limit Reached Exiting=====================>");

      exit(0);

    }
  }

}

void main(){

  print("Enter account Number: ");

  int? accountNumber = int.parse(stdin.readLineSync()!);

  print("Enter Balance: ");

  int? balance = int.parse(stdin.readLineSync()!);

  BankAccount bankAccount = new BankAccount();

  bankAccount.accountNumber = accountNumber;

  bankAccount.balance = balance;

  CheckingAccount checkingAccount = new CheckingAccount();

  print("Enter Amount to deposit: ");

  int? deposit = int.parse(stdin.readLineSync()!);

  checkingAccount.deposit(deposit);

  print("Enter Amount to withdraw: ");

  int? withdraw = int.parse(stdin.readLineSync()!);

  checkingAccount.withdraw(withdraw);

}