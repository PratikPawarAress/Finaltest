public with sharing class AddQuestionBankController 
{

 public PageReference Cancel()
  {
    
     PageReference pageRef = new PageReference('/apex/SBAddQuestionPage');
     pageRef.setRedirect(true);
     return pageRef ;
       
  }

Public Id lookupid{get;set;}
//public string selectedId{get;set;}
public Id questID{get;set;}
//Public Feedback_Question_Main__c question{get;set;}
public Feedback_Main__c questOBJ{get;set;}
public Feedback_Main__c dummyObj{get;set;}
//public List <Feedback_Option_Main__c> fqmlist{get;set;}
public List<Feedback_Option_Main__c> Quest_FBQMList;
public List<Question_Datas__c> Quest_DataList; 

public AddQuestionBankController(ApexPages.StandardController controller)
{

//questID = ApexPages.currentPage().getParameters().get('questID ');
questID = controller.getid();
//system.debug('++++++++++++ID+++++++++'+questID );
questOBJ = [Select id,Count_Question__c,Feedback_Name__c,Feedback_Taken_by_Contact__c,Footer_text__c,Header_Text__c,Image__c,Question_Bank__c from Feedback_Main__c where id =:questID];

dummyObj = new Feedback_Main__c();

dummyObj.Feedback_Name__c = questOBJ.Feedback_Name__c;
dummyObj.Feedback_Taken_by_Contact__c = questOBJ.Feedback_Taken_by_Contact__c;
dummyObj.Footer_text__c = questOBJ.Footer_text__c;
dummyObj.Header_Text__c = questOBJ.Header_Text__c;
dummyObj.Question_Bank__c = questOBJ.Question_Bank__c ;

}

Public PageReference UpdateQuestion()
{

Feedback_Main__c quest = [Select id,Feedback_Name__c,Feedback_Taken_by_Contact__c,Footer_text__c,Header_Text__c,Image__c,Question_Bank__c from Feedback_Main__c where id =:questID];
//system.debug('+++++++++QUERY+++++++'+quest );
quest.Feedback_Name__c = dummyOBJ.Feedback_Name__c ;
quest.Feedback_Taken_by_Contact__c = dummyOBJ.Feedback_Taken_by_Contact__c;
quest.Footer_text__c = dummyOBJ.Footer_text__c ;
quest.Header_Text__c = dummyOBJ.Header_Text__c ;
quest.Question_Bank__c = dummyOBJ.Question_Bank__c;

//if (Schema.sObjectType.Feedback_Main__c.fields.Name.isUpdateable())

    update quest;

   Quest_DataList =  [Select id,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,Question__c,AddQuestion__c,Type__c from Question_Datas__c where AddQuestion__c =:lookupid] ;
 
   Quest_FBQMList = new List<Feedback_Option_Main__c>();
  
  for(Question_Datas__c qr :Quest_DataList){
      
        Feedback_Question_Main__c fqc = new Feedback_Question_Main__c();
        
        fqc.Question__c  = qr.Question__c;
        fqc.Type__c = qr.Type__c ;
        fqc.Related_Feedback__c = questID ;
        if (Feedback_Question_Main__c.SObjectType.getDescribe().isCreateable())
        {
            insert fqc;
        }
        
        Feedback_Option_Main__c fqm = new Feedback_Option_Main__c();
        
        fqm.Option_One__c= qr.Option_1__c;
        fqm.Option_Two__c = qr.Option_2__c;
        fqm.Option_Three__c= qr.Option_3__c;
        fqm.Option_Four__c= qr.Option_4__c;
        fqm.Option_Five__c= qr.Option_5__c;
        fqm.Related_Question__c = fqc.id;       
        Quest_FBQMList.add(fqm);                
   }
   
      if(Feedback_Question_Main__c.SObjectType.getDescribe().isCreateable())
      {
          insert Quest_FBQMList;
      }
      String msg1 = 'Question added successfully !';
      ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,msg1));
      return null;
   
 } 

 public PageReference PassingParameter(){
         //count++;
         lookupid = dummyObj.Question_Bank__c;
        
         return null;
     }  

}