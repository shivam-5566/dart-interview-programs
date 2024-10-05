import 'dart:io';

// BankAccount class
class BankAccount {
  String accountHolder;
  String accountNumber;
  double balance;

  // Constructor to initialize a new bank account
  BankAccount(this.accountHolder, this.accountNumber, [this.balance = 0]);

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful. Current balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Withdrawal method
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. Current balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient balance or invalid amount.");
    }
  }

  // Method to display account balance
  void checkBalance() {
    print("Current balance: \$${balance.toStringAsFixed(2)}");
  }
}

// Bank class to manage multiple accounts
class Bank {
  List<BankAccount> accounts = [];

  // Method to create a new account
  void createAccount(String holderName, String accountNumber) {
    BankAccount newAccount = BankAccount(holderName, accountNumber);
    accounts.add(newAccount);
    print("Account created for $holderName with Account Number: $accountNumber");
  }

  // Method to find account by account number
  BankAccount? findAccount(String accountNumber) {
    for (var account in accounts) {
      if (account.accountNumber == accountNumber) {
        return account;
      }
    }
    return null;
  }
}

// Main function to interact with the banking system
void main() {
  Bank bank = Bank();
  bool exit = false;

  while (!exit) {
    print("\n=== Banking Management System ===");
    print("1. Create a new account");
    print("2. Deposit money");
    print("3. Withdraw money");
    print("4. Check balance");
    print("5. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter account holder's name: ");
        String? holderName = stdin.readLineSync();
        stdout.write("Enter account number: ");
        String? accountNumber = stdin.readLineSync();
        if (holderName != null && accountNumber != null) {
          bank.createAccount(holderName, accountNumber);
        }
        break;

      case '2':
        stdout.write("Enter account number: ");
        String? accountNumber = stdin.readLineSync();
        BankAccount? account = bank.findAccount(accountNumber!);
        if (account != null) {
          stdout.write("Enter deposit amount: ");
          double amount = double.parse(stdin.readLineSync()!);
          account.deposit(amount);
        } else {
          print("Account not found.");
        }
        break;

      case '3':
        stdout.write("Enter account number: ");
        var accountNumber = stdin.readLineSync();
        var account = bank.findAccount(accountNumber!);
        if (account != null) {
          stdout.write("Enter withdrawal amount: ");
          double amount = double.parse(stdin.readLineSync()!);
          account.withdraw(amount);
        } else {
          print("Account not found.");
        }
        break;

      case '4':
        stdout.write("Enter account number: ");
        var accountNumber = stdin.readLineSync();
        var account = bank.findAccount(accountNumber!);
        if (account != null) {
          account.checkBalance();
        } else {
          print("Account not found.");
        }
        break;

      case '5':
        exit = true;
        print("Exiting the system.");
        break;

      default:
        print("Invalid option. Please try again.");
    }
  }
}
