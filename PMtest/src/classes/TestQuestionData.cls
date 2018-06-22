@isTest

public class TestQuestionData 
{
    static testmethod void constructorTest(){
    Test.startTest();    

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
    
    Feedback_Option_Main__c focDup = [Select id,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.id,Related_Question__r.Question__c from Feedback_Option_Main__c where id =:foc.id];
     focDup.Option_One__c='2';
     focDup.Option_Two__c='3';
     focDup.Option_Three__c='4'; 
     update focDup;
    
    
       PageReference ref = new PageReference('/apex/SBUpdateQuestion'); 
       ref.getParameters().put('id', String.valueOf(foc.Id));
       Test.setCurrentPage(ref); 
              
        ApexPages.StandardController sc = new ApexPages.StandardController(foc);                 
        QuestionData ctr = new QuestionData(sc);     
        ctr.UpdateDirectQuestion();
        ctr.UpdateDirectSlider();
        ctr.UpdateDirectFreetext();
        ctr.DeleteQuestion();        
        ctr.cancel();
        
        Test.stopTest();
      
    }
    
 
    

}