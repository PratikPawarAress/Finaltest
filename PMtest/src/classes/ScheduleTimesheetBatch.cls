global class ScheduleTimesheetBatch implements Schedulable {
  
  // This test runs a scheduled job everyday @11.45PM
  
    global void execute(SchedulableContext SC) {
      TodaysTimesheetBatch timesheetBatch = new TodaysTimesheetBatch();
     
      //Parameters of TodaysTimesheetBatch (context,BatchSize[optional])
      database.executebatch(timesheetBatch);
     
    }
}