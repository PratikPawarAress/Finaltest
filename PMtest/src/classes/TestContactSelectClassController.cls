@istest
 public class TestContactSelectClassController
  {
   static testMethod void TestContactSelectClassController()
    {
       String beforeblob1 = 'test1';
    
    Test.StartTest();
    
    Contact c = new Contact(LastName='conLast',Email='firstLast.con@gmail.com',Phone='1234323456',FirstName='conFirst',MobilePhone='1234567890');
    insert c;
             
    ContactSelectClassController.wrapAccount wrap = new ContactSelectClassController.wrapAccount(c);
    // wrap.setselected(true);
  
    ContactSelectClassController consel = new ContactSelectClassController();
    ContactSelectClassController selcontact = new ContactSelectClassController();
    
    consel.CancelAction();
     List<Contact> selectedAccounts = new List<Contact>();
     List<Id> contactids = new List<Id>();

   selectedAccounts = [select id from contact where FirstName ='PQR'];
  
   for(Contact cont: selectedAccounts)
        {
           contactids.add(cont.id);
        } 
  
    consel.processSelected(); 
  
     
     Feedback_Main__c fm= new Feedback_Main__c(Feedback_Taken_by_Contact__c=c.id,Feedback_Name__c='Survey Name');
     insert fm;
     Feedback_Contacts__c fc = new Feedback_Contacts__c(FeedbackContactName__c=c.id,FeedBackNo__c=fm.id,ResponseDate__c=date.today(),test__c='abc',Email__c='Abc@gmail.com',ConNumber__c='1223nk');
     insert fc;
     //selcontact.conid='0033600000Llrcc';
     selcontact.beforeblob1='abc@gmail.com';
     selcontact.con_number='7689345';
     String phone='238655739';
     
     blob bl= blob.valueof(selcontact.con_number);
     String encodedString =EncodingUtil.base64Encode(bl);
     selcontact.phoneEncoded=ApexPages.currentPage().getParameters().put('con_number',encodedString);
   
     // Test.setCurrentPage('SendMail');
       Test.setCurrentPageReference(new PageReference('Page.SendMail'));

       System.currentPageReference().getParameters().put('phoneEncoded','8568957340');
 
      String fullname='AbcCover';
      consel.fullnameEncoded=fullname;
          
      String emailEncoded='';
      selcontact.emailName=emailEncoded;
      
      Blob b1;
      String name1 ='ABCPQR';
      Blob b=Blob.valueof(name1);

     for(ContactSelectClassController.wrapAccount wraper :consel.wrapAccountList)
     {
        if(wraper.selected== false)
        {
            wraper.selected=true;
        }
     }
      
         Test.StopTest();
    }
     
}