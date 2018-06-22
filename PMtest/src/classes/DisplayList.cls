public with sharing class DisplayList
{
public Id getId{get;set;}
    public DisplayList(ApexPages.StandardController controller) 
    {
            getId= controller.getId();
    }


public List<Feedback_Main__c > getList() 
{ 
List<Feedback_Main__c> prolist = [SELECT id,Count_Question__c,Feedback_Name__c ,Feedback_Taken_by_Contact__c ,Footer_text__c ,Header_Text__c ,Image__c,Question_Bank__c FROM Feedback_Main__c order by CreatedDate desc LIMIT 10 ]; 
return prolist;  
}

}