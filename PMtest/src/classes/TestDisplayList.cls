@isTest

public class TestDisplayList
{
    static testmethod void constructorTest() {
        // set up some test data to work with
        Feedback_Main__c  fmc= new Feedback_Main__c (Feedback_Name__c ='a0O550000018S9L', Question_Bank__c ='a0V55000000yz1w');
        

        // start the test execution context
        Test.startTest();

        // set the test's page to your VF page (or pass in a PageReference)
        Test.setCurrentPage(Page.SBAddQuestionPage);

        // call the constructor
        DisplayList controller = new DisplayList(new ApexPages.StandardController(fmc));
        
        controller.getList();
        
        // stop the test
        Test.stopTest();
    }
}