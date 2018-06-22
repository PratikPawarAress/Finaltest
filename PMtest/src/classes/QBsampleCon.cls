public with sharing class QBsampleCon {
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

public Question_Repository__c fdmain;

 

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
        picklistOptions.add(new SelectOption('','-Select Question Type-'));
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
    public QBsampleCon() {
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
        else 
        if(pickval == 'SLIDER'){
            setRadio(false);
            setSlider(True);
            setFS(False);
        }
        else 
        if(pickval == 'FREE-TEXT'){
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
        fdmain= [select id from Question_Repository__c ORDER BY CreatedDate DESC limit 1];
        Question_Datas__c fqmobj=new Question_Datas__c();
        fqmobj.Question__c=questiontaken;
        fqmobj.Option_1__c= OptionOneGet;
        fqmobj.Option_2__c= OptionTwoGet;
        fqmobj.Option_3__c= OptionThreeGet;
        fqmobj.Option_4__c= OptionFourGet;            
        fqmobj.Option_5__c= OptionFiveGet;    
        fqmobj.AddQuestion__c =fdmain.id;
        fqmobj.Type__c='Radio';
        
    if (Question_Datas__c.SObjectType.getDescribe().isCreateable()) 
    {
        insert fqmobj;
    }
                
        String msg1 = 'Question added successfully !';
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,msg1));
                    
        PageReference ref=new PageReference('/apex/SBDemoMainQB');
        ref.setredirect(false);
        return ref;
    }
 
 
   
    Public PageReference doInsertFS()
    {
        fdmain= [select id from Question_Repository__c ORDER BY CreatedDate DESC limit 1];
        
        Question_Datas__c QD = [select id from Question_Datas__c ORDER BY CreatedDate DESC limit 1];
        
        Question_Datas__c fqmobjfs=new Question_Datas__c();
        
        fqmobjfs.Question__c = questiontakenFS;
        fqmobjfs.AddQuestion__c = fdmain.id;
        fqmobjfs.Type__c ='Free-Text';
        fqmobjfs.Option_1__c = 'Free-Text';
        fqmobjfs.Option_2__c = 'Free-Text';
        fqmobjfs.Option_3__c = 'Free-Text';
        fqmobjfs.Option_4__c = 'Free-Text';            
        fqmobjfs.Option_5__c = 'Free-Text';
        
        if (Question_Datas__c.SObjectType.getDescribe().isCreateable()) 
        {
          insert fqmobjfs;
        }
        
        String msg1 = 'Question added successfully !';
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,msg1));
                    
        PageReference ref = new PageReference('/apex/SBDemoMainQB');
        ref.setredirect(false);
        return ref;
    }
    
    Public PageReference doInsertSlider(){
    fdmain= [select id from Question_Repository__c ORDER BY CreatedDate DESC limit 1];
    Question_Datas__c fqmobj=new Question_Datas__c();
    fqmobj.Question__c=questiontaken;
    //fqmobj.Choices__c='Input type selected is Slider!';
    fqmobj.Type__c='Slider';
    fqmobj.AddQuestion__c=fdmain.id;
    fqmobj.Option_1__c = 'Slider';
    fqmobj.Option_2__c = 'Slider';
    fqmobj.Option_3__c = 'Slider';
    fqmobj.Option_4__c = 'Slider';            
    fqmobj.Option_5__c = 'Slider';
    
    if(Question_Datas__c.SObjectType.getDescribe().isCreateable()) 
    {
      insert fqmobj;
    }
    
     String msg1 = 'Question added successfully!';
     ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,msg1));
    
    PageReference ref=new PageReference('/apex/SBDemoMainQB');
    ref.setredirect(false);
    return ref;
}
    public pageReference CancelAction(){
        PageReference pr1 = new PageReference('/apex/SBQuestionBank');   
        pr1.setRedirect(true);
        return pr1;
    } 
}