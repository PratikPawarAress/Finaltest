@istest
public class BenchController_Test {
    public static testMethod void benchTestMethod(){
        List<Allocation__c> allocList = new List<allocation__c>();
        List<Project__c> projList = new List<Project__c>();
        List<Contact> empList = new List<Contact>();
        
        Project__c projObj = new Project__c();
        projObj.Name='P0000022';
        projObj.Project_Name__c ='TestProject1';
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
        conObj1.LastName = 'TestEmp';
        conObj1.FirstName ='T1';
        conObj1.Employee_ID__c = 'AS1111';      
        conObj1.Email = 'testEmp@gmail.com';
        conObj1.MobilePhone = '8985868686';
        conObj1.Work_Location__c='Pune';
        insert conObj1;
        
        Allocation__c allObj = new Allocation__c(); 
        allObj.Project__c = projObj.Id;
        allObj.Employee__c = conObj.Id;
        allObj.Allocation_Start_Date__c = Date.today().addDays(-15);
        allObj.Allocation_End_Date__c = Date.today().addDays(6);
        allObj.Allocation_Percentage__c = 10;        
        allObj.Allocated_Effort_Hrs__c = 200;
        allObj.Allocation_Type__c ='Billable';
        insert allObj;
        
        Allocation__c allObj4 = new Allocation__c(); 
        allObj4.Project__c = projObj.Id;
        allObj4.Employee__c = conObj.Id;
        allObj4.Allocation_Start_Date__c = Date.today().addDays(-15);
        allObj4.Allocation_End_Date__c = Date.today().addDays(6);
        allObj4.Allocation_Percentage__c = 10;        
        allObj4.Allocated_Effort_Hrs__c = 200;
        allObj4.Allocation_Type__c ='Billable';
        insert allObj4;
        
       
        Allocation__c allObj1 = new Allocation__c(); 
        allObj1.Project__c = projObj.Id;
        allObj1.Employee__c = conObj1.Id;
        allObj1.Allocation_Start_Date__c = Date.today().addDays(-15);
        allObj1.Allocation_End_Date__c = Date.today().addDays(6);
        allObj1.Allocation_Percentage__c = 10;        
        allObj1.Allocated_Effort_Hrs__c = 200;
        allObj1.Allocation_Type__c = 'Bench';
        
        insert allObj1;
        
        Allocation__c allObj2 = new Allocation__c(); 
        allObj2.Project__c = projObj.Id;
        allObj2.Employee__c = conObj1.Id;
        allObj2.Allocation_Start_Date__c = Date.today().addDays(-15);
        allObj2.Allocation_End_Date__c = Date.today().addDays(6);
        allObj2.Allocation_Percentage__c = 10;        
        allObj2.Allocated_Effort_Hrs__c = 200;
        allObj2.Allocation_Type__c = 'Non-Billable';        
        
        insert allObj2;
        
        Allocation__c allObj3 = new Allocation__c(); 
        allObj3.Project__c = projObj.Id;
        allObj3.Employee__c = conObj1.Id;
        allObj3.Allocation_Start_Date__c = Date.today().addDays(-15);
        allObj3.Allocation_End_Date__c = Date.today().addDays(6);
        allObj3.Allocation_Percentage__c = 10;        
        allObj3.Allocated_Effort_Hrs__c = 200;
        allObj3.Allocation_Type__c = 'Leave';        
        
        insert allObj3;
        
        
        
        Test.StartTest(); 
        
        PageReference pageRef = Page.BenchReport; 
        
                
      /*pageRef.getParameters().put('projName',projObj.Project_Name__c);
        pageRef.getParameters().put('employeeId',String.valueOf(conObj.Name));
        pageRef.getParameters().put('rightselected',String.valueOf(allObj.Id));  
      */
        
        Test.setCurrentPage(pageRef);
        BenchController ab = new BenchController();
        
        
        ab.resourcename = 'Project';
        ab.effortHour = 'Allocated Efforts';   
        ab.frmdate = Date.today().addDays(-30);
        ab.todate = Date.today().addDays(16);
        List<String> a7 = new List<String>();
        a7.add('TestProject1');
        a7.add('Project1');
        a7.add('Project2');
        ab.firstElement = a7;
        ab.getResourcenames();
        ab.geteffortHours();
        ab.getSelectedValues();
        ab.getunSelectedValues();
       
        ab.leftselected = a7;
        ab.rightselected = a7;
        ab.doSearch();
        
        
        
        
        
        BenchController ab1 = new BenchController();
        
        
        ab1.resourcename = 'Project';
        ab1.effortHour = 'Allocated Efforts';   
        ab1.frmdate = Date.today().addDays(-30);
        ab1.todate = Date.today().addDays(16);
        List<String> a = new List<String>();
        a.add('TestProject1');
        a.add('Project1');
        a.add('Project2');
        ab1.firstElement = a;
        ab1.getResourcenames();
        ab1.geteffortHours();
        ab1.getSelectedValues();
        ab1.getunSelectedValues();
       
        ab1.leftselected = a;
        ab1.rightselected = a;
        ab1.doSearch();   
        
        ab1.resourcename = 'Project';
        ab1.effortHour = 'Actual Efforts';   
        ab1.frmdate = Date.today().addDays(-30);
        ab1.todate = Date.today().addDays(16);
        List<String> aa = new List<String>();
        aa.add('TestProject1');
        aa.add('Project1');
        aa.add('Project2');
        ab1.firstElement = aa;
        ab1.getResourcenames();
        ab1.geteffortHours();
        ab1.getSelectedValues();
        ab1.getunSelectedValues();
       
        ab1.leftselected = aa;
        ab1.rightselected = aa;
        ab1.doSearch();   
        
        
        
         
        BenchController ab2 = new BenchController();

        ab2.resourcename = 'Location';
        ab2.effortHour = 'Allocated Efforts';   
        ab2.frmdate = Date.today().addDays(-30);
        ab2.todate = Date.today().addDays(16);
        List<String> a2 = new List<String>();
        a2.add('Pune');
        a2.add('Nashik');
        a2.add('Mumbai');
        ab2.firstElement=a2;
        ab2.getResourcenames();
        ab2.geteffortHours();
        ab2.getSelectedValues();
        ab2.getunSelectedValues();
        //ab2.selectclick();
        //ab2.unselectclick();
        //ab2.selectclick1();
        ab2.leftselected = a;
        ab2.rightselected = a;
        ab2.doSearch();
        
         
        BenchController ab3 = new BenchController();

        ab3.resourcename = 'Resource';
        ab3.effortHour = 'Allocated Efforts';   
        ab3.frmdate = Date.today().addDays(-30);
        ab3.todate = Date.today().addDays(16);
        List<String> a3 = new List<String>();
        a3.add('T2 TestEmp');
        a3.add('T1 TestEmp');
        a3.add('TestEmp');
        ab3.firstElement=a3;
        ab3.getResourcenames();
        ab3.geteffortHours();
        ab3.getSelectedValues();
        ab3.getunSelectedValues();
      
        ab3.leftselected = a;
        ab3.rightselected = a;
        ab3.doSearch();

        Test.StopTest();
       
    }
}