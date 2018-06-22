@isTest
private class TestDispQuestRepController  {
   
   
    static testMethod void myUnitTest() 
    {
        Question_Repository__c qrObj = new Question_Repository__c();        
        qrObj.Repository_Name__c ='testName';    
        insert qrObj;  
    
        ApexPages.Standardcontroller sc = new ApexPages.Standardcontroller(qrObj);
        DispQuestRepController con = new DispQuestRepController(sc);       

        Test.StartTest();
        con.getrecdata();
        con.Save();        
        con.Cancel();
        con.SaveQues(); 
        con.SaveQuesSl();
        con.SaveQuesFree();
        con.DelQues();
        con.queslist();
        con.displayQue(); 
         con.GoBack() ;
        con.EditRecord();
      //  con.CloneBank();
        Test.stopTest();
        
        
    }
   
   }