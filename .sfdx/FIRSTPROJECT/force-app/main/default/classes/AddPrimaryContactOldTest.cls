@isTest
public class AddPrimaryContactOldTest {
    @testSetup 
    static void setup() { 
       List<Account> nyacct=[select Id, name , BillingState from Account where  BillingState='NY' limit 50 ];
       List<Account> caacct=[select Id, name , BillingState from Account where  BillingState='CA' limit 50 ];
       
       for(Account acct : caacct ){
           nyacct.add(acct);
       }
       insert nyacct;
       Contact contact=new Contact(LastName='KALLU');
       insert contact;
    }
    
    static testmethod void testQueueable() {
        // query for test data to pass to queueable class
       
        String state='CA';
        Contact con=[select Id, lastname from Contact where LastName='KALLU'];
        
         AddPrimaryContact updater = new AddPrimaryContact(con, state);
        // startTest/stopTest block to force async processes to run
        Test.startTest();        
        System.enqueueJob(updater);
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        //System.assertEquals(100, [select count() from account where BillingState='NY' OR illingState='CA']);
    }
    static testmethod void testQueueable1() {
        // query for test data to pass to queueable class
       
        String state='NY';
        Contact con=[select Id, lastname from Contact where LastName='KALLU'];
        
         AddPrimaryContact updater = new AddPrimaryContact(con, state);
        // startTest/stopTest block to force async processes to run
        Test.startTest();        
        System.enqueueJob(updater);
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        //System.assertEquals(100, [select count() from account where BillingState='NY' OR illingState='CA']);
    }
}