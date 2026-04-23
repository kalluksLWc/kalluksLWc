public class  AccountHandler {

  public static Account insertNewAccount(String input){
  
      List<Account> listofacct=new List<Account>();
      Account acct=new Account();
      acct.name=input;
      listofacct.add(acct);
    try {  
      Database.SaveResult[] srList = Database.insert(listofacct, true);
   
       for (Database.SaveResult sr : srList) {
       if (sr.isSuccess()) {
         // Operation was successful, so get the ID of the record that was processed
          System.debug('Successfully inserted contact. Contact ID: ' + sr.getId());
          return acct;
       } else {
         // Operation failed, so get all errors
        for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Contact fields that affected this error: ' + err.getFields());
         }
        }
      }
      return  acct;
    } catch ( DmlException e ){
      System.debug('A DML exception has occurred: ' +  e.getMessage());
      return null;
    }   
   }   

}