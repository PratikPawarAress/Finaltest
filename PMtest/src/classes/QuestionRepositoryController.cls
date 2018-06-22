public with sharing class QuestionRepositoryController {
Public Question_Repository__c ques{get; set;}
Public String qName {get; set;} 
Public String qDescription {get; set;}
Public String qRepositoryName{get; set;}
private ApexPages.StandardController controller;

    public QuestionRepositoryController(ApexPages.StandardController controller) {
    this.controller=controller;
       ques=(Question_Repository__c )controller.getRecord();
        
    }
    
     public PageReference saveAndRedirect() {
      controller.save(); // This takes care of the details for you.
      PageReference redirectPage = Page.SBDemoMainQB;
       redirectPage.setRedirect(true);
      return redirectPage;
}
public pageReference cancel()
  {
    PageReference pr1 = new PageReference('/apex/SBQuestionBank');
   
    pr1.setRedirect(true);
    return pr1;
  } 
   
  }