public class utilDetailsController {
    public Map<string,WrapperClass> Allocmap{get;set;}
    public List<AggregateResult> FilterData;
    public String projectName {get;set;}
    //public String passElement {get;set;}
    public string locName {get;set;}
    public string empName {get;set;}
    public Date frmdate{get;set;}
    public Date todate{get;set;}
    public string firstElement;
    public string pageBlockName{get;set;}
    public boolean ShowPname{get;set;}
    public boolean ShowEname{get;set;}
    public boolean ShowBench{get;set;}
    public boolean ShowBillable{get;set;}
    public boolean ShowNonBillable{get;set;}
    public string rightselected{get;set;}
    public string Resourcename{get;set;}
    String sQuery;
    String key;
    
    public utilDetailsController(){
        
        ShowBench = false;
        ShowPname = false;
        ShowEname = false;
        ShowBillable = false;
        ShowNonBillable = false;
        Allocmap=new Map<String,WrapperClass>();
        Resourcename = Apexpages.currentPage().getparameters().get('resourcename');
        empName = Apexpages.currentPage().getParameters().get('empName');
        System.debug(empName);
        locName = Apexpages.currentPage().getParameters().get('WorkLoc');
        System.debug(locName);
        projectName = Apexpages.currentPage().getParameters().get('ProjName');
        System.debug(projectName);
        System.debug(Apexpages.currentPage().getParameters().get('rightselected'));
        rightselected=Apexpages.currentPage().getParameters().get('rightselected');
        
        
        string s1 =Apexpages.currentPage().getParameters().get('frmdate');
        frmdate = Date.parse(s1);
        system.debug('FormDate:::::::::::::::::::::::::::::44'+frmdate);
        string  s2=Apexpages.currentPage().getParameters().get('toDate');
        todate = Date.parse(s2);
        
        if(empName != NULL)
        {
            Showbench = true;
            ShowBillable = true;
            ShowNonBillable = true;
            ShowPname = true;
            pageBlockName = empName;
            sQuery='Select Id,Allocation_Start_Date__c,Allocation_End_Date__c,Employee__r.Name eName,Project__r.Name pName,Allocation_Type__c aType,SUM(Allocated_Effort_Hrs__c) aHours from Allocation__c Where Employee__r.Name =: empName AND (Allocation_Start_Date__c >=:frmdate AND Allocation_End_Date__c <=: todate) group by Id,Employee__r.Name,Allocation_Type__c,Project__r.Name,Allocation_Start_Date__c,Allocation_End_Date__c';  
        } 
        else if(projectName != NULL)
        {
            if(ProjectName == 'Bench')
            {
                ShowBench = true;
            }else
            {
                Showbench = false;
                ShowBillable = true;
                ShowNonBillable = true;
            }
            ShowEname = true;
            pageBlockName = projectName;
            sQuery='Select Id,Allocation_Start_Date__c,Allocation_End_Date__c,Employee__r.Name eName,Project__r.Name pName,Allocation_Type__c aType,SUM(Allocated_Effort_Hrs__c) aHours from Allocation__c Where Project__r.Name =: projectName AND (Allocation_Start_Date__c >=:frmdate AND Allocation_End_Date__c <=: todate) group by Id,Employee__r.Name,Allocation_Type__c,Project__r.Name,Allocation_Start_Date__c,Allocation_End_Date__c';  
        } else if(locName != NULL)
        {   
            
            Showbench = true;
            ShowBillable = true;
            ShowNonBillable = true;
            ShowEname = true;
            ShowPname = true;
            pageBlockName = locName;
            sQuery='Select  Id,Allocation_Start_Date__c,Allocation_End_Date__c,Employee__r.Name eName,Project__r.Name pName,Allocation_Type__c aType,SUM(Allocated_Effort_Hrs__c) aHours from Allocation__c Where Employee__r.Work_location__c =: locName AND (Allocation_Start_Date__c >=:frmdate AND Allocation_End_Date__c <=: todate) group by Id,Project__r.Name,Allocation_Type__c,Employee__r.Name,Allocation_Start_Date__c,Allocation_End_Date__c'; 
        }
        if(sQuery!=NULL){
            FilterData = Database.query(sQuery); 
            System.debug(FilterData);}
        for(AggregateResult agr:FilterData){
            if(!Allocmap.containsKey(String.valueof(agr.get('pName'))+String.valueof(agr.get('eName'))+String.valueof(agr.get('Id'))))
            {
                
                if(empName != NULL)
                {
                    Allocmap.put(String.valueof(agr.get('pName'))+String.valueof(agr.get('eName'))+String.valueof(agr.get('Id')),new WrapperClass(String.valueof(agr.get('pName')),String.valueof(agr.get('aType')),Integer.valueof(agr.get('aHours')),String.valueOf(agr.get('Allocation_Start_Date__c')),String.valueOf(agr.get('Allocation_End_Date__c'))));     
                }
                else if(projectName != NULL)
                { 
                    
                    
                    
                    Allocmap.put(String.valueof(agr.get('pName'))+String.valueof(agr.get('eName'))+String.valueof(agr.get('Id')),new WrapperClass(String.valueof(agr.get('eName')),String.valueof(agr.get('aType')),Integer.valueof(agr.get('aHours')),String.valueof(agr.get('Allocation_Start_Date__c')),String.valueof(agr.get('Allocation_End_Date__c'))));     
                    
                }
                else if(locName != NULL)
                {
                    Allocmap.put(String.valueof(agr.get('pName'))+String.valueof(agr.get('eName'))+String.valueof(agr.get('Id')),new WrapperClass(String.valueof(agr.get('eName')),String.valueof(agr.get('pName')),String.valueof(agr.get('aType')),Integer.valueof(agr.get('aHours')),String.valueof(agr.get('Allocation_Start_Date__c')),String.valueof(agr.get('Allocation_End_Date__c'))));     
                }
                
            }
            else
            {
                WrapperClass c = Allocmap.get(String.valueof(agr.get('pName'))+String.valueof(agr.get('eName'))+String.valueof(agr.get('Id')));
                if(String.valueof(agr.get('aType')) == 'Billable')
                {
                    c.BillableH+=Integer.valueOf(agr.get('aHours'));
                }else  if(String.valueof(agr.get('aType')) == 'Non-Billable')
                {
                    c.NonBillableH+=Integer.valueOf(agr.get('aHours'));
                }else  if(String.valueof(agr.get('aType')) == 'Bench')
                {
                    c.Bench+=Integer.valueOf(agr.get('aHours'));
                }else  if(String.valueof(agr.get('aType')) == 'Leave')
                {
                    c.Leave+=Integer.valueOf(agr.get('aHours'));
                }
            }
        }
    }
    public class WrapperClass{
        
