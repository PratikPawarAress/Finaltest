@isTest
private class TestSampleController {
    static testMethod void myUnitTest() {
       
        
         Feedback_Main__c member = new Feedback_Main__c ();
         member.Feedback_Name__c = 'test';
         insert member;        
    
        Feedback_Main__c member1 = new Feedback_Main__c ();
        member1.Feedback_Name__c = 'testUser';
        member1.SelectReport__c =member.id;
        insert member1;
       
        Test.startTest();//Starts the scope of test     
        SampleController con = new SampleController(); 
        con.fetchMemberDetails();
        
        Test.stopTest();//Ends the scope of test
        
       
    }
}