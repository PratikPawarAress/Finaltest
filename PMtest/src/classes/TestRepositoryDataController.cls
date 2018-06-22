@isTest
private class TestRepositoryDataController {
    static testMethod void myUnitTest() {
      
       Question_Repository__c qr = new Question_Repository__c ();
       insert qr; 
       
      Feedback_Main__c fm = new Feedback_Main__c();
      fm.Feedback_Name__c ='feedback';
      insert fm; 
      
       Feedback_Question_Main__c fqm = new Feedback_Question_Main__c ();
       fqm.Related_Feedback__c = fm.id;
       insert fqm;  
       Question_Datas__c questOBJ= new Question_Datas__c ();
         
        questOBJ.AddQuestion__c = qr.id;
        questOBJ.Question__c ='wertwer';
        questOBJ.Option_1__c = 'sfsdf';
        questOBJ.Option_2__c ='sadfsd';
        questOBJ.Option_3__c = 'sdfs';
        questOBJ.Option_4__c ='sfsd';
        questOBJ.Option_5__c = 'ada';
        insert  questOBJ;  
     
     Feedback_Option_Main__c quest = new Feedback_Option_Main__c ();
        quest.Related_Question__c=fqm.id;
        quest.Option_One__c = 'fghfgh';
        quest.Option_Two__c = 'fhfgh';
        quest.Option_Three__c = 'fhfgh';
        quest.Option_Four__c = 'dgdf';
        quest.Option_Five__c ='srtet';
        insert quest;
     
      Feedback_Option_Main__c quest1 = new Feedback_Option_Main__c ();
        quest1.Related_Question__c=fqm.id;
        quest1.Option_One__c = 'fghfgh';
        quest1.Option_Two__c = 'fhfgh';
        quest1.Option_Three__c = 'fhfgh';
        quest1.Option_Four__c = 'dgdf';
        quest1.Option_Five__c ='srtet';
        insert quest1;
         
      
     
        Test.startTest();//Starts the scope of test     
          
            PageReference ref = new PageReference('/apex/SBDeleteRepositorydata'); 
            ref.getParameters().put('id', String.valueOf(questOBJ.Id));
            Test.setCurrentPage(ref);
          
          ApexPages.StandardController sc = new ApexPages.StandardController(questOBJ);                 
          RepositoryData ctr = new RepositoryData(sc);
          ctr.UpdateQuestion();
          ctr.UpdateQuestionSl();
      //    ctr.UpdateDirectQuestion();
          ctr.UpdateQuestionFree();
          ctr.DeleteQuestion();
          ctr.Cancel();
      Test.stopTest();//Ends the scope of test
        
       
    }
}