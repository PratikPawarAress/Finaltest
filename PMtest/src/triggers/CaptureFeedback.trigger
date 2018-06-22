trigger CaptureFeedback on Feedback_Contacts__c (after insert) 
{

    List<Contact> conlist= new  List<Contact>();

for(Feedback_Contacts__c  SD : trigger.new) 
{
    if(SD.FeedbackContactName__c != null) { 
     Contact c = [select id from contact where id=:SD.FeedbackContactName__c limit 1];  
     c.Feedback_ID__c = SD.FeedBackNo__c;
    
     c.Fullname_URL__c = SD.test__c ;
    c.Department = SD.Email__c;
    system.debug('++++++++EMAIL++++++++++'+c.Department );
     c.OtherPhone = SD.ConNumber__c;
    system.debug('++++++++PHONE++++++++++'+ c.OtherPhone );
     conlist.add(c);   
    }
   update conlist;
}
 


}