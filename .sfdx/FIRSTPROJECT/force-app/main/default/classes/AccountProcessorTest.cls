@isTest
global class AccountProcessorTest{

  @isTest
  private static void testAccountIds(){
    
     List<Id> ids=new List<Id>();
     Account act=new Account(Name='Sreeni');
     insert act;
     ids.add(act.Id);
     Contact ct=new Contact(FirstName='Sreeni',LastName='Kallu');
     ct.AccountId=act.id;
     insert ct;
     
     
     Test.startTest();
       AccountProcessor.countContacts(ids);
      
      Test.stopTest();
    // runs callout and check results
   
 
    
  
  }


}