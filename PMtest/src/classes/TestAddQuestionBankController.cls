@isTest

public class TestAddQuestionBankController
    {
     static testMethod void TestAddQuestionBankController()
       {
          Test.startTest();//Starts the scope of test 
        Contact  c = new Contact(LastName='Abc');
        insert c;
       
        Question_Repository__c qrObj = new Question_Repository__c();        
        qrObj.Repository_Name__c ='testName';    
        insert qrObj;  
        
         Feedback_Main__c fm = new Feedback_Main__c();
        
         fm.Feedback_Name__c ='feedbackNew';
         fm.Footer_text__c = 'xxxxxxx';
         fm.Header_Text__c = 'yyyyyyy';
         fm.Feedback_Taken_by_Contact__c = c.id;
         fm.Question_Bank__c  = qrObj.id;
         fm.Image__c ='test';
         insert fm; 
      
       Feedback_Main__c fm1 = new Feedback_Main__c();
        
         fm1.Feedback_Name__c ='feedbackNew';
         fm1.Footer_text__c = 'xxxxxxx';
         fm1.Header_Text__c = 'yyyyyyy';
         fm1.Feedback_Taken_by_Contact__c = c.id;
         fm1.Question_Bank__c  = qrObj.id;
         insert fm1; 
      
        Question_Datas__c qdc = new Question_Datas__c();
        qdc.Question__c= 'testQuestion';
        qdc.Option_1__c= 'Option1';
        qdc.Option_2__c= 'Option2';
        qdc.Option_4__c= 'Option3';            
        qdc.Option_5__c= 'Option4';    
        qdc.AddQuestion__c = qrObj.id;
        qdc.Type__c='Radio';
         insert qdc;
        
        Feedback_Question_Main__c fqmc = new Feedback_Question_Main__c();
        
        fqmc.Question__c  = qdc.Question__c;
        fqmc.Type__c = qdc.Type__c ;
        fqmc.Related_Feedback__c = fm.id;
         insert fqmc;
        
        Feedback_Option_Main__c fopm = new Feedback_Option_Main__c();
        
        fopm.Option_One__c = qdc.Option_1__c;
        fopm.Option_Two__c = qdc.Option_2__c;
        fopm.Option_Three__c = qdc.Option_3__c;
        fopm.Option_Four__c = qdc.Option_4__c;
        fopm.Option_Five__c = qdc.Option_5__c;
        fopm.Related_Question__c = fqmc.id;       
         insert fopm; 
     
     Question_Datas__c qd = new Question_Datas__c();
        qd.Question__c= 'testQuestion';
        qd.Option_1__c= 'Option1';
        qd.Option_2__c= 'Option2';
        qd.Option_4__c= 'Option3';            
        qd.Option_5__c= 'Option4';    
        qd.AddQuestion__c = qrObj.id;
        qd.Type__c='Radio';
        insert qd;
        
        
        
             
         string lookupid = fm.id; 
        
           
            PageReference ref = new PageReference('/apex/SBAddQuestionBank'); 
            ref.getParameters().put('id', String.valueOf(fm.Id));
            ref.getParameters().put('lookup', String.valueOf(qrObj.Id));
            Test.setCurrentPage(ref);
           AddQuestionBankController ctr = new AddQuestionBankController (new ApexPages.StandardController(fm));
        List<Question_Datas__c> Quest_DataList;
        
        Quest_DataList =  [Select id,Question__c,AddQuestion__c,Type__c from Question_Datas__c where AddQuestion__c =:lookupid] ;
        List<Feedback_Option_Main__c> Quest_FBQMList = new List<Feedback_Option_Main__c>();

      for(Question_Datas__c qr :Quest_DataList){
      
        Feedback_Question_Main__c fqc = new Feedback_Question_Main__c();
        fqc.Question__c  = qr.Question__c;
        fqc.Type__c = qr.Type__c ;
        fqc.Related_Feedback__c = fm.id ;       
        insert fqc;
        
         Feedback_Option_Main__c fqm = new Feedback_Option_Main__c();
        
        fqm.Option_One__c= qr.Option_1__c;
        fqm.Option_Two__c = qr.Option_2__c;
        fqm.Option_Three__c= qr.Option_3__c;
        fqm.Option_Four__c= qr.Option_4__c;
        fqm.Option_Five__c= qr.Option_5__c;
        fqm.Related_Question__c = fqc.id;       
        Quest_FBQMList.add(fqm);                
        
       } 
       insert Quest_FBQMList;   
       Feedback_Main__c updateFM = [Select id,Feedback_Name__c,Feedback_Taken_by_Contact__c,Footer_text__c,Header_Text__c,Image__c,Question_Bank__c from Feedback_Main__c where id =:fm.id];
       updateFM.Feedback_Name__c ='test';

         update updateFM;
          ctr.UpdateQuestion();
          ctr.PassingParameter();
          ctr.Cancel();
          
      Test.stopTest();//Ends the scope of test
        
    }
     
}