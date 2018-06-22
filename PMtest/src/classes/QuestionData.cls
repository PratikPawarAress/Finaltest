public class QuestionData
 {
 
 
  public Feedback_Option_Main__c OptionOBJ;
  Public Feedback_Option_Main__c dummyOptionObj{get;set;}
  
  public Feedback_Question_Main__c feedqOBJ;
  public Feedback_Question_Main__c dummyFeedqObj{get;set;}
  
  public String objid;


//-------------------------------- StandardController --------------------
  
  public QuestionData(ApexPages.StandardController controller)
     {
      objid= (ApexPages.currentPage().getParameters().get('id'));
      
      System.debug('****************************V  objid  V*********************'+objid);
     
      OptionOBJ = [Select id,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c,Related_Question__r.id,Related_Question__r.Question__c from Feedback_Option_Main__c where id =:objid];
      
    
        dummyOptionObj = new Feedback_Option_Main__c();
        dummyFeedqObj = new Feedback_Question_Main__c();    
      
        dummyFeedqObj .Question__c = OptionOBJ.Related_Question__r.Question__c; 
        dummyOptionObj.Option_One__c = OptionOBJ.Option_One__c;
        dummyOptionObj.Option_Two__c = OptionOBJ.Option_Two__c;
        dummyOptionObj.Option_Three__c = OptionOBJ.Option_Three__c;
        dummyOptionObj.Option_Four__c = OptionOBJ.Option_Four__c;
        dummyOptionObj.Option_Five__c = OptionOBJ.Option_Five__c;

    }
    
    public Question_Datas__c optn{get;set;}
    

//--------------------------------UpdateDirectQuestion()-----------------------

Public PageReference UpdateDirectQuestion()

    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
       
       Feedback_Option_Main__c FOM = [select id, Related_Question__r.Related_Feedback__r.id from Feedback_Option_Main__c where id=:objid];
       system.debug('FOM');         
         
        Feedback_Question_Main__c fqm = [select id,Question__c from Feedback_Question_Main__c where id =:FOM.Related_Question__c];
        fqm.Question__c = dummyFeedqObj.Question__c;
     //   OptionOBJ.Related_Question__r.Question__c = dummyFeedqObj.Question__c;
        
        system.debug('***************OptionOBJ.Related_Question__r.Question__c****************'+fqm.Question__c);
        update fqm;
        OptionOBJ.Option_One__c = dummyOptionObj.Option_One__c;
        OptionOBJ.Option_Two__c = dummyOptionObj.Option_Two__c;
        OptionOBJ.Option_Three__c = dummyOptionObj.Option_Three__c;
        OptionOBJ.Option_Four__c = dummyOptionObj.Option_Four__c;
        OptionOBJ.Option_Five__c = dummyOptionObj.Option_Five__c;

        Update OptionOBJ;
        
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/PreviewPage?id='+FOM.Related_Question__r.Related_Feedback__r.id);
        ref.setredirect(true);
        return ref;
     }    

//--------------------------------UpdateDirectSlider()-----------------------

Public PageReference UpdateDirectSlider()

    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
       
       Feedback_Option_Main__c FOM = [select id, Related_Question__r.Related_Feedback__r.id from Feedback_Option_Main__c where id=:objid];
       system.debug('FOM');         
         
        Feedback_Question_Main__c fqm = [select id,Question__c from Feedback_Question_Main__c where id =:FOM.Related_Question__c];
        fqm.Question__c = dummyFeedqObj.Question__c;
       
        update fqm;
        OptionOBJ.Option_One__c = 'Slider';
        OptionOBJ.Option_Two__c = 'Slider';
        OptionOBJ.Option_Three__c = 'Slider';
        OptionOBJ.Option_Four__c = 'Slider';
        OptionOBJ.Option_Five__c = 'Slider';

        Update OptionOBJ;
        
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/PreviewPage?id='+FOM.Related_Question__r.Related_Feedback__r.id);
        ref.setredirect(true);
        return ref;
     }    
     
//--------------------------------UpdateDirectFreetext()-----------------------

Public PageReference UpdateDirectFreetext()

    {
       objid= (ApexPages.currentPage().getParameters().get('id'));
       
       Feedback_Option_Main__c FOM = [select id, Related_Question__r.Related_Feedback__r.id from Feedback_Option_Main__c where id=:objid];
       system.debug('FOM');         
         
        Feedback_Question_Main__c fqm = [select id,Question__c from Feedback_Question_Main__c where id =:FOM.Related_Question__c];
        fqm.Question__c = dummyFeedqObj.Question__c;
       
        update fqm;
        OptionOBJ.Option_One__c = 'Free-Text';
        OptionOBJ.Option_Two__c = 'Free-Text';
        OptionOBJ.Option_Three__c = 'Free-Text';
        OptionOBJ.Option_Four__c = 'Free-Text';
        OptionOBJ.Option_Five__c = 'Free-Text';

        Update OptionOBJ;
        
        pagereference ref = new pagereference('https://na30.salesforce.com/apex/PreviewPage?id='+FOM.Related_Question__r.Related_Feedback__r.id);
        ref.setredirect(true);
        return ref;
     }    
     


//--------------------------------DeleteQuestion() ALL --------------------

        Public PageReference DeleteQuestion()
        {
             String objid= (ApexPages.currentPage().getParameters().get('id'));
              Feedback_Option_Main__c optn= [Select id,Option_One__c,Option_Two__c,Option_Three__c,Option_Four__c,Option_Five__c, Related_Question__r.id, Related_Question__r.Name, Related_Question__r.Question__c from Feedback_Option_Main__c where id =:objid];
              
            Feedback_Option_Main__c FOM = [select id, Related_Question__r.Related_Feedback__r.id from Feedback_Option_Main__c where id=:objid];
           system.debug('FOM');         
         
            Feedback_Question_Main__c fqm = [select id,Question__c from Feedback_Question_Main__c where id =:FOM.Related_Question__c];
            fqm.Question__c = dummyFeedqObj.Question__c;
       
            delete fqm;
        /*    
           optn.Option_One__c = optn.Option_One__c;
           optn.Option_Two__c = optn.Option_Two__c;
           optn.Option_Three__c = optn.Option_Three__c;
           optn.Option_Four__c = optn.Option_Four__c;
           optn.Option_Five__c = optn.Option_Five__c;

              delete optn;
              */
              pagereference ref = new pagereference('https://na30.salesforce.com/apex/PreviewPage?id='+FOM.Related_Question__r.Related_Feedback__r.id);
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