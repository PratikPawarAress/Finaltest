public with sharing class FeedbackMainlistController
{
    public FeedbackMainlistController(ApexPages.StandardController controller) {
   
}

public FeedbackMainlistController()
{
}

  Public Id qid{get;set;}
  public string Selectedid {get;set;}
  String idfetch;
  public List <Feedback_Main__c>queslist;
  public List<Feedback_Main__c> showQues;
  public List<Feedback_Main__c> feed;
  public List<Feedback_Option_Main__c> question;  
  
    public List<Feedback_Main__c> getFeed()
     {
            feed=[SELECT id,name,Feedback_Name__c,Question_Bank__r.name FROM Feedback_Main__c];
            return feed;
     }

  public pageReference queslist()
  {
    showQues=[SELECT Question_Bank__r.Name FROM Feedback_Main__c where id=:Selectedid]; 

   // system.debug('*********Selected id is in ques list :*******************'+recordID );
    question=[SELECT name,Option_Five__c,Option_Four__c,Option_One__c,Option_Three__c,Option_Two__c,Related_Question__r.Question__c FROM Feedback_Option_Main__c where Related_Question__r.Related_Feedback__c=:Selectedid];
    system.debug('****************Question**********************'+question); 
          
    PageReference pageRef = new PageReference('/apex/SBSendDisplay');
     pageRef.getParameters().put('id',Selectedid);  
    pageRef.setRedirect(false);

    return pageRef ;
  }
 

         
}