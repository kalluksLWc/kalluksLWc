global class AccountProcessor{
   
    @future
    public static void countContacts(List<Id> AccountIds){
      List<Account> accounts = [Select Id, Number_of_Contacts__c from Account Where Id IN :AccountIds];
      for(Account act : accounts ){
        List<Contact> contacts=[Select Id, AccountId from contact where AccountId = :act.Id];
        act.Number_of_Contacts__c=contacts.size();
       }
       update accounts;
    }
}