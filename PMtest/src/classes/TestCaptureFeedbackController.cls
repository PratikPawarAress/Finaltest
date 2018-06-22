@isTest
public class TestCaptureFeedbackController
{
public static testMethod void testupdate()
{
         Feedback_Main__c fm = new Feedback_Main__c();
         fm.Feedback_Name__c ='feedbackNew';
         fm.Footer_text__c = 'xxxxxxx';
         fm.Header_Text__c = 'yyyyyyy';
        
        
         fm.Image__c ='test';
         insert fm; 

        Account acc = new Account();
        acc.Name = 'test';
        insert acc;

      Contact con = new Contact();
      con.LastName ='feedback';
      con.MobilePhone='123456789';
     // con.Account ='acc.id';
      con.Email ='test@test.com'; 
      insert con;   
      
      Feedback_Contacts__c fc = new Feedback_Contacts__c();
      fc.ConNumber__c = '1234';
      fc.FeedbackContactName__c = con.id;
      fc.Email__c = 'test@test.com';
      fc.FeedBackNo__c = fm.id;
      fc.Phone__c = '1234567890';
      fc.test__c = 'wrtgsdg';
      insert fc; 
        
          con.Fullname_URL__c = fc.test__c ;
          con.Department = fc.Email__c;
          con.OtherPhone = fc.ConNumber__c;
   
   update con;
   }
   }