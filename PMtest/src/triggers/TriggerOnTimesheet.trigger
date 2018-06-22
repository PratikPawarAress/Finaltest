trigger TriggerOnTimesheet on TimeSheet__c (after insert, after update) {

    for(TimeSheet__c timesheet :Trigger.New){
        HandlerTriggerOnTimesheet.addCustomRollups(Trigger.New);
    }
}