@isTest

class TestScheduleTimesheetBatch{
    
    public static testMethod void testSchedule()
    {
        Test.StartTest();
        ScheduleTimesheetBatch  testSch = new ScheduleTimesheetBatch ();
        String testExp = '0 0 23 ? * MON-FRI';
        system.schedule('Test Status Schedule Class',testExp,testSch);
        Test.StopTest();
    }
}