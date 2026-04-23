@isTest
private class TestRestrictContactByName {
  @isTest static void TestMtdRestrictContactByName(){
      Contact ct=new Contact(FirstName='sreeni', LastName='INVALIDNAME');
      //insert ct;
      
      Test.startTest();
        Database.SaveResult result = Database.insert(ct, false);
      Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        //System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
        //                     result.getErrors()[0].getMessage());
     
  }

}