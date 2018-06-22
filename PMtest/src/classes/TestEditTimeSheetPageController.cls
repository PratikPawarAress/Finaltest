@isTest
public class TestEditTimeSheetPageController {
    
    static testMethod void testData3(){
        
        Date todays = System.today();
        Project__c projObj = new Project__c();
        projObj.Name='P0000001';
        projObj.Project_Name__c ='Project1';
        projObj.Planned_Start_Date__c=todays;
        projObj.Planned_End_Date__c=todays.addDays(15);
        projObj.Estimated_Effort__c=300;
        projObj.Stage__c = 'Execution';
        insert projObj;
        
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        
        Allocation__c allObj = new Allocation__c(); 
        allObj.Project__c = projObj.Id;
        allObj.Employee__c = conObj.Id;
        allObj.Allocation_Start_Date__c = todays;
        allObj.Allocation_End_Date__c = todays.addDays(6);
        allObj.Allocation_Percentage__c = 100;        
        allObj.Allocated_Effort_Hrs__c = 200;
        allObj.Allocation_Type__c = 'Billable';
       
        insert allObj;
        
        
        TimeSheet__c timeSheet = new TimeSheet__c();
        timeSheet.Project_Allocation__c = allObj.Id;
        timeSheet.Task_Category__c = 'Analysis';
        timeSheet.Project__c = projObj.Id;
        timeSheet.Date__c = todays;
        timeSheet.Task_Description__c = 'test data';
        timeSheet.Hours_Spent__c = 8;
        insert timeSheet;
        
        
        Test.startTest();
        
        ApexPages.StandardController controller = new ApexPages.StandardController(timeSheet);
        PageReference pgRef = Page.EditTimeSheetPage;
        pgRef.getParameters().put('timesheetid',String.valueOf(timeSheet.Id));
        pgRef.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        Test.setCurrentPage(pgRef);
        
        EditTimeSheetPageController sheet = new EditTimeSheetPageController(controller);
        
        sheet.customsave();
        
        sheet.cancel();
        Test.stopTest();
        
        
        
        
        
        
    }
    
    
}