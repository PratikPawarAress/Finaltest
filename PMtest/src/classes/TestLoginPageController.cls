@isTest

public class TestLoginPageController {
    
    static testMethod void validcode(){
        
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        
        Test.startTest();
        PageReference pageRef = Page.LoginPage;
       
        Test.setCurrentPage(pageRef);
        LoginPageController pagecontroller = new LoginPageController();
        pagecontroller.employeecode = conObj.Employee_ID__c;
        
        pagecontroller.login();
        
        
        Test.stopTest();
        
        
        
    }
    
    static testMethod void invalidcode(){
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        Test.startTest();
        PageReference pageRef = Page.LoginPage;
       
        Test.setCurrentPage(pageRef);
        LoginPageController pagecontroller = new LoginPageController();
        pagecontroller.employeecode = '343AV';
        
        pagecontroller.login();
        
        
        Test.stopTest();
        
    }
    
    static testMethod void withoutcode(){
        Contact conObj = new Contact();
        conObj.RecordTypeId = [SELECT Id FROM RecordType WHERE Name = 'Employee'].Id;
        conObj.LastName = 'TestEmp';
        conObj.Employee_ID__c = 'AS1111';      
        conObj.Email = 'testEmp@gmail.com';
        conObj.MobilePhone = '8985868686';
        insert conObj;
        Test.startTest();
        PageReference pageRef = Page.LoginPage;
       
        Test.setCurrentPage(pageRef);
        LoginPageController pagecontroller = new LoginPageController();
        pagecontroller.employeecode = '';
        
        pagecontroller.login();
        
        
        Test.stopTest();
        
    }
    
    

}