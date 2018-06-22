public with sharing class DisplayController {



    Public Feedback_Main__c mainobj{get;set;}
    //Public Feedback_Question_Main__c questobj{get;set;}
    //Public Feedback_Option_Main__c optobje{get;set;}
    //Public List<Feedback_Main__c> mainList{get;set;}
    //Public List<Feedback_Question_Main__c> questList{get;set;}
    Public List<Feedback_Option_Main__c> optList{get;set;}
    public String fullname{get;set;}
    //Public String dispname{get;set;}
    public String fullnameEncoded{get;set;}
    public String email{get;set;}
    public String emailEncoded{get;set;}
    public String phone{get;set;}
    public String phoneEncoded{get;set;}
    Public String emailName{get;set;}
    Public String SelectedValue{get;set;}
    Public Id questid{get;set;}
    //Public String str{get;set;}
    Public String firstSubString{get;set;}
    Public String secondSubString{get;set;}
    Public DisplayController(){
    questid= ApexPages.currentPage().getParameters().get('id');

    mainobj = [select Feedback_Name__c,Image__c,Header_Text__c,Footer_Text__c from Feedback_Main__c where id=:questid];

    firstSubString = mainobj.Image__c.substringBetween('<img src="', '"></img>');
    System.debug('First substring: ' + firstSubString);
    secondSubString = firstSubString.substring(0,firstSubString.length()-3);
  //  secondSubString = firstSubString.substringBetween(' ', '" width="500" height="281');
    System.debug('Second substring: ' + secondSubString);

           
            fullnameEncoded = ApexPages.currentPage().getParameters().get('fullname');
            system.debug('+++++++++emailName++++**');
            emailName= ApexPages.currentPage().getParameters().get('emailName');
            system.debug('+++++++++emailName+++++++'+emailName);
            email = ApexPages.currentPage().getParameters().get('email');
            phone= ApexPages.currentPage().getParameters().get('phone');
              fullname= ApexPages.currentPage().getParameters().get('fullname');
                  fullnameEncoded = ApexPages.currentPage().getParameters().get('fullname');
           system.debug('++++++++NAMEENCODED++++++'+fullnameEncoded );
              if(fullnameEncoded !=null || fullnameEncoded =='')
  {
  Blob bodyBlob1 =EncodingUtil.base64Decode(fullnameEncoded );
   fullname = bodyBlob1.toString();
   system.debug('++++++++fullname ++++++'+fullname);
  }
  else{
   fullname = ApexPages.currentPage().getParameters().get('fullname');
  }
//   Blob beforeblob = Blob.valueOf(fullname);
  //      EncodingUtil.urlEncode(fullname,'UTF-8');
          
           emailEncoded = ApexPages.currentPage().getParameters().get('email');
  
  if(emailEncoded !=null || emailEncoded =='')
  {
  Blob bodyBlob1 =EncodingUtil.base64Decode(emailEncoded );
  email = bodyBlob1.toString();
  }
  else{
   email = ApexPages.currentPage().getParameters().get('email');
  }   
 
 if(!Test.isRunningTest()){

  Blob beforeblob1 = Blob.valueOf(email); 
        EncodingUtil.urlEncode(email,'UTF-8'); 
        
         phoneEncoded = ApexPages.currentPage().getParameters().get('phone');
  if(phoneEncoded !=null )  
  { 
  Blob bodyBlob2 =EncodingUtil.base64Decode(phoneEncoded );
  phone=bodyBlob2.toString();
  }
  else{
  phone=ApexPages.currentPage().getParameters().get('phone');
  } 
     Blob beforeblob2 = Blob.valueOf(phone);
       EncodingUtil.urlEncode(phone,'UTF-8'); 
 }                            
}   


   Public List<Feedback_Option_Main__c> getQuestions(){
    
        optList = [select id, name,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.Type__c, Related_Question__r.Question__c,Related_Question__r.Related_Feedback__c from Feedback_Option_Main__c where Related_Question__r.Related_Feedback__c =:questid];
        
        return optList;
    }


   public PageReference SubmitSurvey() {
  if(!Test.isRunningTest()){
    list<String> ls = ( List<String> )JSON.deserialize( Apexpages.currentPage().getParameters().get('node'), List<string>.class ) ;
 
      System.debug('======================= ' + ls[0]);
    System.debug('======================= ' + ls[1]);
    System.debug('======================= ' + ls[2]); 
    System.debug('======================= ' + ls[3]);
    System.debug('======================= ' + ls[4]);
   List<Question_Option__c> SurveyList = new List<Question_Option__c>();
   List<Feedback_Option_Main__c>SelectedQuestions = [select id,Related_Question__r.Id from Feedback_Option_Main__c where Related_Question__r.Related_Feedback__c =:questid];

       
          for(integer i=0;i<ls.size();i++)
          {
                     
                      Question_Option__c SurveyResult = new Question_Option__c();
                      SurveyResult.Response__c = ls[i];
                      SurveyResult.Feedback_Main__c = questid;
                      SurveyResult.Related_Question__c = SelectedQuestions[i].Related_Question__r.Id;

                SurveyList.add(SurveyResult);
               system.debug('+++++++++++++++++SURVEY LIST+++++++++++++++'+SurveyList);
          }           
           insert SurveyList;
           pagereference ref = new pagereference('/apex/SBThankYou');
           ref.setredirect(true);
           
           return ref;
          }
          return null;
        } 

}