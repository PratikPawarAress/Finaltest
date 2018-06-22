@isTest
public class TestutilDetailsController {
    Public Static testMethod void utilDetailsmethod()
    {
        List<Allocation__c> allocList = new List<allocation__c>();
        List<Project__c> projList = new List<Project__c>();
        List<Contact> empList = new List<Contact>();
        
        Project__c projObj = new Project__c();
        projObj.Name='P0000022';
        projObj.Name ='TestProject1';//change Project_name__c to name
        projObj.Planned_Start_Date__c=Date.today();
        projObj.Planned_End_Date__c=Date.today().addDays(6);
        projObj.Estimated_Effort__c=300;
        projObj.Stage__c = 'Execution';
        insert projObj;
        
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.FirstName ='T2';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        conObj.Work_Location__c='Pune';
        insert conObj;
        Contact conObj1 = new Contact();
        conObj1.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj1.LastName = 'TTestEmp';
        conObj1.FirstName ='T2';
        conObj1.Employee_ID__c = 'AS1111';      
        conObj1.Email = 'testEmp@gmail.com';
        conObj1.MobilePhone = '8985868686';
        conObj1.Work_Location__c='Nasik';
        insert conObj1;
        
         Allocation__c allObj2 = new Allocation__c(); 
        allObj2.Project__c = projObj.Id;
        allObj2.Employee__c = conObj1.Id;
        allObj2.Allocation_Start_Date__c = Date.today();
        allObj2.Allocation_End_Date__c = Date.today();
        allObj2.Allocation_Percentage__c = 10;        
        allObj2.Allocated_Effort_Hrs__c = 200;
        allObj2.Allocation_Type__c = 'Non-Billable';        
        
        insert allObj2;
        
        Allocation__c allObj3 = new Allocation__c(); 
        allObj3.Project__c = projObj.Id;
        allObj3.Employee__c = conObj.Id;
        allObj3.Allocation_Start_Date__c = Date.today();
        allObj3.Allocation_End_Date__c = Date.today();
        allObj3.Allocation_Percentage__c = 10;        
        allObj3.Allocated_Effort_Hrs__c = 200;
        allObj3.Allocation_Type__c = 'Leave';        
        
        insert allObj3;
        
        
        
        PageReference pageRef = Page.utilizationDetails; 
       // pageRef.getParameters().put('empName',String.valueOf(conObj.LastName));
       pageRef.getParameters().put('resourcename',String.valueOf(conObj.LastName));
    
       pageRef.getParameters().put('WorkLoc',String.valueOf(conObj.Work_location__c)); 
                pageRef.getParameters().put('frmdate',String.valueOf(Date.today().format())); 
                        pageRef.getParameters().put('todate',String.valueOf(Date.today().format())); 


        Test.setCurrentPage(pageRef);
        Test.StartTest(); 
        utilDetailsController ab = new utilDetailsController();
        ab.resourcename = 'Project';
        //ab.effortHour = 'Allocated Efforts';   
        ab.frmdate = Date.today().addDays(-30);
        ab.todate = Date.today().addDays(16);
        ab.empName='Deepak';
        ab.ProjectName='Test';
        ab.locName='Pune';
        
        
        pageRef.getParameters().put('ProjName',String.valueOf(projObj.Name));//chang project_name__c to name
        Test.setCurrentPage(pageRef);
        utilDetailsController ab2 = new utilDetailsController();
        ab2.resourcename = 'Project';
        //ab.effortHour = 'Allocated Efforts';   
        ab2.frmdate = Date.today().addDays(-30);
        ab2.todate = Date.today().addDays(16);
        ab2.empName='Deepak';
        ab2.ProjectName='Test';
        ab2.locName='Pune';
        
        pageRef.getParameters().put('empName',String.valueOf(conObj.LastName));        
        Test.setCurrentPage(pageRef);
     
        utilDetailsController ab1 = new utilDetailsController();
        ab1.resourcename = 'Project';
        //ab.effortHour = 'Allocated Efforts';   
        ab1.frmdate = Date.today().addDays(-30);
        ab1.todate = Date.today().addDays(16);
        //ab1.empName='Deepak';
        ab1.ProjectName='Test';
        ab1.locName='Pune';
        
        Test.stopTest();
        
    }
    
}