global class AutoBenchAllocationBatch implements Database.Batchable<sObject>, Schedulable, Database.Stateful {
    ID ProjID;
    String Query;
    Double pCent=0.0;
    Double AddPcent=0.0;
    Date D;
    Map<String,Double> MapAlloc = new Map<String,Double>();
    List<Allocation__c> allocList = new List<Allocation__c>();
    global Database.QueryLocator start(Database.BatchableContext BC){
        
        List<String> ad = new List<String>();
        ad.add('Project Manager');
        ad.add('Senior VP');

        Query='Select Id,Name,(Select ID,Employee__r.ID,Allocation_Percentage__c,Allocation_Start_date__c,Allocation_End_date__c   From Allocations1__r WHERE  Allocation_Percentage__c < 101 AND (Allocation_Start_date__c <= TODAY AND Allocation_End_date__c >= TODAY)) ';
        Query+='FROM Contact Where Existing_Employee__c = True AND Title NOT IN :ad';
        
        return Database.getQueryLocator(Query);
    }
    
    
    global void execute(Database.BatchableContext BC, List<Contact> scope){
 
        System.debug(scope);
        
        for(Contact  con : scope){
            pCent = 0.0;
            AddPcent = 0.0;
            
            if(!con.Allocations1__r.isempty()){
                String a='Bench';
                query ='Select Id From Project__c Where Project_Name__c=:a';
                List<Project__c> s = Database.query(query);
                for(Project__c pc : s)
                {
                    ProjID = pc.Id;
                }
                //System.debug('EmpName'+con.Name);
                for(Allocation__c Ac : con.Allocations1__r)
                {    
                    if(!MapAlloc.containsKey(Ac.Employee__r.ID))
                    {
                        pCent = Ac.Allocation_Percentage__c;
                        MapAlloc.put(Ac.Employee__r.ID,pCent);
                        
                    }
                    else
                    {
                        
                        AddPcent =  MapAlloc.get(Ac.Employee__r.ID); 
                        pCent = Ac.Allocation_Percentage__c + AddPcent;
                        MapAlloc.put(Ac.Employee__r.ID,pCent);
                        
                    }
                }
                System.debug('MapAlloc'+MapAlloc);
                
                for(Allocation__c Ac : con.Allocations1__r)
                {    
                     
                    
                    if(MapAlloc.containsKey(Ac.Employee__r.ID))
                    {
                        Double AddPcent =  MapAlloc.get(Ac.Employee__r.ID);
                        /*List<Allocation__c> All =[Select Allocation_Start_Date__c, Allocation_End_Date__c from Allocation__c where Employee__r.ID =: Ac.Employee__r.ID Order By Allocation_Start_Date__c,Allocation_End_Date__c];

                        Integer n= All.Size();
                        if(n==1)
                        {
                            
                        }else if(n>1)
                        {
                            for(Allocation__c A1 : All)
                            {
                                
                            }
                        }*/
                        /*List<Allocation__c> All =[Select Allocation_Start_Date__c from Allocation__c where Allocation_Start_Date__c >=: Ac.Allocation_Start_Date__c];
                        if(!All.isEmpty())    
                        {   Integer n = All.size();
                            if(Ac.Allocation_End_Date__c == Ac.Allocation_Start_Date__c || n == 1)
                                 D = Ac.Allocation_End_Date__c;
                            else D =  Ac.Allocation_End_Date__c.adddays(-1);
                        }*/
                        if(AddPcent<100)
                        { 
                             
                            Allocation__c allocRec = new  Allocation__c();
                            pCent = 100-AddPcent;
                            allocRec.Allocation_Percentage__c = pCent;
                            allocRec.Employee__c = Ac.Employee__r.ID;
                            allocRec.Project__c = ProjID;
                            allocRec.Allocation_Type__c = 'Bench';
                            //allocRec.Allocation_Start_Date__c = Ac.Allocation_Start_Date__c;
                            //allocRec.Allocation_End_Date__c = D;
                            allocRec.Allocation_Start_Date__c = Date.today();
                            allocRec.Allocation_End_Date__c = Date.today();
                            allocRec.Allocated_Effort_Hrs__c = 0;
                            allocList.add(AllocRec); 
                            MapAlloc.remove(Ac.Employee__r.ID);
                            //System.debug('Record'+allocList);
                        }
                        
                    }
                    
                    
                }
            }else if(con.Allocations1__r.isempty())
            {    String a='Bench';
                 query ='Select Id From Project__c Where Project_Name__c=:a';
                List<Project__c> s = Database.query(query);
                for(Project__c pc : s)
                {
                    ProjID = pc.Id;
                }
                  //  System.debug('EmpNAme---------------------> '+Con.Name);
                   
                            Allocation__c allocRec = new  Allocation__c();
                            allocRec.Allocation_Percentage__c = 100;
                            allocRec.Employee__c = con.Id;
                            allocRec.Project__c = ProjID;
                            allocRec.Allocation_Type__c = 'Bench';
                            allocRec.Allocation_Start_Date__c = Date.Today();
                            allocRec.Allocation_End_Date__c = Date.Today();
                  //          System.debug('Allocrec--------->'+allocRec);
                            AllocRec.Allocated_Effort_Hrs__c = 0.0;
                            allocList.add(allocRec);
                  //        System.debug('Record'+allocList);
                	
            }                     
        }        
        //System.debug('Insert  Data'+allocList);
        insert allocList;
    }
    global void finish(Database.BatchableContext BC){}
    public void execute(System.SchedulableContext sc)
    {
        Id batchJobId2 = Database.executeBatch(new AutoBenchAllocationBatch(), 200);
    } 
}