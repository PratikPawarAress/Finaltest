@isTest(SeeAllData=true)
public class TestDisplayController 
{
    static testmethod void constructorTest(){
      string email ='test';
      Blob beforeblob1 = Blob.valueOf(email); 
      String json = '{\"$type\": \"application/vnd.pbs-collection+json\", \"$self\": \"http://services.pbs.org/callsigns/zip/77050.json\", \"$items\": [{\"confidence\": 100, \"$type\": \"application/vnd.pbs-resource+json\", \"$class\": \"CallSign2ZipMapping\", \"rank\": 1, \"$self\": \"http://services.pbs.org/callsigns/zip/77050/KUHT.json\", \"$links\": [{\"callsign\": \"KUHT\", \"$links\": [{\"$type\": \"application/vnd.pbs-resource+json\", \"mailing_state\": \"TX\", \"short_common_name\": \"Houston\", \"$class\": \"Station\", \"$relationship\": \"parent\", \"$self\": \"http://services.pbs.org/station/36.json\", \"mailing_city\": \"Houston\", \"$created\": \"2012-11-12T04:54:52-05:00\", \"$links\": [{\"$type\": \"application/vnd.pbs-collection+json\", \"$relationship\": \"children\", \"$self\": \"http://services.pbs.org/callsigns/station/36.json\", \"$elements\": \"Callsign\", \"$accepts\": [{\"$type\": \"application/vnd.pbs-resource+json\", \"$class\": \"Callsign\"}]}, {\"$relationship\": \"flagship\", \"$type\": \"application/vnd.pbs-resource+json\", \"$class\": \"Callsign\", \"callsign\": \"KUHT\", \"$self\": \"http://services.pbs.org/callsign/KUHT.json\"}], \"common_name\": \"KUHT / Channel 8\", \"$edited\": \"2012-11-12T04:54:52-05:00\"}, {\"$type\": \"application/vnd.pbs-collection+json\", \"$relationship\": \"children\", \"$elements\": \"Feed\", \"$self\": \"http://services.pbs.org/feeds/callsign/KUHT.json\"}], \"$type\": \"application/vnd.pbs-resource+json\", \"$class\": \"Callsign\", \"$relationship\": \"related\", \"$self\": \"http://services.pbs.org/callsign/KUHT.json\"}]}], \"$elements\": \"CallSign2ZipMapping\", \"$accepts\": [{\"$type\": \"application/vnd.pbs-resource+json\", \"$class\": \"CallSign2ZipMapping\"}]}';
      Feedback_Main__c fm = new Feedback_Main__c();
      fm.Feedback_Name__c ='feedback';
      fm.Image__c ='<img src="https://lh4.googleusercontent.com/-v0soe-ievYE/AAAAAAAAAAI/AAAAAAAAAAA/OixOH_h84Po/photo.jpg"></img>';
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
              
       
        DisplayController ctr = new DisplayController();
        ctr.getQuestions();
        ctr.SubmitSurvey();        
      
         Test.stopTest();
  } 

}