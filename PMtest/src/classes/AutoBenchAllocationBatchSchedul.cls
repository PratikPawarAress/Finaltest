global with sharing class AutoBenchAllocationBatchSchedul implements Schedulable{
    global void execute(SchedulableContext ctx){
    String str ='0 0 * * * ?';
    //String str = system.now().addMinutes(59).format('ss mm HH dd MM ? yyyy');
     System.schedule('AutoBench Report',str , new AutoBenchAllocationBatch());
     Id batchJobId2 = Database.executeBatch(new AutoBenchAllocationBatch(), 200);
       
    }
}