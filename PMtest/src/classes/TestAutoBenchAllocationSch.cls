@isTest
public class TestAutoBenchAllocationSch {
    
    public static testMethod void testschedule() {
        Test.StartTest();
        AutoBenchAllocationBatchSchedul testsche = new AutoBenchAllocationBatchSchedul();
        String sch = '0 0 * * * ?';
        system.schedule('Test status Check', sch, testsche );
        Test.stopTest();
    }
    
}