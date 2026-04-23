@isTest
private class LeadProcessoroldTest {
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        for(Integer i=0;i < 200;i++){
            String c='Lead Company'+ i;
            String f='firstname'+ i;
            String l='lastname'+ i;
            String e='srekal01'+1+'yahoo.com';
            Lead ll=new Lead(Company = c, FirstName = f, LastName = l, Email = e);
            leads.add(ll);           
        }       
        insert leads;
    }
    static testmethod void test() {        
        Test.startTest();
         List<Lead> leads = new List<Lead>();
        for(Integer i=0;i < 200;i++){
            String c='Lead Company'+ i;
            String f='firstname'+ i;
            String l='lastname'+ i;
            String e='srekal01'+1+'yahoo.com';
            Lead ll=new Lead(Company = c, FirstName = f, LastName = l, Email = e);
            leads.add(ll);           
        }       
        insert leads;
        
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);        
       
        
        
        
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        
    }
    
}