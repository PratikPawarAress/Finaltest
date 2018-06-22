@isTest
public class TestProjectPageController {
    
    static testMethod void testData1(){
        
        Date todays = System.today();
        
        Project__c projObj = new Project__c();
        projObj.Name='P0000001';
        projObj.Project_Name__c ='TestProject1';
        projObj.Planned_Start_Date__c=todays;
        projObj.Planned_End_Date__c=todays.addDays(15);
        projObj.Estimated_Effort__c=300;
        
        insert projObj;
        
        Change_Request__c crObj = new Change_Request__c();
        crObj.Name ='CM0000001';
        crObj.Planned_Start_Date__c=todays;
        crObj.Planned_End_Date__c=todays.addDays(15);
        crObj.Efforts_in_hrs__c = 100;
        crObj.Project__c = projObj.Id;
        
        insert crObj;
        
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
        PageReference pageRef = Page.AllProjectsPage;
        pageRef.getparameters().put('employeeId', conObj.Employee_ID__c);  
        Test.setCurrentPage(pageRef);
        
        Apexpages.StandardController sc = new Apexpages.StandardController(allObj);
        ProjectPageController ext = new  ProjectPageController(sc);      
        Test.stopTest();
        
    }
    
}