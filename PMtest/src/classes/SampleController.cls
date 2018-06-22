public with sharing class SampleController {
 
    public Feedback_Main__c  member {get;set;}
    public List<Question_Option__c> OptionList{get;set;}
    public List<Feedback_Question_Main__c> OptionList2{get;set;}
    public List<Feedback_Main__c> OptionList3{get;set;}
    
    public SampleController(){
        member = new Feedback_Main__c ();
    }
    
    public void fetchMemberDetails(){
        system.debug('IN THE FETCHCLASS'+member.SelectReport__c);
      
   OptionList2 =  [Select id,name,Question__c,Type__c,(select id,Customer_Name__c from Question_Option__r) from Feedback_Question_Main__c where Related_Feedback__c = :member.SelectReport__c];
  
      // OptionList  = [Select id,name,Survey_Date__c,Customer_Name__c,Response__c,Customer_Phone__c,Customer_Email__c from Question_Option__c where  Feedback_Main__c=:member.SelectReport__c  ];
        OptionList  = [Select id,name,Survey_Date__c,Customer_Name__c,Response__c,Customer_Phone__c,Customer_Email__c,CreatedDate,Related_Question__r.id,Related_Question__r.Name,Related_Question__r.Question__c,Related_Question__r.Related_Feedback__r.id,Related_Question__r.Related_Feedback__r.Feedback_Name__c,Related_Question__r.Related_Feedback__r.Count_Question__c from Question_Option__c where Related_Question__r.Related_Feedback__r.id=:member.SelectReport__c  ];  
        system.debug('+++++++++++++++++++ + + + + + + + + + + '+OptionList);   
        OptionList3  = [Select id,name,Count_Question__c,Feedback_Name__c,Feedback_Taken_by_Contact__c,CreatedDate from Feedback_Main__c where  id=:member.SelectReport__c  Limit 1];
    }
}