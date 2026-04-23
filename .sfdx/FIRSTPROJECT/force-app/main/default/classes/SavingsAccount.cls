public with sharing class SavingsAccount {

    private String ownerName;
    private double balance;
    private double rate;
    public static final double timesperYear=1;
    

    public SavingsAccount(String ownerName, double balance, double rate) {
        this.ownerName = ownerName;
        this.balance = balance;
        this.rate=rate;
    }
    private double calculateCompoundInterest(integer years) {
        
        /*      
          Compound Interest Formula F=p(1+i/n)power(nt)
           where
           F = value after t periods
           P = principal amount (initial investment)
           i = annual nominal interest rate (not reflecting the compounding)
           n = number of times the interest is compounded per year
           t = number of years the money is borrowed for          * 
          */    
        
        double principle=this.balance;
        double temp1=rate / 1.0;
        temp1=temp1 + 1.0;
       
        
        double temp4= rate * timesperYear;
        double amount = principle * Math.pow(temp1, temp4 );
      
         
        double compoundInt = amount - principle;
      
        return compoundInt;
        
    }

    public void applyInterest( integer years) {
        
        double cInterest=calculateCompoundInterest(years);
        this.deposit(cInterest);        
        
    }
    

    public void transfer(SavingsAccount destinationAccount, double amount) {
        
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
        // savings account has no withdorw opration
    private void withdraw(double amount) {
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

    private void printAccountDetails(SavingsAccount account) {
        System.debug(account.getOwnerName());
        System.debug(account.getBalance());
    }

}