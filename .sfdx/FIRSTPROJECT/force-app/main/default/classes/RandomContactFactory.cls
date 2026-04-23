public class RandomContactFactory{
     
      public static List<Contact> generateRandomContacts(Integer numofcontacts, String LastName){
              
             List<Contact> listcts=new List<Contact>();  
             for( Integer i=0;i < numofcontacts;i++){
                  Contact ct=new Contact();
                  ct.FirstName='Test '+i;
                  ct.LastName=LastName;
                  listcts.add(ct);
             }
             return listcts;
      
      }

}