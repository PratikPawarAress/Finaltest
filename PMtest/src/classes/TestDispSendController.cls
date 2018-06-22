@isTest

public class TestDispSendController
{
    static testmethod void constructorTest(){
     string OptionOne ='test';
     Feedback_Main__c fm = new Feedback_Main__c();
      fm.Feedback_Name__c ='feedback';
      insert fm;  
      Feedback_Question_Main__c fqm = new Feedback_Question_Main__c ();
      fqm.Related_Feedback__c = fm.id;
      insert fqm;      
     
      Feedback_Question_Main__c fqm1 = new Feedback_Question_Main__c ();
      fqm1.Related_Feedback__c = fm.id;
      fqm1.Question__c ='test';
      fqm1.Type__c ='Radio';     
      insert fqm1; 
      
     Feedback_Option_Main__c foc = new Feedback_Option_Main__c();
     foc.Option_One__c='1';
     foc.Option_Two__c='2';
     foc.Option_Three__c='3';
     foc.Option_Four__c='4';
     foc.Option_Five__c='5';
     foc.Related_Question__c =fqm1.id;
     insert foc;
    
        // start the test execution context
         Test.startTest();
         Test.setCurrentPage(Page.SBSendDisplay);

       PageReference ref = new PageReference('/apex/SBSendDisplay'); 
       ref.getParameters().put('id', String.valueOf(fm.Id));
       Test.setCurrentPage(ref); 
        // call the constructor
              
        ApexPages.StandardController sc = new ApexPages.StandardController(foc);                 
        DispSendController ctr = new DispSendController (sc);
         DispSendController ctr1 = new DispSendController ();
        ctr.Cancel();
        ctr.Save();
        ctr.getQuestion();
        ctr.SaveQues();
        ctr.DelQues();
        ctr.getRepo();
        ctr.getrecdata();
        ctr.queslist();
        ctr.EditRecord();
        ctr.SendContacts();
        
        
        // stop the test
         Test.stopTest();
  
  
  
    }
    
 
    

}