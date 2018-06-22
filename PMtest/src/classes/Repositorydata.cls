public with sharing class Repositorydata
 {
 
  public Question_Datas__c questOBJ;
  public Question_Datas__c dummyObj{get;set;}
  
  public Feedback_Option_Main__c OptionOBJ;
  Public Feedback_Option_Main__c dummyOptionObj{get;set;}  
  
  public Feedback_Question_Main__c dummyFeedqObj{get;set;}
  
  public String objid;


//-------------------------------- StandardController --------------------
  
  public Repositorydata(ApexPages.StandardController controller)
     {
      objid= (ApexPages.currentPage().getParameters().get('id'));
      
      System.debug('****************************V  objid  V*********************'+objid);
      questOBJ = [Select id,Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c from Question_Datas__c where id =:objid];

        dummyObj = new Question_Datas__c();
        dummyOptionObj = new Feedback_Option_Main__c();
        dummyFeedqObj = new Feedback_Question_Main__c();    
        
        dummyObj.Question__c = questOBJ.Question__c; 
        dummyObj.Option_1__c = questOBJ.Option_1__c;
        dummyObj.Option_2__c = questOBJ.Option_2__c;
        dummyObj.Option_3__c = questOBJ.Option_3__c;
        dummyObj.Option_4__c = questOBJ.Option_4__c;
        dummyObj.Option_5__c = questOBJ.Option_5__c;

    }
    
//public Question_Datas__c optn{get;set;}

//--------------------------------DIRECT QUESTION METHODS-----------------------
Public PageReference UpdateDirectQuestion()
    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
 
        Feedback_Option_Main__c quest = [Select id,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.id,Related_Question__r.Name,Related_Question__r.Question__c,Related_Question__r.Type__c from Feedback_Option_Main__C where id =:objid];
        quest.Related_Question__r.Question__c = dummyFeedqObj.Question__c;
        quest.Option_One__c = dummyOBJ.Option_1__c;
        quest.Option_Two__c = dummyOBJ.Option_2__c;
        quest.Option_Three__c = dummyOBJ.Option_3__c;
        quest.Option_Four__c = dummyOBJ.Option_4__c;
        quest.Option_Five__c = dummyOBJ.Option_5__c;
        
  //    if (Schema.sObjectType.Feedback_Option_Main__c.fields.Name.isUpdateable())
     
            Update quest;
      
        
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/PreviewPage?id='+quest.Related_Question__r.id);
        ref.setredirect(true);
        return ref;
     }    
    
    
    
    
//--------------------------------REPOSITORY METHODS-----------------------
//--------------------------------UpdateQuestion() RADIO --------------------

    Public PageReference UpdateQuestion()
    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
 
        Question_Datas__c quest = [Select id,Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,AddQuestion__r.id,AddQuestion__r.Name from Question_Datas__c where id =:objid];
        quest.Question__c = dummyOBJ.Question__c;
        quest.Option_1__c = dummyOBJ.Option_1__c;
        quest.Option_2__c = dummyOBJ.Option_2__c;
        quest.Option_3__c = dummyOBJ.Option_3__c;
        quest.Option_4__c = dummyOBJ.Option_4__c;
        quest.Option_5__c = dummyOBJ.Option_5__c;
        
    //  if (Schema.sObjectType.Question_Datas__c.fields.Name.isUpdateable())
      
            Update quest;
    
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/SBDisplay?id='+quest.AddQuestion__r.id);
        ref.setredirect(true);
        return ref;
     }

//--------------------------------UpdateQuestion() SLIDER--------------------

    Public PageReference UpdateQuestionSl()
    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
 
        Question_Datas__c quest = [Select id,Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,AddQuestion__r.id,AddQuestion__r.Name from Question_Datas__c where id =:objid];
        quest.Question__c = dummyOBJ.Question__c;
        quest.Option_1__c = 'Slider';
        quest.Option_2__c = 'Slider';
        quest.Option_3__c = 'Slider';
        quest.Option_4__c = 'Slider';
        quest.Option_5__c = 'Slider';
        
 //if (Schema.sObjectType.Question_Datas__c.fields.Name.isUpdateable())


   Update quest;
 
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/SBDisplay?id='+quest.AddQuestion__r.id);
        ref.setredirect(true);
        return ref;
       
}

//--------------------------------UpdateQuestion() FREETEXT--------------------

    Public PageReference UpdateQuestionFree()
    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
 
        Question_Datas__c quest = [Select id,Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,AddQuestion__r.id,AddQuestion__r.Name from Question_Datas__c where id =:objid];
        quest.Question__c = dummyOBJ.Question__c;
        quest.Option_1__c = 'Free-Text';
        quest.Option_2__c = 'Free-Text';
        quest.Option_3__c = 'Free-Text';
        quest.Option_4__c = 'Free-Text';
        quest.Option_5__c = 'Free-Text';
       
 //if (Schema.sObjectType.Question_Datas__c.fields.Name.isUpdateable())
 
    Update quest;
 
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/SBDisplay?id='+quest.AddQuestion__r.id);
        ref.setredirect(true);
        return ref;
       
}

//--------------------------------DeleteQuestion() ALL --------------------

        Public PageReference DeleteQuestion()
        {
             String objid= (ApexPages.currentPage().getParameters().get('id'));
              Question_Datas__c optn= [Select id,Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c, AddQuestion__r.id,AddQuestion__r.Name from Question_Datas__c where id =:objid];
                    optn.Question__c = optn.Question__c;
                    optn.Option_1__c = optn.Option_1__c;
                    optn.Option_2__c = optn.Option_2__c;
                    optn.Option_3__c = optn.Option_3__c;
                    optn.Option_4__c = optn.Option_4__c;
                    optn.Option_5__c = optn.Option_5__c;
//if ( Question_Datas__c.sObjectType.getDescribe().isDeletable())

    delete optn;

             pagereference ref = new pagereference('https://na30.salesforce.com/apex/SBDisplay?id='+optn.AddQuestion__r.id);
              ref.setredirect(true);
              return ref;
            }

//---------------------------------- cancel()------------------------------

    public Pagereference cancel()
    {
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/SBQuestionBank');
        ref.setredirect(true);
        return ref;

    }
    
}