public class CheckingAccountTestClass {
   
    public void CheckingAccountValidate() {
      
        CheckingAccount michaelsAccount = new CheckingAccount('Michael', 5000);
        CheckingAccount gobsAccount = new CheckingAccount('Gob', 2000);
        System.debug('Open Accounts:');    
        michaelsAccount.printAccountDetails(michaelsAccount);   
        System.debug('\n');   
        gobsAccount.printAccountDetails(gobsAccount);
      
        System.debug('\n');
      
        try {
              michaelsAccount.transfer(gobsAccount, 1000);
        }catch (Exception e ) {
            System.debug(e.getMessage());
        }

        System.debug('Updated Checking Account Details:');
        System.debug('\n');
        michaelsAccount.printAccountDetails( michaelsAccount);
        System.debug('\n');
        gobsAccount.printAccountDetails(gobsAccount);       
     } 
     public void SavingsAccountValidate() {
      
       /*
        SavingsAccount AceSavingsAccount = new  SavingsAccount('Ace', 5000.0, 0.0089);
        SavingsAccount gariAccount = new SavingsAccount('Gari', 10000.0, 0.0056);
        System.debug('Open Accounts:');    
        AceSavingsAccount.printAccountDetails(AceSavingsAccount);   
        System.debug('\n');   
        gariAccount.printAccountDetails(gariAccount);
      
        System.debug('\n');
      
        try {
              AceSavingsAccount.transfer(gariAccount, 1000);
        }catch (Exception e ) {
            System.debug(e.getMessage());
        }

        System.debug('Updated Checking Account Details:');
        System.debug('\n');
        AceSavingsAccount.printAccountDetails( AceSavingsAccount);
        System.debug('\n');
        gariAccount.printAccountDetails(gariAccount);  
        */
           
     }             
}