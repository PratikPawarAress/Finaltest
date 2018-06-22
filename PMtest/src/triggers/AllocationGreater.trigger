trigger AllocationGreater on Allocation__c (before insert,before update) {
    
   ID ID1;
    ID ID2;
    Double AllocPer=0.0;
    Double per=0.0;
    Double OldPer=0.0;
    Double checkAllocPer=0.0;
    Double pr=0.0;
    String aType;
    Date d1,d2;
    String Query1;
    List<Allocation__c> D = new List<Allocation__c>();
    Map<String,Double> AllocMap = new Map<String,Double>();
    Allocation__c a =new Allocation__c();
    List<AggregateResult> AllocList;    
    System.debug(Trigger.New);
    for(Allocation__c Allocations1 : Trigger.New){
        ID1=Allocations1.Employee__c;
        ID2=Allocations1.Id;
        pr=Allocations1.Allocation_Percentage__c;
        aType=Allocations1.Allocation_Type__c;
        d1=Allocations1.Allocation_Start_Date__c;
        d2=Allocations1.Allocation_End_Date__c;
        //pName = Allocations1.Project__r.Name;
        
  //      if(Allocations1.Allocation_Start_Date__c > Allocations1.Allocation_End_Date__c)
//Allocations1.Allocation_Start_Date__c.addError('Start Date should be less than end date');
//System.debug(pr);
        
        if(pr>100)
        {
            Allocations1.Allocation_Percentage__c.addError('You can not create Allocation greater than 100%');
        }   
    }
    
    Query1 ='Select Employee__r.Id eId,Sum(Allocation_Percentage__c) aPer from Allocation__c where Employee__r.Id =: ID1  AND ((Allocation_Start_Date__c <=: d1 AND  Allocation_End_Date__c >=: d1) OR (Allocation_Start_Date__c >=:d1 AND Allocation_End_date__c >=:d2 AND Allocation_Start_Date__c <=:d2)OR (Allocation_Start_Date__c >=:d1 AND Allocation_End_date__c <=:d2 AND Allocation_End_Date__c >=:d1 )) group by Employee__r.Id';    
    
    AllocList=Database.query(Query1);
    //System.debug('Query Result-----------111>>'+AllocList);
    if(!AllocList.isEmpty())
    {    
        for(AggregateResult agr : AllocList)
        {  
            AllocMap.put(String.valueof(agr.get('eId')),Double.valueOf(agr.get('aPer')));
        }
    }
    
   if(Trigger.isBefore && Trigger.isInsert)
    {
        for(Allocation__c Allocations1 : Trigger.new)
        {              
            System.debug('33 Allocation Employee'+ Allocations1.Employee__c); 
            AllocPer = AllocMap.get(Allocations1.Employee__c);
            
            if(AllocPer!=NULL)
            {
                System.debug('AllocPer in Map'+AllocPer);
                if(AllocPer < 100 )
                {
                    
                    AllocPer = 100 - AllocPer;
                    
                    if(!(AllocPer >= Allocations1.Allocation_Percentage__c))
                    {
                        Allocations1.Allocation_Percentage__c.addError('You can create the allocation only '+AllocPer+' percentage');
                    }
                }
                else
                {
                    if(AllocPer>100)
                        Allocations1.Allocation_Percentage__c.addError('You have already create 100% allocation for this employee');
                }
            } 
        }   
    }
   if(Trigger.isBefore && Trigger.isUpdate)
    {
        D = Database.query('Select ID,Employee__r.id,Allocation_Percentage__c from Allocation__c where Id=:ID2');
        System.debug('Update'+D);
        for(Allocation__c A1 : D)
        {
            OldPer=A1.Allocation_Percentage__c; 
        }
        for(Allocation__c Allocations1 : Trigger.new)
        {   
            AllocPer = AllocMap.get(Allocations1.Employee__c);
            System.debug(AllocPer);
            if(AllocPer!=NULL)
            {
                System.debug(OldPer);
                AllocPer = AllocPer - OldPer;
                AllocPer = 100 - AllocPer;
                System.debug(AllocPer);
                if(!(AllocPer == 0.0))
                {
                    if(AllocPer < pr)
                    {
                        Allocations1.Allocation_Percentage__c.addError('You can create only '+AllocPer+' Percentage allocation');
                    }
                }else  Allocations1.Allocation_Percentage__c.addError('You have already create 100% allocation for this employee');
            }
        }
    }
}