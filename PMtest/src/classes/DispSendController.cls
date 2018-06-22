public with sharing class DispSendController
{
    
  public String OptionOne { get; set; }
  public String SelectedValue { get; set; }

  public string Selectedid {get;set;}
  public List<Question_Repository__c> displayQue;
  public List<Question_Repository__c> Repo;

  public List <Question_Repository__c>queslist;
  public List<Question_Repository__c> recdata;
  private ApexPages.StandardController controller;

  public DispSendController() {

    }

                
  public DispSendController(ApexPages.StandardController controller)
     {
     
     }  
    
    public PageReference Cancel()
     {
    
     PageReference pageRef = new PageReference('/apex/DispQuestRep');
     pageRef.setRedirect(true);
     return pageRef ;
       
     }


    public PageReference Save() {
  //  if (Schema.sObjectType.Question_Repository__c.fields.Name.isUpdateable())
    
   //     update recdata;
    
     PageReference pageRef = new PageReference('/apex/DispQuestRep');
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
   public PageReference DelQues() 
   {
     PageReference pageRef = new PageReference('/apex/DeleteRepositorydata');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    } 
    
 
   public List<Question_Repository__c> getRepo()
         {
            Repo=[SELECT id,name,Description__c,Repository_Name__c FROM Question_Repository__c];
            return Repo;
         }  
         public List<Feedback_Option_Main__c> getQuestion()
         {
           String id= (ApexPages.currentPage().getParameters().get('id'));
           List<Feedback_Option_Main__c>optList = [select id, name,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.Type__c, Related_Question__r.Question__c,Related_Question__r.Related_Feedback__c from Feedback_Option_Main__c where Related_Question__r.Related_Feedback__c =:id];
           return optList;
         }  
         
          public List<Question_Repository__c > getrecdata()
         {
           String id= (ApexPages.currentPage().getParameters().get('id'));
           String newid=id;
           recdata=[SELECT Repository_Name__c,Description__c FROM Question_Repository__c where id =:newid];
           return recdata;
         }  
         
         
         
    public PageReference queslist() 
    {
     System.debug('****************************Selectedid queslist****************************'+Selectedid );
     
    System.debug('****************************After Question ****************************'+Selectedid );
     PageReference pageRef = new PageReference('/apex/NewPageDisplay');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
  
    }
    
    
    public PageReference EditRecord() 
    {
     System.debug('****************************Selectedid EditRecord  ****************************'+Selectedid );
    PageReference pageRef = new PageReference('/apex/EditPage');
    pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
   
  public pageReference SendContacts()
  {  
  
     String id= (ApexPages.currentPage().getParameters().get('id'));
    system.debug('*********Selected id SendContacts fetched :*******************'+id);
       PageReference pr = new PageReference('/apex/SBSendMail'); 
   // PageReference pr = new PageReference('/apex/DemoMainQB?param='+id);
    pr.getParameters().put('id',id);  
    pr.setRedirect(true);
    return pr;
  }
    
    
}