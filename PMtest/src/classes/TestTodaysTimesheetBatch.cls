@isTest
public class TestTodaysTimesheetBatch {
    
    static testMethod void testMethod1() {
        
        List<Allocation__c> allocationlist = new List<Allocation__c>();
        List<Contact> contactlist = new List<Contact>();
        
        Date todays = System.today();
        
        Project__c projObj = new Project__c();
        projObj.Name='P0000001';
        projObj.Project_Name__c = 'Test Project 1';
        projObj.Planned_Start_Date__c=todays.addDays(-6);
        projObj.Planned_End_Date__c=todays.addDays(15);
        projObj.Estimated_Effort__c=300;
        projObj.Stage__c = 'Execution';
        insert projObj;
         
                           
        Project__c projObj1 = new Project__c();
        projObj1.Name='P0000002';
        projObj1.Project_Name__c = 'Test Project2';
        projObj1.Planned_Start_Date__c=todays.addDays(-6);
        projObj1.Planned_End_Date__c=todays.addDays(15);
        projObj1.Estimated_Effort__c=300;
        projObj1.Stage__c = 'Execution';
        insert projObj1;
        
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone ='8985868686';
        insert conObj;
        
        
        Contact conObj1 = new Contact();
        conObj1.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj1.LastName = 'TestEmp1';
        conObj1.Employee_ID__c = 'AS1114';      
        conObj1.Email = 'testEmp@gmail.com';
        conObj1.MobilePhone ='8985868686';
        insert conObj1;
        
        Allocation__c allObj1 = new Allocation__c(); 
        allObj1.Project__c = projObj.Id;
        allObj1.Employee__c = conObj.Id;
        allObj1.Allocation_Start_Date__c = todays.addDays(-3);
        allObj1.Allocation_End_Date__c = todays.addDays(6);
        allObj1.Allocation_Percentage__c = 100;        
        allObj1.Allocated_Effort_Hrs__c = 200;
        allObj1.Allocation_Type__c = 'Billable';
        
        allObj1.Today_TimeSheet__c = 0;
        allObj1.isTimesheetAddedToday__c = False;
        insert allObj1;
 
        Allocation__c allObj = new Allocation__c(); 
        allObj.Project__c = projObj1.Id;
        allObj.Employee__c = conObj1.Id;
        allObj.Allocation_Start_Date__c = todays.addDays(4);
        allObj.Allocation_End_Date__c = todays.addDays(6);
        allObj.Allocation_Percentage__c = 100;        
        allObj.Allocated_Effort_Hrs__c = 200;
        allObj.Allocation_Type__c = 'Billable';
        
        allObj.Today_TimeSheet__c = 0;
        allObj.isTimesheetAddedToday__c = False;
        insert allObj;
        
        
        
        Test.startTest();
        TodaysTimesheetBatch batchobj = new TodaysTimesheetBatch();
        DataBase.executeBatch(batchobj);
        
        
        Test.stopTest();
        
        
        
        
        
    }
    
}