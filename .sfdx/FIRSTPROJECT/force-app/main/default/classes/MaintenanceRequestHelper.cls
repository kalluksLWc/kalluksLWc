public with sharing class MaintenanceRequestHelper {
    
    public static void updateWorkOrders(Map<Id,Case> casesMap) {
        // TODO: Complete the method to update workorders
        // 
        List<Case> listofnewcases=new List<Case>();
        Map<Id,Decimal> mapofint=new Map<Id,Decimal>();
        List<Product2> listp2=[Select Id, Maintenance_Cycle__c from Product2 ];
        for ( Product2 p: listp2){
            if ( p.Maintenance_Cycle__c != null ){
                 mapofint.put(p.Id,p.Maintenance_Cycle__c);
            }
        }
        for( Case cs: casesMap.values()){
            Case newcase=new Case();
            newcase.Vehicle__c=cs.Vehicle__c;
            newcase.Equipment__c=cs.Equipment__c;
            newcase.Type='Routine Maintenance';
            newcase.Date_Reported__c=Date.Today();
            newcase.Subject='Routine Maintenance Request';
            newcase.Status='New';
            newcase.AccountId=cs.AccountId;
            newcase.ContactId=cs.ContactId;
            newcase.Product__c=cs.Product__c;
            newcase.Origin=cs.Origin;
            newcase.Reason=cs.Reason;
            //newcase.Date_Due__c=mapofint.get(cs.Product__c)
            listofnewcases.add(newcase);
        }
        if ( listofnewcases.size() > 0 ){
            insert listofnewcases;
        }
    }        
    
}