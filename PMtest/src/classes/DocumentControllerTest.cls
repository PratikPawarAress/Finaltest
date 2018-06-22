@isTest


public class DocumentControllerTest
{   

     
   static testMethod void DocControllerTest()
   
    {
     ID folderid = '00l36000000n8b4';
     
     Document doc = new Document();        
     doc.name = 'xyz';
     doc.IsPublic = true;
     doc.ContentType ='image/png';
     doc.Type = 'png';
     doc.folderid='00l36000000n8b4'; 
     insert doc;
     
     
     Feedback_Main__c fbm = new Feedback_Main__c();
     fbm.Image__c = '<img src="https://"></img>';
     fbm.Feedback_Name__c ='feedbackImage';
     
     insert fbm;
     
     
      Test.startTest(); 
          
      PageReference ref = new PageReference('apex/SBAddQuestionPage'); 
      ref.getParameters().put('id', String.valueOf(fbm.Id));
      Test.setCurrentPage(ref);
      
       DocumentController docCtrl = new DocumentController(); 
       docCtrl.saveAndRedirect();
       docCtrl.Manage();
         
              
      Test.stopTest();
     
     
     }

}