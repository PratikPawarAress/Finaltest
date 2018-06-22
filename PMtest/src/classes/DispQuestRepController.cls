public with sharing class DispQuestRepController
{

    public string SelectedValue{get;set;}
    public ID cloneid{get;set;}
    public PageReference Cancel()
     {
    
     PageReference pageRef = new PageReference('/apex/SBQuestionBank');
     pageRef.setRedirect(true);
     return pageRef ;
       
     }


    public PageReference Save(){
    
 // if (Schema.sObjectType.Question_Repository__c.fields.Name.isUpdateable())
    
        update recdata;
    
     PageReference pageRef = new PageReference('/apex/SBQuestionBank');
     pageRef.setRedirect(true);
     return pageRef ;
    }


public PageReference SaveQues() 
    {
      System.debug('****************************Selectedid ****************************'+Selectedid );
     PageReference pageRef = new PageReference('/apex/SBUpdateRepository');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
    public PageReference SaveQuesSl() 
    {
      System.debug('****************************Selectedid ****************************'+Selectedid );
     PageReference pageRef = new PageReference('/apex/SBUpdateRepositorySlider');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
    public PageReference SaveQuesFree() 
    {
      System.debug('****************************Selectedid ****************************'+Selectedid );
     PageReference pageRef = new PageReference('/apex/SBUpdateRepositoryFreetext');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
   public PageReference DelQues() 
   {
     PageReference pageRef = new PageReference('/apex/SBDeleteRepositorydata');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    } 
    
    

    public DispQuestRepController() {
     cloneid= apexpages.currentpage().getparameters().get('id');
  //  system.debug('++++++++++IDIDIDIDIDID++++++++'+id);
 }

public PageReference CloneBank()
{
    Question_Repository__c qr =[Select id,Repository_Name__c,Description__c from Question_Repository__c where id=:cloneid];
    
     Question_Repository__c qrObj=new Question_Repository__c();
  
    qrObj.Repository_Name__c = qr.Repository_Name__c+' '+'(Clone)';
    qrObj.Description__c = qr.Description__c;
    
    if (Question_Repository__c.SObjectType.getDescribe().isCreateable())
     {
        insert qrObj;
     }
 
  qd = [Select id,Question__c,Type__c,AddQuestion__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,AddQuestion__r.id,AddQuestion__r.Repository_Name__c,AddQuestion__r.Description__c from Question_Datas__c where AddQuestion__r.id =:cloneid];
  system.debug('++++++++QUESTIONLIST+++++++++'+qd);
   List<Question_Datas__c  > optionlist=new List<Question_Datas__c  >();
     for(Question_Datas__c q:qd)
     {
       Question_Datas__c qdObj = new Question_Datas__c ();
    qdObj.Question__c = q.Question__c;
    qdObj.Option_1__c = q.Option_1__c;
      qdObj.Option_2__c = q.Option_2__c;
        qdObj.Option_3__c = q.Option_3__c;
        qdObj.Option_4__c = q.Option_4__c;
          qdObj.Option_5__c = q.Option_5__c;
          qdObj.Type__c = q.Type__c;
     qdObj.AddQuestion__c = qrObj.id;
   optionlist.add(qdObj);
 }
   
   if(Question_Datas__c.SObjectType.getDescribe().isCreateable()) 
   {
      insert optionlist;
   }
  
   PageReference redirectPage = Page.sbquestionbank;
       redirectPage.setRedirect(true);
       return redirectPage;
} 
            Public Question_Datas__c q1{get;set;}
             Public List<Question_Datas__c> q{get;set;}
          Public List<Question_Datas__c> qd{get;set;}
        
          Public Question_Repository__c ques{get; set;}
          public String OptionOne {get;set;}
          public List <Question_Datas__c >replist;
          public string Selectedid {get;set;}
          public List<Question_Repository__c> displayQue;
          public List<Question_Repository__c> Repo;
          public List<Question_Datas__c> question;
          public List <Question_Repository__c>queslist;
          public List<Question_Repository__c> recdata;
          private ApexPages.StandardController controller;
            
            public DispQuestRepController(ApexPages.StandardController controller)
     {
       this.controller=controller;
       ques=(Question_Repository__c )controller.getRecord();
     } 
  
   public List<Question_Repository__c> getRepo()
         {
            Repo=[SELECT id,name,Description__c,Repository_Name__c FROM Question_Repository__c];
            return Repo;
         }  
         public List<Question_Datas__c> getQuestion()
         {
           String id= (ApexPages.currentPage().getParameters().get('id'));
           question=[SELECT AddQuestion__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Option_5__c,Question__c,Type__c FROM Question_Datas__c where AddQuestion__r.id =:id ORDER BY CreatedDate DESC];
           system.debug('+++++++++++QUESTION+++++++++++++++'+question);
           return question;
         }  
         
          public List<Question_Repository__c > getrecdata()
         {
           String id= (ApexPages.currentPage().getParameters().get('id'));
           String newid=id;
           recdata=[SELECT Repository_Name__c,Description__c FROM Question_Repository__c where id =:newid];
            system.debug('+++++++++++RECDATA+++++++++++++++'+recdata);
           return recdata;
         }  
         
         
         
    public PageReference queslist() 
    {
     System.debug('****************************Selectedid queslist****************************'+Selectedid );
     
    System.debug('****************************After Question ****************************'+Selectedid );
     PageReference pageRef = new PageReference('/apex/SBDisplay');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
  
    }
    
    
    public PageReference EditRecord() 
    {
     System.debug('****************************Selectedid EditRecord  ****************************'+Selectedid );
    PageReference pageRef = new PageReference('/apex/SBEditPage?id='+Selectedid);
    //pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
   
   public PageReference displayQue() 
    {
         PageReference redirectPage = Page.SBQuestionRepository;
       redirectPage.setRedirect(true);
       return redirectPage;
       return null;
  
    }
    
     public PageReference GoBack() 
    {
         PageReference redirectPage = Page.SBQuestionBank;
       redirectPage.setRedirect(true);
       return redirectPage;
       return null;
  
    } 
}