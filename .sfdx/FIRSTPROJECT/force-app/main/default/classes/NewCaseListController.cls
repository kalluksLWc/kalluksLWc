public class NewCaseListController {

  public  List<Case>  getNewCases(){
  
     List<Case> cases=[select Id,CaseNumber,Status from Case where Status='New'];
     return cases;
  
  }

}