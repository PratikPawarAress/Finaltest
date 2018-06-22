public with sharing class sampleCon {
//for insert
Public String questiontaken{get;set;}
Public String questiontakenFS{get;set;}
Public String OptionOneGet{get;set;}
Public String OptionTwoGet{get;set;}
Public String OptionThreeGet{get;set;}
Public String OptionFourGet{get;set;}
Public String OptionFiveGet{get;set;}

Public String testlabel = null;
Public String pickval{get;set;}   

public Feedback_Main__c fdmain;
Public Feedback_Question_Main__c fdquestionobj{get;set;}
Public Id questID{get;set;}

public sampleCon (ApexPages.StandardController controller) 
{
        fdquestionobj = (Feedback_Question_Main__c)controller.getRecord();    
        
}

    public PageReference test() {
        return null;
    }
    
    //single select            
    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('ONE','One')); 
        options.add(new SelectOption('TWO','Two')); 
        options.add(new SelectOption('THREE','Three')); 
        return options; 
    }
    
    public String getCountry() {
        return testlabel;
    }
                    
    public void setCountry(String testlabel) 
    { 
    this.testlabel = testlabel; 
    }    
 
    
    //main picklist                   
    public List<SelectOption> getSelectedOptions() {
        List<SelectOption> picklistOptions = new List<SelectOption>();
        picklistOptions.add(new SelectOption('Select question type','-Select question type-'));
        picklistOptions.add(new SelectOption('RADIO','Radio'));
        picklistOptions.add(new SelectOption('SLIDER','Slider'));
        picklistOptions.add(new SelectOption('FREE-TEXT','Free Text'));
 
        return picklistOptions;
    }                          
  
     //To make three pageblocksections invisible by default
    public Boolean radiotf = false;
    public Boolean slidertf = false;
    public Boolean fstf = false;
       
    //To dynamically pass Boolean values to rendered attribute on pageblocksection
    public void setRadio(Boolean b) {
        this.radiotf = b;
    }
    public Boolean getRadio() {
        return this.radiotf;
    }    
    
    
    public void setSlider(Boolean b) {
        this.slidertf = b;
    }
    public Boolean getSlider() {
        return this.slidertf;
    }

    
    public void setFS(Boolean b) {
        this.fstf = b;
    }
    public Boolean getFS() {
        return this.fstf;
    }
 
    //Constructor, After loading the page to display india pageblocksection by default
    public sampleCon() {
        setRadio(false);
        setSlider(False);
        setFS(False);
    }
    
    //After changing picklist value based on the selection to display either usa or aus pageblocksection
    //Through actionfunction or actionsupport this method will be called to VF page
    public PageReference pickvalselect() {
        if(pickval == 'RADIO') {
            setRadio(True);
            setSlider(False);
            setFS(False);
        }
        else if(pickval == 'SLIDER'){
            setRadio(false);
            setSlider(True);
            setFS(False);
        }
        else if(pickval == 'FREE-TEXT'){
        setRadio(false);
        setSlider(False);
        setFS(True);
        }
        else{
        setRadio(false);
        setSlider(False);
        setFS(False);
        }
        return null;
    }
    
    Public PageReference doInsert(){
    questID = ApexPages.currentPage().getParameters().get('id');
    system.debug('++++++++++++++++QUEST ID++++++++++++++++++'+questID);
    //fdID = fdmain;
    List<Feedback_Option_Main__c> optionlist=new List<Feedback_Option_Main__c>();
    
    Feedback_Question_Main__c fqmobj=new Feedback_Question_Main__c();
    Feedback_Option_Main__c fom = new Feedback_Option_Main__c();
    fqmobj.Question__c=questiontaken;
    fqmobj.Related_Feedback__c=questID;
    fqmobj.Type__c='Radio';
    insert fqmobj;
    fom.Option_One__c = OptionOneGet;
    fom.Option_Two__c = OptionTwoGet;
   fom.Option_Three__c = OptionThreeGet;
    fom.Option_Four__c = OptionFourGet;            
    fom.Option_Five__c = OptionFiveGet;    
    fom.Related_Question__c = fqmobj.id;
    optionlist.add(fom);
    
    if (Feedback_Option_Main__c.SObjectType.getDescribe().isCreateable()) 
    {
        insert optionlist;
    }
    String msg = 'Question added successfully !';
    ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, msg));
    
    PageReference ref=new PageReference('/apex/SBDemoMain?id=questID');
    ref.setredirect(false);
    return ref;
    }

public pageReference CancelAction()
  {
    PageReference pr1 = new PageReference('/apex/SBAddQuestionPage');
   
    pr1.setRedirect(true);
    return pr1;
  } 
  
    Public PageReference doInsertFS(){
    questID = ApexPages.currentPage().getParameters().get('id');
    system.debug('++++++++++++++++++QUEST ID++++++++++++++++++++++'+questID);
       
    Feedback_Question_Main__c fqmobjfs=new Feedback_Question_Main__c();
     Feedback_Option_Main__c fom = new Feedback_Option_Main__c();
      List<Feedback_Option_Main__c> optionlist=new List<Feedback_Option_Main__c>();
    fqmobjfs.Question__c=questiontakenFS;
    //fqmobjfs.Choices__c='Input type selected is Free-Text!';
    fqmobjfs.Related_Feedback__c=questID;
    fqmobjfs.Type__c='Free-Text';
    
    if (Feedback_Option_Main__c.SObjectType.getDescribe().isCreateable()) 
    {
        insert fqmobjfs;
    }
    
    fom.Option_One__c = 'Free-Text';
    fom.Option_Two__c = 'Free-Text';
   fom.Option_Three__c = 'Free-Text';
    fom.Option_Four__c = 'Free-Text';            
    fom.Option_Five__c = 'Free-Text'; 
    fom.Related_Question__c = fqmobjfs.id;
    optionlist.add(fom);
    
    if (Feedback_Option_Main__c.SObjectType.getDescribe().isCreateable()) 
    {
        insert optionlist;
    }
    
    String msg1 = 'Question added successfully !';
    ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, msg1));
    
    PageReference ref=new PageReference('/apex/SBDemoMain?id=questID');
    ref.setredirect(false);
    return ref;
    }
    
    Public PageReference doInsertSlider(){
    questID = ApexPages.currentPage().getParameters().get('id');
    Feedback_Question_Main__c fqmobj=new Feedback_Question_Main__c();
    Feedback_Option_Main__c fom = new Feedback_Option_Main__c();
    List<Feedback_Option_Main__c> optionlist=new List<Feedback_Option_Main__c>();
    
    fqmobj.Question__c=questiontaken;
    fqmobj.Related_Feedback__c=questID;
    fqmobj.Type__c='Slider';
    insert fqmobj;
    fom.Option_One__c = 'Slider';
    fom.Option_Two__c = 'Slider';
    fom.Option_Three__c = 'Slider';
    fom.Option_Four__c = 'Slider';            
    fom.Option_Five__c = 'Slider'; 
    fom.Related_Question__c = fqmobj.id;
    optionlist.add(fom);
    
    if (Feedback_Option_Main__c.SObjectType.getDescribe().isCreateable())
    {
        insert optionlist;
    }
    
    String msg2 = 'Question added successfully !';
    ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, msg2));
    
    PageReference ref=new PageReference('/apex/SBDemoMain');
    ref.setredirect(false);
    return ref;
}
}