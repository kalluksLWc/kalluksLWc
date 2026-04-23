trigger MaintenanceRequest on Case (before update, after update) {
    // ToDo: Call MaintenanceRequestHelper.updateWorkOrders
    // 
    // 
    Map<Id,Case> casesMap=new Map<Id,Case>();
    if ( Trigger.isUpdate && Trigger.isAfter) {
        for(Case cs:Trigger.New){
            if (( cs.Type == 'Repair' || cs.Type == 'Routine Maintenance') && cs.isClosed ){
                casesMap.put(cs.Id,cs);
            }
        }
        
        
    }
    if ( casesMap.size() > 0 ){
         MaintenanceRequestHelper.updateWorkOrders(casesMap);
    }
    
}