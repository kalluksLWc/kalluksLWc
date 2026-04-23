@isTest
private class TestVerifyDate {
    @isTest static void checkDatesTest() {
       
      Date t1=Date.today();
      Date t2=t1.adddays(29);
      Date t3=VerifyDate.CheckDates(t1,t2);
      System.assertEquals(t2,t3,' Checkdates failed');
      
    
    }
    @isTest static void checkDatesTest1() {
       
      Date t1=Date.today();
      Date t2=t1.adddays(31);
      Date t3=VerifyDate.CheckDates(t1,t2);     
      System.assertEquals(t1,t3,' Checkdates1 failed');
      
    
    }
}