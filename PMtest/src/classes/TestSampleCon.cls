@isTest
private class TestSampleCon  {
    static testMethod void myTest() {
        string pickval ='RADIO';
        Boolean b = false;
        Boolean t = true;
        
        Feedback_Main__c fm = new Feedback_Main__c(Feedback_Name__c='Test Survey1');
        insert fm;
        
        Feedback_Question_Main__c fqmobj=new Feedback_Question_Main__c();
        fqmobj.Question__c='TestQuestion';
        fqmobj.Related_Feedback__c=fm.id;
        fqmobj.Type__c='Radio';
        insert fqmobj;
        
        Feedback_Option_Main__c fom=new Feedback_Option_Main__c();
        fom.Related_Question__c=fqmobj.id;
        fom.Option_One__c= 'OptionOneGet';
        fom.Option_Two__c= 'OptionTwoGet';
        fom.Option_Three__c= 'OptionThreeGet';
        fom.Option_Four__c= 'OptionFourGet';            
        fom.Option_Five__c= 'OptionFiveGet';
        insert fom;
     
      
        ApexPages.currentPage().getParameters().put('id',fqmobj.id);

        
        Test.startTest();//Starts the scope of test     
        ApexPages.StandardController ctr = new ApexPages.StandardController(fqmobj);
        sampleCon sample = new sampleCon(ctr);
        
        sampleCon con = new sampleCon(); 
        
        con.setSlider(b);
        con.setFS(b); 
        con.getRadio();
        con.getSlider();
        con.getFS();  
        con.getItems();  
        con.test(); 
        con.getSelectedOptions();          
        string str ='test';
        con.setCountry(str);
        con.getCountry();  
       
        pickval ='RADIO';   
        con.setRadio(t);
        con.setSlider(b);
        con.setFS(b); 
        con.pickvalselect(); 
        
        
        pickval ='RADIO';   
        con.setRadio(b);
        con.setSlider(b);
        con.setFS(t); 
        con.pickvalselect();      
        
        pickval ='SLIDER'; 
        con.setRadio(b);
        con.setSlider(t);
        con.setFS(b);   
        con.pickvalselect(); 
        
        pickval ='FREE-TEXT'; 
        con.setRadio(b);
        con.setSlider(b);
        con.setFS(t);           
        con.pickvalselect();         
    
        con.setRadio(t);
        con.setSlider(t);
        con.setFS(t); 
        
        con.setRadio(b);
        con.setSlider(b);
        con.setFS(b);
        con.pickvalselect(); 
        ApexPages.currentPage().getParameters().put('id',fqmobj.id);
        con.CancelAction();
        
        Test.stopTest();//Ends the scope of test        
       
    }    
   static testMethod void myInsertMethodTest() {
      
        string pickval ='RADIO';
        Boolean b = false;
        Boolean t = true;
        
        Feedback_Main__c fm = new Feedback_Main__c(Feedback_Name__c='Test Survey1');
        insert fm;
        
        Feedback_Question_Main__c fqmobj=new Feedback_Question_Main__c();
        fqmobj.Question__c='TestQuestion';
        fqmobj.Related_Feedback__c=fm.id;
        fqmobj.Type__c='Radio';
        insert fqmobj;
        
        
       PageReference ref = new PageReference('/apex/SBDemoMain'); 
       ref.getParameters().put('id', String.valueOf(fm.Id));
       Test.setCurrentPage(ref); 
        
       Feedback_Option_Main__c fom=new Feedback_Option_Main__c();
       fom.Related_Question__c=fqmobj.id;
       fom.Option_One__c= 'OptionOneGet';
       fom.Option_Two__c= 'OptionTwoGet';
       fom.Option_Three__c= 'OptionThreeGet';
       fom.Option_Four__c= 'OptionFourGet';            
       fom.Option_Five__c= 'OptionFiveGet';
       insert fom;
     
             
      Test.startTest();//Starts the scope of test     
      ApexPages.StandardController ctr = new ApexPages.StandardController(fqmobj);
      sampleCon sample = new sampleCon(ctr);
      sample.doInsert(); 
       sample.doInsertFS();
      sample.doInsertSlider();
      Test.stopTest();//Ends the scope of test        
       
    }    
}