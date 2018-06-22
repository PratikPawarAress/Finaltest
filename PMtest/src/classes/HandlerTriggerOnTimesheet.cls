public class HandlerTriggerOnTimesheet {

    public static void addCustomRollups(List<TimeSheet__c> listOfTimesheets){

	set<Id> ProjIdSet = new set<Id>();
    set<Id> crIdSet = new set<Id>();
    
    if(trigger.isinsert || trigger.isUpdate){
        for(Timesheet__c timesheet: listOfTimesheets){
            if(timesheet.Project__c != null){
				ProjIdSet.add(timesheet.Project__c);
            }
            if(timesheet.Change_Request__c != null){
                system.debug('-----timesheet.Change_Request__c------'+timesheet.Change_Request__c);
                crIdSet.add(timesheet.Change_Request__c);
                system.debug('-----crIdSet----'+crIdSet);
            }
        }
    }
    List<Project__c> projectList = [select id, Actual_Project_Efforts__c, (Select Id, Hours_Spent__c from TimeSheets__r) from Project__c Where Id IN: ProjIdSet];    
    List<Change_Request__c> crList = [select id, Actual_CR_Efforts_in_hrs__c, (select Id, Hours_Spent__c from TimeSheets__r) from Change_Request__c where Id IN: crIdSet];    
    
       for(Project__c project : projectList){
    	 project.Actual_Project_Efforts__c = 0;
        for(TimeSheet__c timesheet1 : project.TimeSheets__r) {
             project.Actual_Project_Efforts__c += timesheet1.Hours_Spent__c;
          }
       }
        for(Change_Request__c cReq : crList){
            cReq.Actual_CR_Efforts_in_hrs__c = 0;
            for(TimeSheet__c timesheet2 : cReq.TimeSheets__r){
                cReq.Actual_CR_Efforts_in_hrs__c +=timesheet2.Hours_Spent__c;
            }
        }
       
    	update projectList;
        update crList;
	}
}