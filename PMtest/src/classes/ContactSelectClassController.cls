public with sharing class ContactSelectClassController{

    public String beforeblob1{get;set;}
    //public String conid{get;set;}
    public String emailEncoded { get; set; }
    public String email { get; set; }
    public String phoneEncoded { get; set; }
    public String con_number { get; set; }
    public String fullname{get;set;}
    public String emailName{get;set;}
    public String fullnameEncoded{get;set;}
    @TestVisible public List<wrapAccount> wrapAccountList {get; set;}
    public List<Contact> selectedAccounts{get;set;}
    public String feedid;
    private  List<Id> contactids=new list<Id>();
    public List<Contact> cont{get;set;}
  
    public List<Feedback_Contacts__c> feedcon{get;set;}     
    public ContactSelectClassController()
    {
     feedid= (ApexPages.currentPage().getParameters().get('fid'));
     emailName= (ApexPages.currentPage().getParameters().get('emailName'));
     fullnameEncoded = ApexPages.currentPage().getParameters().get('fullname');
     emailEncoded = ApexPages.currentPage().getParameters().get('email');
     phoneEncoded = ApexPages.currentPage().getParameters().get('con_number');
     if(wrapAccountList == null)
      {     wrapAccountList = new List<wrapAccount>();
            for(Contact a: [select Id, Name,Email,Phone from Contact])
             {
                wrapAccountList.add(new wrapAccount(a));
             }
         }
      }
   public pageReference CancelAction()
  {
    PageReference pr1 = new PageReference('/apex/SBSendSurvey');
    pr1.setRedirect(true);
    return pr1;
  } 

 @TestVisible public void processSelected()
     {
     
     feedid= (ApexPages.currentPage().getParameters().get('id'));
    
     fullnameEncoded = ApexPages.currentPage().getParameters().get('fullname');
   
     if(fullnameEncoded !=null || fullnameEncoded =='')
     {
        Blob bodyBlob1 =EncodingUtil.base64Decode(fullnameEncoded );
        fullname = bodyBlob1.toString();
        
     }
  else
  {
   fullname = ApexPages.currentPage().getParameters().get('fullname');
  }
    emailEncoded = ApexPages.currentPage().getParameters().get('email');
  
    if(emailEncoded !=null || emailEncoded =='')
    {
      Blob bodyBlob1 =EncodingUtil.base64Decode(emailEncoded );
      email = bodyBlob1.toString();
    }
  else
  {
   email = ApexPages.currentPage().getParameters().get('email');
  }
  phoneEncoded = ApexPages.currentPage().getParameters().get('con_number');
  if(phoneEncoded !=null )  
  { 
  Blob bodyBlob2 =EncodingUtil.base64Decode(phoneEncoded );
  con_number =bodyBlob2.toString();
  }
  else
  {
  con_number=ApexPages.currentPage().getParameters().get('con_number');
  } 
        
    selectedAccounts = new List<Contact>();
 
        for(wrapAccount wrapAccountObj : wrapAccountList)
         {
            if(wrapAccountObj.selected == true)
             {
                selectedAccounts.add(wrapAccountObj.acc);
                 
             }
         }
          
          for(Contact cont: selectedAccounts)
        {
           contactids.add(cont.Id);
        } 
        
        
       feedcon=new List<Feedback_Contacts__c>();

        cont  = new List<Contact>();
        cont  =  [Select firstname,lastname,email,id,name,MobilePhone from Contact where id in :selectedAccounts];
        for(Contact c :cont)
        {
       
        string fullname = c.firstname + ' ' + c.lastname; 
      
        Blob beforeblob = Blob.valueOf(fullname);
        EncodingUtil.urlEncode(fullname,'UTF-8');
     
        string email = c.email;
        Blob beforeblob1 = Blob.valueOf(email); 
        EncodingUtil.urlEncode(email,'UTF-8');
   
           string con_number = c.MobilePhone;

           Blob beforeblob2 = Blob.valueOf(con_number);
           EncodingUtil.urlEncode(con_number,'UTF-8'); 
    
       
        Feedback_Contacts__c fc = new Feedback_Contacts__c();
        fc.FeedbackContactName__c= c.Id;
                 system.debug('++++++++++ConNumber__c++++++++++'+ fc.FeedbackContactName__c); 
        fc.FeedBackNo__c = feedid;
                 system.debug('++++++++++ConNumber__c++++++++++'+fc.FeedBackNo__c); 

        fc.test__c = EncodingUtil.base64Encode(beforeblob ) ;
        fc.Email__c = EncodingUtil.base64Encode(beforeblob1 ) ;
       fc.ConNumber__c= EncodingUtil.base64Encode(beforeblob2 ) ;
         system.debug('++++++++++ConNumber__c++++++++++'+ fc.ConNumber__c+'**'+fc.FeedBackNo__c); 
        feedcon.add(fc);
        system.debug('++++++++++feedcon++++++++++'+feedcon); 
       }
       insert feedcon;
        
         system.debug('++++++++++INSERT++++++++++'+feedcon);
      
        Messaging.MassEmailMessage mail = new Messaging.MassEmailMessage();
        mail.setTargetObjectIds(contactids);
   if(!Test.isRunningTest()){
  
        mail.setTemplateId('00X36000000hxFb'); //00X55000000E1LO
        Messaging.sendEmail(new Messaging.MassEmailMessage[] {mail});
      }   
        String msg1 = 'Mail Sent!';
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.INFO,msg1));
          
          
     }
 
    @TestVisible public class wrapAccount {
        public Contact acc {get; set;}
        public Boolean selected {get; set;}
 
        public wrapAccount(Contact a) {
            acc = a;
            selected = false;
        }
    }
}