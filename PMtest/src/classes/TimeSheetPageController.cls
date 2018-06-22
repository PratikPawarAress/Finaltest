public class TimeSheetPageController{

    
    public String employeeId;
    public String allocationId{get;set;}
    public String employeecode{get;set;}
    
    public String projectId {get;set;}
    public String projectName {get;set;}
    public String projectStage;
    
    public String CRId{get;set;}
    public String CRName {get;set;}
    public String CRStage{get;set;}
    
    public Decimal totalhours{get;set;}
    public String timesheetID{get;set;}
    public Boolean check = false;
    Boolean flag = false;
    public List <TimeSheet__c>  listOfTimesheets {get;set;}
     
    //---Map of PageParameters 
    public Map<string,string> pageParams=ApexPages.currentPage().getParameters();
    
    public TimeSheetPageController(){
        
        projectId = ApexPages.currentPage().getParameters().get('ProjectId');
        CRId = ApexPages.currentPage().getParameters().get('CRId');
        employeecode = ApexPages.currentPage().getParameters().get('employeeId');
        allocationId = ApexPages.currentPage().getParameters().get('AllocationId');
        
     if(allocationId != null){
         
        Allocation__c alloId = [select Id,Employee__c,Project__c,Project__r.Name,Project__r.Stage__c,Change_RequestL__c,Change_RequestL__r.Name,Change_RequestL__r.Stage__c,Employee__r.Employee_ID__c,Allocation_Type__c from Allocation__c where Id=:allocationId];    
        listOfTimesheets = [SELECT Task_Category__c,Date__c,Project__r.Name,Status__c,Hours_Spent__c,Task_Description__c,Project_Allocation__c,Billable1__c FROM TimeSheet__c WHERE Project_Allocation__c=:allocationId order by  Date__c DESC ];
        
        employeeId = alloId.Employee__r.Employee_ID__c;
        projectName = alloId.Project__r.Name;
        projectStage = alloId.Project__r.Stage__c;
        CRName = alloId.Change_RequestL__r.Name; 
        CRStage = alloId.Change_RequestL__r.Stage__c; 
         
      }
        totalHours = 0;
        if(listOfTimesheets.size()>0){
            for(TimeSheet__c tSheet : listOfTimesheets){
                totalHours = totalHours + tSheet.Hours_Spent__c;
            }
        } 
   }
    
    //--- goBack() ----
    
    public PageReference goBack(){
        PageReference pg = new PageReference('/apex/AllProjectsPage?employeeId=' +employeecode );
        pg.setRedirect(true);
        return pg;      
    }
    
    //--- addTimeSheet() ----
    
    public PageReference addTimeSheet(){
      PageReference pg;
        if(projectId != null && projectStage == 'Execution'){
            pg = new PageReference('/apex/AddTimeSheetPage?projectId='+projectId+'&employeeId='+employeecode+'&AllocationId='+allocationId);
            pg.setRedirect(true);
            //return pg;
        }
            else if(CRId != null && CRStage == 'Execution'){
                pg = new PageReference('/apex/AddTimeSheetPage?CRId='+CRId+'&employeeId='+employeecode+'&AllocationId='+allocationId);
                pg.setRedirect(true);
                //return pg;
            }
            else{
               ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'You can only add timesheets for Projects/CR in EXECUTION stage !'));
               //return pg;               
            }
        return pg;
        }
 
  //--- editsheet() ----
  
     public PageReference editsheet(){
        PageReference pg;
        
        TimeSheet__c tst = [SELECT Id,Task_Category__c,Date__c,Project__r.Name,Change_Request__r.Name,Status__c,Hours_Spent__c,Task_Description__c FROM TimeSheet__c where id=:timesheetID];        
            if(tst.Date__c == System.today()){
                check = true;
          }
           
        if(check ==true){
                     pg = new PageReference('/EditTimeSheetPage?timesheetid='+timesheetID+'&employeeId='+employeecode+'&AllocationId='+allocationId);
                     pg.setRedirect(true);
                     return pg; 
                }
       else{
             return pg; 
         }
    }
}