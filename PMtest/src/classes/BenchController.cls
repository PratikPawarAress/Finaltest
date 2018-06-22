public class BenchController {
    public Integer BillableCount{get;set;}
    Public Integer NonBillableCount{get;set;}
    public Map<String,WrapperClass> Allocmap{get;set;}    
    Public String projectName;
    
    public String Key;
    public String Type;
    public Date frmdate {get;set;}
    public Date todate {get;set;}
    Public string Resourcename {get;set;}
    public PageReference selectclick1{get;set;}
    public String AllString{get;set;}
    public string Selectedvalue{get;set;}
    public Boolean showAllocatedTable{get;set;}
    public Boolean showActualTable{get;set;}
    public Boolean showEmpName{get;set;}
    public Boolean showLocation{get;set;}
    public Boolean showLocation1{get;set;}
    public Boolean showProject{get;set;}
    public String effortHour{get;set;}
    Public List<string> leftselected{get;set;}
    Public List<string> rightselected{get;set;}
    Set<string> leftvalues = new Set<string>();
    Set<string> rightvalues = new Set<string>();
    Set<string> rightvalues11 = new Set<string>();
    Set<string> rightvalues1 = new Set<string>();
    public List<Project__c> ProjectList1;
    public List<Contact> EmployeeList;
    public List<AggregateResult> Allocationlist;
    public List<Allocation__c> ActualEffortProjectList{get;set;}
    public List<string> firstElement = new List<string>();
    
        
    string sQuery1='';
    string s;
    public BenchController(){
        AllString='';
        rightselected = new List<String>();
        Allocation__c a =new Allocation__c();
        rightvalues1 = new Set<String>();
        showAllocatedTable = False;
        showActualTable = False;
        showEmpName = False;
        showLocation = False;
        showLocation1 = False;
        showProject = False;
     
        Allocmap=new Map<String,WrapperClass>();
        projectName=ApexPages.currentPage().getParameters().get('ProjName');
        if(projectName!=NULL)
        {
        Resourcename = ApexPages.currentPage().getParameters().get('Resourcename');
        System.debug('54 rightselected'+ApexPages.currentPage().getParameters().get('rightselected'));
        String ss = ApexPages.currentPage().getParameters().get('rightselected');
            
            rightvalues1.addAll(ss.split(','));
            rightvalues1.remove('null');
            System.debug('rightvalues1--->'+rightvalues1);
       effortHour='Allocated Efforts';
       String s1 = ApexPages.currentPage().getParameters().get('frmdate');
       frmdate=Date.parse(s1);
       String s2 = ApexPages.currentPage().getParameters().get('todate');
       todate = Date.parse(s2);
       if(projectName != NULL)
       {
           doSearch();
       }
       }
    }
    
    public void doSearch(){
        
        if(frmdate > todate)
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Start Date Should be less'));

        Allocmap=new Map<String,WrapperClass>();
        doOperations(); 
    }
      
    public void doOperations(){  
         
        showAllocatedTable = False;
        showActualTable = False;
            
        for(string setElement : rightvalues1){
            
            firstElement.add(setElement);
           // System.debug('firstElement'+firstElement +' setElement '+setElement);
        }
       
       System.debug('firstElement'+firstElement);
        AllString='';
        for(String s : firstElement)
        {
            AllString +=s+',';
        }        
        
        
        System.debug('AllString-->'+AllString);
        
        if(effortHour == 'Allocated Efforts')
        {
            showAllocatedTable = True;
            
            if(Resourcename == 'Project'){
                
                sQuery1='Select Sum(Allocated_Effort_Hrs__c) aHours,Project__r.Name pName,Allocation_Type__c At From Allocation__c where Allocation_Start_Date__c >=: frmdate AND Allocation_End_Date__c<=: todate AND Project__r.Name in';
                sQuery1+=':firstElement group by  Project__r.Name,Allocation_Type__c ';      
                Key='pName';
                Type='Project';
                system.debug('sQuery1 for project>>>>>>>>>>>>>>>>' + sQuery1);

            }
            else if(Resourcename=='Location'){ 
                SQuery1='Select Employee__r.Work_Location__c eLoc,Sum(Allocated_Effort_Hrs__c) aHours,Allocation_Type__c At From Allocation__c where Allocation_Start_Date__c >=: frmdate AND  Allocation_End_Date__c <=: todate AND Employee__r.Work_location__c in';
                SQuery1+=':firstElement group by Employee__r.Work_location__c,Allocation_Type__c'; 
                key='eLoc';
                Type='Location';
                system.debug('sQuery1 for location>>>>>>>>>>>>>>>>' + sQuery1);
                
            }
            else if(Resourcename =='Resource'){
                showLocation1=True;
                sQuery1='Select Employee__r.Name eName,Sum(Allocated_Effort_Hrs__c) aHours,Employee__r.Work_location__c eLoc, Allocation_Type__c At From Allocation__c where Allocation_Start_Date__c >=:frmdate AND Allocation_End_Date__c<=:todate AND Employee__r.Name in';
                sQuery1+=':firstElement group by Employee__r.Name,Employee__r.Work_location__c,Allocation_Type__c ';
                key='eName';
                Type='Resource';
                system.debug('sQuery1 for Resource>>>>>>>>>>>>>>>>' + sQuery1);
                
            }
            Allocationlist=Database.query(sQuery1);
            System.debug(Allocationlist);
            
            if(Allocationlist.isEmpty()){
                showAllocatedTable = False;
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'No Allocations Found!'));
            }
        }else if(effortHour == 'Actual Efforts')
        {
            
            if(Resourcename == 'Project'){
                showActualTable = True;
                sQuery1='Select Project__r.Project_Type__c,Project__r.Actual_Project_Efforts__c,Project__r.Allocated_Effort_Hours__c,Project__r.Name From Allocation__c Where Project__r.Name in';
                sQuery1+=':firstElement';      
                Key='Name';
                Type='Project';
            
            ActualEffortProjectList = Database.query(sQuery1);
            if(ActualEffortProjectList.isEmpty())
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'No Data Found'));
            }
            }
        }   
        if(effortHour == 'Allocated Efforts')
        {
            
            for(AggregateResult agr : Allocationlist){
                
                if(!Allocmap.containsKey(String.valueof(agr.get(key)))){
                    
                    if(Type == 'Resource')
                    {    
                        
                        showEmpName = True;
                        showLocation = false;
                        showProject = false;
                           Allocmap.put(String.valueof(agr.get(key)),new WrapperClass(String.valueof(agr.get(key)),String.valueof(agr.get('eLoc')),Integer.valueOf(agr.get('aHours')),String.valueof(agr.get('At')),Type));
                 //Allocmap.put(String.valueof(agr.get(key)),new WrapperClass(String.valueof(agr.get(key)),Integer.valueOf(agr.get('aHours')),String.valueof(agr.get('At')),Type));                        
                    }else if(Type == 'Project')
                    {
                        showProject=True;
                        showLocation=false;
                        showEmpName=false;
                        
                        Allocmap.put(String.valueof(agr.get(key)),new WrapperClass(String.valueof(agr.get(key)),Integer.valueOf(agr.get('aHours')),String.valueof(agr.get('At')),Type)); 
                        
                    }else if(Type == 'Location')
                    {   showLocation1=false;
                        showLocation = True;
                        showProject = false;
                        showEmpName = false;
                        Allocmap.put(String.valueof(agr.get(key)),new WrapperClass(String.valueof(agr.get(key)),Integer.valueOf(agr.get('aHours')),String.valueof(agr.get('At')),Type)); 
                    }
                    
                    }else  if(String.valueof(agr.get('At'))=='Billable' && Integer.valueof(agr.get('aHours'))!=NULL){
                    
                    WrapperClass s=Allocmap.get(String.valueof(agr.get(key)));
                    s.BillableH+=Integer.valueof(agr.get('aHours'));
                    
                }else if(String.valueof(agr.get('At')) == 'Non-Billable'){
                    
                    WrapperClass s=Allocmap.get(String.valueof(agr.get(key)));
                    System.debug(Integer.valueof(agr.get('aHours')));
                    //if(Integer.valueof(agr.get('aHours'))==0 || Integer.valueof(agr.get('aHours'))==null)//changes done by anu
                        if(Integer.valueof(agr.get('aHours'))!=null)
                    {
                        s.NonBillableH += Integer.valueof(agr.get('aHours'));
                    }
                    
                }else if(String.valueof(agr.get('At')) == 'Bench'){
                    
                    WrapperClass s=Allocmap.get(String.valueof(agr.get(key)) );
                    System.debug(Integer.valueof(agr.get('aHours')));
                    s.Bench+=Integer.valueof(agr.get('aHours'));
                    
                }else if(String.valueof(agr.get('At'))=='Leave'){
                    
                    WrapperClass s=Allocmap.get(String.valueof(agr.get(key)));              
                    System.debug(Integer.valueof(agr.get('aHours')));
                    s.Leave+=Integer.valueof(agr.get('aHours'));
                    
                }  
            }
        }
        else if(effortHour == 'Actual Efforts' && Resourcename == 'Project')
        {
          
            
            for(Allocation__c aE : ActualEffortProjectList){
                
                AllocMap.put(aE.Project__r.Name,new WrapperClass(aE.Project__r.Name,aE.Project__r.Actual_Project_Efforts__c,aE.Project__r.Allocated_Effort_Hours__c,aE.Project__r.Project_Type__c));      
                
            }
        }
        
        rightvalues1.clear();
        rightvalues.clear();
        leftvalues.clear();
        firstElement.clear();  
        
    }
    
    public List<SelectOption> getResourcenames(){
        
        List<SelectOption> options = new List<SelectOption>();
       
        options.add(new SelectOption('None','--- Select ---'));   
        options.add(new SelectOption('Project','Project'));
        options.add(new SelectOption('Location','Location'));
        options.add(new SelectOption('Resource','Resource'));
         return options;
    }
    
    public List<SelectOption> geteffortHours(){
        
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- Select ---'));   
        options.add(new SelectOption('Allocated Efforts','Allocated Efforts'));
        options.add(new SelectOption('Actual Efforts','Actual Efforts'));
        return options;
    }
    
    public List<SelectOption> getunSelectedValues(){
              
        List<SelectOption> options = new List<SelectOption>();
        if(Resourcename == 'Project'){
            
            sQuery1='Select Name from Project__c';
            ProjectList1=Database.query(sQuery1);
            System.debug(ProjectList1);
            if(ProjectList1!=null&&ProjectList1.size()>0 ){
            for(Project__c proj :ProjectList1){
                options.add(new SelectOption(proj.Name,Proj.Name));
                leftvalues.add(Proj.Name);
                   
            } 
            }
        }
        else if(Resourcename == 'Location'){  
             List<String> locationlist = new List<String>();
                locationlist.add('Pune');
                locationlist.add('Mumbai');
                locationlist.add('Nasik');
                locationlist.add('others');

            sQuery1='Select Work_location__C Wl From Contact Where Work_Location__c In : locationlist group by Work_location__c';
         
            Allocationlist = Database.Query(sQuery1);
              system.debug('Allocationlist>>>>>>>>>>>>>>>>>>>'+Allocationlist);
            if(Allocationlist!=null && Allocationlist.size()>0 )
            {
            for(AggregateResult proj : Allocationlist){
                string s1=String.valueOf(proj.get('Wl'));
                options.add(new SelectOption(s1,s1)); 
                leftvalues.add(s1);  
                system.debug('Allocationlist>>>>>>>>>>>>>>>>>>>'+Allocationlist);
            }
           }
        }
        else if(Resourcename == 'Resource'){
            sQuery1='Select Name From Contact';
            EmployeeList=Database.query(sQuery1);
            
            if(EmployeeList!=null&&EmployeeList.size()>0 ){
            for(Contact proj : EmployeeList){
                options.add(new SelectOption(proj.Name,proj.Name)); 
                leftvalues.add(proj.Name);
            }
            }
            
        }else{}
       
        
        return options;
        
    }
    
    public PageReference selectclick(){
        //rightselected.clear();
        
        for(String s : leftselected){
            leftvalues.remove(s);
            rightvalues.add(s);
        }
        return NULL;
    }
    
    public PageReference unselectclick(){
        leftselected.clear();
        for(String s : rightselected){
            rightvalues.remove(s);
            leftvalues.add(s);
        }
        
        return null;
    }
    
    public PageReference selectclick1(){
        rightvalues.clear();
        return NULL;
    }
   public List<SelectOption> getSelectedValues(){
       List<SelectOption> options1 = new List<SelectOption>();
       List<string> tempList = new List<String>(); 
       
        tempList.addAll(rightvalues);
        rightvalues1.addAll(rightvalues);
      
        tempList.sort();
        
        for(String s : tempList)
            options1.add(new SelectOption(s,s));
       
         
        return options1;
    }
    
    public class WrapperClass{
        public String projectName {get;set;}
        public String emplName {get;set;}
        public Integer BillableH {get;set;}
        public Integer NonBillableH {get;set;}
        public Integer Bench {get;set;}
        public Integer Leave {get;set;}
        public String empWorkloc {get;set;}
        public String AlloType;
        public Decimal ActualHours{get;set;}
        public Decimal Allocatedhours{get;set;}
        public String ProjectType{get;set;}
        public Decimal AllocationHours{get;set;}
        Public String  sDate{get;set;}
        public String  eDate{get;set;}
        public WrapperClass(String Workloc,Integer ah,String AlloType,String Type){
            NonBillableH = 0;
            BillableH = 0;
            Bench = 0;
            Leave = 0;
            if(Type == 'Project')
            {
                projectName = Workloc;
            }
            else if(Type == 'Location'){
                empWorkloc = Workloc;
            } 
            
            if(AlloType == 'Billable' && ah != NULL){
                BillableH = ah;            
            }
            else if(AlloType =='Non-Billable' && ah != NULL){
                NonBillableH = ah;  
            }
            else if(AlloType=='Bench' && ah!=NULL){
                Bench=ah;
            }
            else if(AlloType =='Leave' && ah!=NULL){
                Leave=ah;
            }
            
        }
        public WrapperClass(String EmpName,String Workloc,Integer ah,String AlloType,String Type){
            NonBillableH  = 0;
            BillableH = 0;
            Bench = 0;
            Leave = 0;
            
            emplName = EmpName;
            empWorkloc = Workloc;
            
            if(AlloType == 'Billable' && ah!=NULL){
                BillableH = ah;            
            }
            else if(AlloType == 'Non-Billable' && ah!=NULL){
                NonBillableH = ah;  
            }
            else if(AlloType == 'Bench' && ah!=NULL){
                Bench=ah;
            }
            else if(AlloType == 'Leave' && ah!=NULL){
                Leave=ah;
            }
        }
        public WrapperClass(String pName,Decimal ActualHours,Decimal Allocatedhours,String ProjType)
        {
            projectName = pName;
            this.ActualHours = ActualHours;
            ProjectType = ProjType;
            this.Allocatedhours = Allocatedhours;
        }
    }
}