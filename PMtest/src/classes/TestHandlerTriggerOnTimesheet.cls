@isTest
public class TestHandlerTriggerOnTimesheet {
    
    public static testMethod void testefforts(){
        
        Project__c project = new Project__c();
        project.Project_Name__c = 'TestProject';
         
        project.Name='P0000001';
        project.Planned_Start_Date__c = Date.today();
        project.Planned_End_Date__c = Date.today().addMonths(2);
        project.Estimated_Effort__c = 250;
        insert project;
        
        Change_Request__c cr = new Change_Request__c();
       // cr.Name = 'TestCR';
        cr.Name='CM0000001';
        cr.Project__c = project.Id;
        cr.CR_Name__c = 'TestCR';
        cr.Planned_Start_Date__c = Date.today();
        cr.Planned_End_Date__c = Date.today().addMonths(1);
        cr.Efforts_in_hrs__c = 160;
        insert cr;
        
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        
        Allocation__c allObj = new Allocation__c(); 
        allObj.Project__c = project.Id;
        allObj.Employee__c = conObj.Id;
        allObj.Allocation_Start_Date__c = Date.today();
        allObj.Allocation_End_Date__c = Date.today().addMonths(2);
        allObj.Allocation_Percentage__c = 100;        
        allObj.Allocated_Effort_Hrs__c = 200;
        allObj.Allocation_Type__c = 'Billable';
        insert allObj;
        
        TimeSheet__c timesheet = new TimeSheet__c();
        timesheet.Task_Category__c = 'Analysis';
        timesheet.Project__c = project.Id;
        timesheet.Date__c = Date.today();
        timesheet.Task_Description__c = 'testing description';
        timesheet.Hours_Spent__c = 9;
        timesheet.Project_Allocation__c = allObj.Id;
        insert timesheet;
        
        Test.startTest();
            HandlerTriggerOnTimesheet tst = New HandlerTriggerOnTimesheet();
            //stst.addCustomRollups();
        Test.stopTest();
    }
}