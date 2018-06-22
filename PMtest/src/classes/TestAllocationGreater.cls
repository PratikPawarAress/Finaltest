@isTest
public class TestAllocationGreater {
    
    static testmethod void testdata()
       
    {   
        Test.startTest();
        Project__c projRec1 = new Project__c();
        projRec1.Planned_Start_Date__c=Date.today();
        projRec1.Planned_End_Date__c=Date.today().adddays(5);
        projRec1.Actual_Start_Date__c=Date.today();
        projRec1.Actual_End_Date__c=Date.today().adddays(5);
        projRec1.Name='P0000100';
        projRec1.Project_Name__c='TestProject11';
        projRec1.Manager_Email__c='test@test.com';
       // projRec1.Project_Manager__c='a0G3600000Q045pEAB';
       // ProjRec1.Project_Manager__c= Project_Manager__c.Id;
       
        insert projRec1;
         
        
                  
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        
        Allocation__c alloc = new Allocation__c();
        alloc.Allocated_Effort_Hrs__c=80;
        alloc.Allocation_Percentage__c=80;
        alloc.Allocation_Start_Date__c=Date.today();
        alloc.Allocation_End_Date__c=Date.today();
        alloc.Allocation_Type__c ='Billable';
        alloc.Employee__c=conObj.Id;
        alloc.Project__c=projRec1.Id;
        insert alloc;
        ID id1=alloc.Id;
        
        
        List<Allocation__c> peopleList1 = new List<Allocation__c>{ [select id from Allocation__c where id =: id1]};
            
        for(Allocation__c ppdd:peopleList1)
            ppdd.Allocation_Type__c ='Bench';
        
        
        update peopleList1;
        Test.stopTest();
    }
}