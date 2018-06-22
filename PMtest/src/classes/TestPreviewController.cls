@isTest

public class TestPreviewController
{
    static testmethod void constructorTest() {
        // set up some test data to work with
        Feedback_Main__c fm = new Feedback_Main__c();
        fm.Feedback_Name__c = 'feedback';
        insert fm;
        
        Feedback_Question_Main__c fqm =new Feedback_Question_Main__c();
        fqm.Related_Feedback__c = fm.id;
        fqm.Type__c ='Radio';
        fqm.Question__c ='what?';
        fqm.Related_Feedback__c = fm.id;
        insert fqm;
               
                Feedback_Option_Main__c fom= new Feedback_Option_Main__c (Option_One__c ='one',Option_Two__c ='two',Option_Three__c ='three',Option_Four__c ='four',Option_Five__c ='five');
        // start the test execution context
        Test.startTest();

        // set the test's page to your VF page (or pass in a PageReference)
        Test.setCurrentPage(Page.PreviewPage);

        // call the constructor
        PreviewController controller = new PreviewController(new ApexPages.StandardController(fom));
        controller.test();
        controller.getQuestions();
        controller.editQues();
        controller.editQuesSl();
        controller.editQuesft();
        controller.DelQues();
        controller.CancelAction();
        
        // stop the test
        Test.stopTest();
    }
}