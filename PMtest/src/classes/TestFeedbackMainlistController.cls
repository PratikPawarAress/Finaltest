@isTest
private class TestFeedbackMainlistController {
    static testMethod void myUnitTest() {
      
       Feedback_Main__c fm = new Feedback_Main__c();
       fm.Feedback_Name__c = 'feedback';
       insert fm;
       
       Feedback_Question_Main__c fqm = new Feedback_Question_Main__c();
       fqm.Related_Feedback__c = fm.id;
       
       Feedback_Option_Main__c fom = new Feedback_Option_Main__c ();
       fom.Related_Question__c = fqm.id;
       
       Question_Repository__c qr = new Question_Repository__c ();
       insert qr;
       
     
     Test.startTest();//Starts the scope of test     
           Test.setCurrentPage(Page.SBSendSurvey);
            
          
            FeedbackMainlistController ctr = new FeedbackMainlistController(new ApexPages.StandardController(fm));
         ctr.getFeed();
         ctr.queslist();
         
      Test.stopTest();//Ends the scope of test
        
       
    }
}