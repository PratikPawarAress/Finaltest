public with sharing class PreviewController {

    public PreviewController(ApexPages.StandardController controller) {

    }
 
    Public Feedback_Main__c mainobj{get;set;}
   // Public Feedback_Question_Main__c questobj{get;set;}
   Public List<Feedback_Option_Main__c> optList{get;set;}
   
   Public String SelectedValue{get;set;}
    Public Id questid{get;set;}
  
    public String selectedId{get;set;}

    Public PreviewController(){
    
    questid= ApexPages.currentPage().getParameters().get('id');
             
    }   


   Public List<Feedback_Option_Main__c> getQuestions(){
    
        optList = [select id, name,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.Type__c, Related_Question__r.Question__c,Related_Question__r.Related_Feedback__c from Feedback_Option_Main__c where Related_Question__r.Related_Feedback__c =:questid];
        
        if(optList.size() < 1)
        {
        String msg1 = 'No Questions in survey to display !'; 
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.INFO,msg1));
        }
        return optList;
    }
    
     public PageReference test()
    {
    system.debug('**********************test() selectedId********************'+selectedId);
    return null;
    } 
    
    
  public PageReference editQues() 
    {
      System.debug('****************************Selectedid ****************************'+selectedId);
     PageReference pageRef = new PageReference('/apex/SBUpdateQuestion');
     pageRef.getParameters().put('id',selectedId);  
     pageRef.setRedirect(true);
     return pageRef ;
    }

 public PageReference editQuesSl() 
    {
      System.debug('****************************Selectedid ****************************'+selectedId);
     PageReference pageRef = new PageReference('/apex/SBUpdateQuestionSlider');
     pageRef.getParameters().put('id',selectedId);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
    
     public PageReference editQuesft() 
    {
      System.debug('****************************Selectedid ****************************'+selectedId);
     PageReference pageRef = new PageReference('/apex/SBUpdateQuestionFree');
     pageRef.getParameters().put('id',selectedId);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
    public PageReference DelQues() 
   {
     PageReference pageRef = new PageReference('/apex/SBDeleteQuestion');
     pageRef.getParameters().put('id',Selectedid);  
     pageRef.setRedirect(true);
     return pageRef ;
    }
    public PageReference CancelAction(){
    PageReference pageRef = new PageReference('/apex/SBAddQuestionPage');
    pageRef.setRedirect(true);
    return pageRef;
    }
}