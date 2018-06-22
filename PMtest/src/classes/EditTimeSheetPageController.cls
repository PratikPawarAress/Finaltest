public class EditTimeSheetPageController {
    
    public TimeSheet__c sheet{get;set;}
    public String timesheetId{get;set;}
    public String CRId{get;set;}
    public String projectId{get;set;}
    public String employeecode{get;set;}
    public String timesheetname{get;set;}
    public String allocationId{get;set;}
    public ApexPages.StandardController stdController;
    public List<TimeSheet__c> updatetimesheet = new List<TimeSheet__c>();
    public TimeSheet__c ts;
    Integer count = 0;
    
    
    
    public EditTimeSheetPageController(ApexPages.StandardController stdController){
        this.stdController = stdController;
        //editsheet = (TimeSheet__c)stdController.getRecord(); 
        timesheetId = ApexPages.currentPage().getParameters().get('timesheetid');
        employeecode = ApexPages.currentPage().getParameters().get('employeeId');
        allocationId = ApexPages.currentPage().getParameters().get('AllocationId');
        System.debug('-----TimeSheetId-------'+timesheetId);
        if(timesheetId != null){
            
            sheet = [SELECT Id, Task_Category__c, Date__c, Project__c,Project__r.Name, Change_Request__c, Change_Request__r.Name,Task_Description__c, Hours_Spent__c, Status__c,Billable1__c FROM TimeSheet__c where Id=:timesheetId];
            System.debug('-----EditSheet-----'+sheet);
            projectId = sheet.Project__c;
            CRId = sheet.Change_Request__c;
            
            timesheetname = sheet.Task_Category__c;
            System.debug('-----projectid-----'+projectId);
        }
    }
    
    public PageReference customsave(){
        PageReference pg;
        ts = new TimeSheet__c();
        ts.Id = sheet.Id;
        ts.Billable1__c = sheet.Billable1__c;
        ts.Hours_Spent__c = sheet.Hours_Spent__c;
        ts.Date__c = sheet.Date__c;
        
       // ts.Name = sheet.Name;
        ts.Task_Description__c = sheet.Task_Description__c;
        System.debug('-----edited timesheet-----'+ts);
        
        updatetimesheet.add(ts);
        if(updatetimesheet.size() >0)
            update updatetimesheet;
        
      if(projectId != null){
       pg = new PageReference('/apex/TimeSheetPage?projectId='+projectId+'&employeeId='+employeeCode+'&AllocationId='+allocationId+'&CRId'+CRId);
       pg.setRedirect(true);       
     //return pg;
        }
        else  if(CRId != null)
        {
              pg = new PageReference('/apex/TimeSheetPage?CRId='+CRId+'&employeeId='+employeeCode+'&AllocationId='+allocationId+'&CRId'+CRId);
             pg.setRedirect(true);       
            // return pg;
        }
        
       return pg;
    }
    
    
    
    public PageReference cancel(){
      PageReference pg;
      if(projectId != null){
       pg = new PageReference('/apex/TimeSheetPage?projectId='+projectId+'&employeeId='+employeeCode+'&AllocationId='+allocationId+'&CRId'+CRId);
       pg.setRedirect(true);       
     //return pg;
        }
        else  if(CRId != null)
        {
              pg = new PageReference('/apex/TimeSheetPage?CRId='+CRId+'&employeeId='+employeeCode+'&AllocationId='+allocationId+'&CRId'+CRId);
             pg.setRedirect(true);       
            // return pg;
        }
         return pg;
    }
    
}