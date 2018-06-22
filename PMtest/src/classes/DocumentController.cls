public with sharing class DocumentController {
 public Feedback_Main__c feedbackmain{get;set;}
 public ID folderid{get;set;}
 public Blob file{get;set;}

public DocumentController() {
feedbackmain = new Feedback_Main__c();

 }

public PageReference Manage(){
PageReference pg = new PageReference('apex/SBAddQuestionPage');
pg.setRedirect(true);
return pg;
}

public PageReference saveAndRedirect() {
 Id OrgId = UserInfo.getOrganizationId();
  
 Document d= new Document();

 d.name = 'LOGO';
 d.body=file; // body field in document object which holds the file.
 d.IsPublic = true;
 d.ContentType ='image/png';
 d.Type = 'png';

 d.folderid='00l36000000n8b4'; //folderid where the document will be stored insert d;
 if (Document.SObjectType.getDescribe().isCreateable())
 {
     insert d;
 }

//(Sandbox)feedbackmain.Image__c = '<img src="https://c.cs41.content.force.com/servlet/servlet.ImageServer?id='+d.id+'&oid='+OrgId+'"></img>'; 
feedbackmain.Image__c = '<img src="https://c.na30.content.force.com/servlet/servlet.ImageServer?id='+d.id+'&oid='+OrgId+'"></img>'; 

  
  system.debug('++++++++++D ID+++++++++++'+feedbackmain.Image__c);
  insert feedbackmain; // This takes care of the details for you.
  PageReference redirectPage = Page.SBAddQuestionPage;
  redirectPage.setRedirect(true);
  return redirectPage;
}


}