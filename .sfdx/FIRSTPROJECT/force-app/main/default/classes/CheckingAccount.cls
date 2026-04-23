public with sharing class CheckingAccount {

    private String ownerName;
    private double balance;

    public CheckingAccount(String ownerName, double balance) {
        this.ownerName = ownerName;
        this.balance = balance;
    }

    public void transfer(CheckingAccount destinationAccount, double amount) {
        
        System.debug('Balace before transfer..');
        printAccountDetails(this);
        printAccountDetails(destinationAccount);    

        System.debug('Widrawing..');
        this.withdraw(amount);

        System.debug('Deposting..');
        destinationAccount.deposit(amount);

        System.debug('Balace after transfer..');
        printAccountDetails(this);
        printAccountDetails(destinationAccount);    
    }

    public void deposit(double amount) {
        String s = 'Cannot deposit a negative amount';
        if (amount < 0) {
            throw new IllegalArgumentException(s);
        }
        this.balance += amount;
    }

    public void withdraw(double amount) {
        String s = 'Cannot withdraw a negative amount';
        if (amount < 0 || balance < amount) {
            throw new IllegalArgumentException(s);
        }
        this.balance -= amount;
    }

    public String getOwnerName() {
        return this.ownerName;
    }

    public double getBalance() {
        return this.balance;
    }

    public void printAccountDetails(CheckingAccount account) {
        System.debug(account.getOwnerName());
        System.debug(account.getBalance());
    }

}