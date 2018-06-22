@isTest

public class TestAddTimeSheetPageController {
    
    static testMethod void testData3(){
        Date todays = System.today();
        Project__c projObj = new Project__c();
        projObj.Name='P0000001';
        projObj.Project_Name__c ='Test Project';
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
        
        
        Test.startTest();
        
        TimeSheet__c timeSheet = new TimeSheet__c();
        // timeSheet.Project_Allocation__c = allObj.Id;
        ApexPages.StandardController controller = new ApexPages.StandardController(timeSheet);
        
        PageReference pgRef = Page.AddTimeSheetPage;
        pgRef.getParameters().put('projectId',String.valueOf(projObj.Id));
        pgRef.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        
        Test.setCurrentPage(pgRef);
        
        timeSheet.Task_Category__c = 'Analysis';
        timeSheet.Project__c = projObj.Id;
        timeSheet.Date__c = todays;
        timeSheet.Task_Description__c = 'test data';
        timeSheet.Hours_Spent__c = 8;
        
        
        AddTimeSheetPageController sheet = new AddTimeSheetPageController(controller);
        
        
        sheet.save();
        
        PageReference pgRef1 = Page.TimeSheetPage;
        pgRef1.getParameters().put('projectId',String.valueOf(projObj.Id));
        pgRef1.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef1.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        
        Test.setCurrentPage(pgRef1); 
        sheet.cancel();
        
        Test.stopTest();
        
    }
    
}