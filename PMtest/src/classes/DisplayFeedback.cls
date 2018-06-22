public with sharing class DisplayFeedback{

 
public string selectedId{get;set;}
public Id questID{get;set;}
public Feedback_Main__c questOBJ{get;set;}
public Feedback_Main__c dummyObj{get;set;}
public List <Feedback_Question_Main__c> fqmlist{get;set;}

public DisplayFeedback(ApexPages.StandardController controller)
{

//questID = ApexPages.currentPage().getParameters().get('questID ');
questID = controller.getid();
system.debug('++++++++++++ID+++++++++'+questID );
questOBJ = [Select id,Count_Question__c,Feedback_Name__c,Feedback_Taken_by_Contact__c,Footer_text__c,Header_Text__c,Image__c,Question_Bank__c from Feedback_Main__c where id =:questID];

dummyObj = new Feedback_Main__c ();


dummyObj.Feedback_Name__c = questOBJ.Feedback_Name__c;
dummyObj.Feedback_Taken_by_Contact__c = questOBJ.Feedback_Taken_by_Contact__c;
dummyObj.Footer_text__c = questOBJ.Footer_text__c;
dummyObj.Header_Text__c = questOBJ.Header_Text__c;

}

Public PageReference UpdateQuestion()
{

Feedback_Main__c quest = [Select id,Feedback_Name__c,Feedback_Taken_by_Contact__c,Footer_text__c,Header_Text__c,Image__c,Question_Bank__c from Feedback_Main__c where id =:questID];
system.debug('+++++++++QUERY+++++++'+quest );
quest.Feedback_Name__c = dummyOBJ.Feedback_Name__c ;
quest.Feedback_Taken_by_Contact__c = dummyOBJ.Feedback_Taken_by_Contact__c ;
quest.Footer_text__c = dummyOBJ.Footer_text__c ;
quest.Header_Text__c = dummyOBJ.Header_Text__c ;

//if(Schema.sObjectType.Feedback_Main__c.fields.Name.isUpdateable())

    Update quest;

system.debug('+++++++++QUERY+++++++'+quest );
pagereference ref = new pagereference('/apex/SBAddQuestionPage');
ref.setredirect(true);
return ref;
}

Public PageReference getListQuestion(){
//List<FeedbackMain__c> prolist = [SELECT Count_Question__c,Feedback_Name__c ,Feedback_Taken_by_Contact__c ,Feedback_Taken_by_User__c ,Footer_text__c ,Header_Text__c ,Image__c ,Related_Question_Bank__c FROM FeedbackMain__c where  LIMIT 10 ]; 
fqmlist = [SELECT id, name, Related_Feedback__c, Related_Feedback__r.id,Related_Feedback__r.Feedback_Name__c,Related_Feedback__r.Feedback_Taken_by_Contact__c,Related_Feedback__r.Count_Question__c from Feedback_Question_Main__c where Related_Feedback__c=:selectedId];
return null;
  PageReference pageRef = new PageReference('/apex/FeedbackQuestionMain');
  pageRef.getParameters().put('id',Selectedid);  
  pageRef.setRedirect(false);
  return pageRef ;
}

 /*public List<FeedbackMain__c > getList() 
{ 
List<FeedbackMain__c> prolist = [SELECT Count_Question__c,Feedback_Name__c ,Feedback_Taken_by_Contact__c ,Feedback_Taken_by_User__c ,Footer_text__c ,Header_Text__c ,Image__c ,Related_Question_Bank__c FROM FeedbackMain__c where id=:questID LIMIT 10 ]; 
return prolist;  
} */


public Pagereference cancel()
{
pagereference ref = new pagereference('/apex/SBAddQuestionPage');
ref.setredirect(true);
return ref;
}
}