        public String empName {get;set;}
        public String projectName {get;set;}
        public Integer BillableH {get;set;}
        public Integer NonBillableH {get;set;}
        public Integer Bench {get;set;}
        public Integer Leave {get;set;}
        public String empWorkloc {get;set;}
        public String startD {get;set;}
        public String endD {get;set;}
        public String AlloType;
        
        public WrapperClass(String epName,String aType,Integer aHours,String sDate,String eDate){
            NonBillableH = 0;
            BillableH = 0;
            Bench = 0;
            Leave = 0;
            startD=Date.valueOf(sDate).format();
            endD=Date.valueOf(eDate).format();
            projectName= epName;
            empName = epName; 
            if(aType=='Billable')
            {
                BillableH = aHours;
            }else if(aType=='Non-Billable')
            {
                NonBillableH = aHours;                
            }else if(aType=='Bench')
            {
                Bench = aHours;
            }else if(aType=='Leave')
            {
                Leave = aHours;
            }      
        }
        public WrapperClass(String eName,String pName,String aType,Integer aHours,String sDate,String eDate){
            NonBillableH = 0;
            BillableH = 0;
            Bench = 0;
            Leave = 0;
            empName = eName;
            projectName= pName;
            startD=Date.valueof(sDate).format();
            endD=Date.valueof(eDate).format();
            if(aType == 'Billable')
            {
                BillableH = aHours;
                
            }
            else if(aType=='Non-Billable')
            {
                NonBillableH = aHours;                
            }
            else if(aType=='Bench')
            {
                Bench = aHours;
            }
            else if(aType == 'Leave')
            {
                Leave = aHours;
            }     
        }   
    }   
}