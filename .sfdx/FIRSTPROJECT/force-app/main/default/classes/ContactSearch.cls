public class ContactSearch {

  public static List<Contact> searchForContacts(String firststring, String secondstring){
  
     List<Contact> lastnamecontacts=new List<Contact>();
  
     for( Contact ct : [select ID, Firstname, Lastname from Contact where Lastname=:firststring]){
          lastnamecontacts.add(ct);
     }
     
     for( Contact cont : [select ID, Firstname, Lastname , MailingPostalCode from Contact where MailingPostalCode=:secondstring]){
        lastnamecontacts.add(cont);   
     }
     return lastnamecontacts;
  }
}