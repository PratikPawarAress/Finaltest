@isTest
private class TestQuestionRepositoryController {
    static testMethod void myUnitTest() {
      
       Question_Repository__c qr = new Question_Repository__c ();
       insert qr; 
       
     
     Test.startTest();//Starts the scope of test     
           Test.setCurrentPage(Page.SBQuestionRepository);
            
          
             QuestionRepositoryController ctr = new QuestionRepositoryController(new ApexPages.StandardController(qr));
         ctr.saveAndRedirect();
         ctr.cancel();
         
      Test.stopTest();//Ends the scope of test
        
       
    }
}