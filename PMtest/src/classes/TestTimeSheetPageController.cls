@isTest

public class TestTimeSheetPageController {
    
    static testMethod void testData2(){
        
        Date todays = System.today();
        
        Project__c projObj = new Project__c();
        projObj.Name='P0000001';
        projObj.Project_Name__c ='TestProject1';
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
        
        
        
        PageReference pgRef = Page.TimeSheetPage;
        pgRef.getParameters().put('projectId',String.valueOf(projObj.Id));
        pgRef.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        
        Test.setCurrentPage(pgRef);   
        TimeSheetPageController tspCtrl = new TimeSheetPageController();
        Test.startTest();
        tspCtrl.timesheetID = timeSheet.Id;
        
        tspCtrl.addTimeSheet(); 
        
        PageReference pgRef1 = Page.AddTimeSheetPage;
        pgRef1.getParameters().put('projectId',String.valueOf(projObj.Id));
        pgRef1.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef1.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        
        Test.setCurrentPage(pgRef1);
        tspCtrl.addTimeSheet();
        tspCtrl.goBack();
        tspCtrl.editsheet();
        PageReference pgRef2 = Page.EditTimeSheetPage;
        pgRef2.getParameters().put('timesheetid',String.valueOf(timeSheet.Id));
        pgRef2.getParameters().put('employeeId',String.valueOf(conObj.Employee_ID__c));
        pgRef2.getParameters().put('AllocationId',String.valueOf(allObj.Id));  
        
        Test.setCurrentPage(pgRef2);
        
        
        Test.stopTest();
        
    }
}