@isTest
private class TestDisplayFeedback  {
   
   
    static testMethod void myUnitTest() 
    {
      Feedback_Main__c fm = new Feedback_Main__c();
      fm.Feedback_Name__c ='feedback';
      insert fm;  
      Feedback_Question_Main__c fqm = new Feedback_Question_Main__c ();
      fqm.Related_Feedback__c = fm.id;
      insert fqm;      
     
      Feedback_Question_Main__c fqm1 = new Feedback_Question_Main__c ();
      fqm1.Related_Feedback__c = fm.id;
      insert fqm1; 
      
      
       PageReference ref = new PageReference('/apex/SBFeedbackUpdate'); 
       ref.getParameters().put('id', String.valueOf(fm.Id));
       Test.setCurrentPage(ref);
          
       ApexPages.StandardController sc = new ApexPages.StandardController(fm);                 
        DisplayFeedback ctr = new DisplayFeedback(sc);
        Test.StartTest();
        
        ctr.cancel(); 
        ctr.UpdateQuestion();
        string Str =  String.valueOf(fm.Id);
        PageReference Pageref = new PageReference('/apex/FeedbackQuestionMain'); 
        Pageref.getParameters().put('id', String.valueOf(Str));
        Test.setCurrentPage(ref);      
        
              
        ctr.getListQuestion();
        Test.stopTest();
        
        
    }
   
   }