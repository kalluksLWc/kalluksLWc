public class AddPrimaryContactOld implements Queueable{
    
    private Contact cont;
    private String st;
    
    public AddPrimaryContactOld(Contact ct, String state) {
        cont=ct;
        st=state;
    }
    public void execute(QueueableContext context) {
        List<Account> lista=[select Id,BillingState from Account where BillingState=:st limit 200];
        
        for (Account account : lista) {
             Contact clonedct=cont.clone();
             clonedct.AccountId=account.Id;
        }
        insert lista;
    }
    
}