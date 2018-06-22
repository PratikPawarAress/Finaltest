@isTest
private class TestQBsampleCon  {
    static testMethod void myUnitTest() {
        string pickval ='RADIO';
        Boolean b = false;
        Boolean t = true;
        Question_Repository__c qrObj = new Question_Repository__c();        
        qrObj.Repository_Name__c ='testName';    
        insert qrObj;  
        
        Question_Datas__c fqmobj=new Question_Datas__c();
        fqmobj.Question__c='questiontaken';
        fqmobj.Option_1__c= 'OptionOneGet';
        fqmobj.Option_2__c= 'OptionTwoGet';
        fqmobj.Option_3__c= 'OptionThreeGet';
        fqmobj.Option_4__c= 'OptionFourGet';            
        fqmobj.Option_5__c= 'OptionFiveGet';    
        fqmobj.AddQuestion__c =qrObj.id;
        fqmobj.Type__c='Radio';
        insert fqmobj;
        
        Test.startTest();//Starts the scope of test     
        QBsampleCon con = new QBsampleCon(); 
        b = false;
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
    
        con.setRadio(b);
        con.setSlider(b);
        con.setFS(b);
        con.pickvalselect(); 
        
        
        con.doInsert();
        con.doInsertFS();
        con.doInsertSlider();
        con.CancelAction();
        
        Test.stopTest();//Ends the scope of test        
       
    }    
    
}