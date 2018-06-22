@isTest
public class TestAutobenchAllocationbatch {
    
    Static testMethod void autobenchMethod()
    {
        List<Project__c> Project1 = new List<Project__c>();
        List<Allocation__c>  Allocation1 = new List<Allocation__c>();
        List<Contact> contact1 = new List<Contact>();
        
        Contact con1 = new Contact();
        con1.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        con1.FirstName = 'AAAA';
        con1.LastName = 'BBBB';
        con1.Employee_ID__c = 'AS1114';      
        con1.Email = 'testEmp@gmail.com';
        con1.MobilePhone ='8985868686';
        insert con1;
        
        Contact con2 = new Contact();
        con2.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        con2.FirstName = 'EEEE';
        con2.LastName = 'DDDD';
        con2.Employee_ID__c = 'AS1115';      
        con2.Email = 'testEmp@gmail.com';
        con2.MobilePhone = '8985868686';
        insert con2;
        
        Project__c Pro1 = new Project__c();
        pro1.Name='M0000001'; 
        pro1.Project_Name__c='Bench';
        pro1.Planned_Start_Date__c = Date.today().adddays(-6);
        pro1.Planned_End_Date__c = Date.today().adddays(8);
        pro1.Estimated_Effort__c=300;
        pro1.Stage__c = 'Execution';
        insert pro1;
         
        
        Allocation__c Alloc1 = new Allocation__c();
        Alloc1.Project__c = pro1.Id;
        Alloc1.Employee__c = con1.Id;
        Alloc1.Allocation_Start_Date__c = Date.today().adddays(-3);
        Alloc1.Allocation_End_Date__c = Date.today().adddays(2);
        Alloc1.Allocated_Effort_Hrs__c = 20;
        Alloc1.Allocation_Percentage__c = 60;
        Alloc1.Allocation_Type__c = 'Billable';
        system.debug('Insert allocation before------------------>>>>>>>>>>>>>>>>'+Alloc1);
        insert Alloc1;
        system.debug('Insert allocation afters------------------>>>>>>>>>>>>>>>>'+Alloc1);

        
      /*Allocation__c Alloc2 = new Allocation__c();
        Alloc2.Project__c = pro1.Id;
        Alloc2.Employee__c = con1.Id;
        Alloc2.Allocation_Start_Date__c = Date.today().adddays(-3);
        Alloc2.Allocation_End_Date__c = Date.today().adddays(2);
        Alloc2.Allocated_Effort_Hrs__c = 20;
        Alloc2.Allocation_Percentage__c = 40;
        Alloc2.Allocation_Type__c = 'Billable';
        insert Alloc2;*/

        
        Test.startTest();
        AutoBenchAllocationBatch ab1 = new AutoBenchAllocationBatch();
        DataBase.executeBatch(ab1);
        Test.stopTest();
        
    }
}