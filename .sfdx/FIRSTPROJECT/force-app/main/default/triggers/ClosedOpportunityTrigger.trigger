trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
          
          List<Task> listoft=new List<Task>();
          for( Opportunity o :  [SELECT Id,StageName,AccountId FROM Opportunity WHERE StageName='Closed Won']){      
               if ( o.StageName == 'Closed Won' ){                                    
                    task t=new task(Whatid=o.id,Status = 'Active',Subject = 'Follow Up Test Task',ActivityDate = system.today());
                    listoft.add(t);
                    if (o.AccountId == null ) {
                        o.AccountId='0015w00002FghETAAZ';
                    }
               }
          
          }
          insert listoft;
}