public class AddTimeSheetPageController {
    
    public String projectId{get;set;}
    Public String projectId1;
    public String CRId{get;set;}
    public string CRId1;
    public string projectName{get;set;}
    public string projectName2{get;set;}
    public string CRName{get;set;}
    Public string employeecode1;
    public String employeeCode{get;set;}
    public String allocationId{get;set;}
    public String AllocationId1;
    public string CRName1{get;set;}
    Blob afterblob;
    
    
    
    public ApexPages.StandardController controller;
    Allocation__c alloId;
    TimeSheet__c myTimeSheet;
    
    public AddTimeSheetPageController(ApexPages.StandardController con){
        
        this.myTimeSheet = (TimeSheet__c)con.getRecord();
        
        projectId = ApexPages.currentPage().getParameters().get('projectId'); 
        //afterblob = EncodingUtil.base64Decode(projectId1);
        //projectId = afterblob.toString();
        
        CRId = ApexPages.currentPage().getParameters().get('CRId');  
        
       /* if(CRId1 != NULL)
        {
            afterblob = EncodingUtil.base64Decode(CRId1);
            CRId = afterblob.toString();  
        }*/
        
        
        allocationId = ApexPages.currentPage().getParameters().get('AllocationId');  
        //afterblob = EncodingUtil.base64Decode(AllocationId1);
        //allocationId = afterblob.toString(); 
        
        employeecode = ApexPages.currentPage().getParameters().get('employeeId');
        //afterblob = EncodingUtil.base64Decode(employeecode1);
        //employeecode = afterblob.toString();
        
        
        if(projectId != null){
            myTimeSheet.Project__c = ApexPages.currentPage().getParameters().get('projectId');
            //myTimeSheet.Project__c = projectId;
            projectName = [select Name from Project__c where Id =: projectId].Name;
            projectName2 = [select Project_Name__c from Project__c where ID =: projectId].Project_Name__c;
        }
        
        if(CRId != null){
            myTimeSheet.Change_Request__c = ApexPages.currentPage().getParameters().get('CRId');
            //myTimeSheet.Change_Request__c = CRId;
            system.debug('---myTimeSheet.Change_Request__c--'+myTimeSheet.Change_Request__c);
            CRName = [select Name from Change_Request__c where Id =: CRId].Name; 
            CRName1 = [select CR_Name__c from Change_Request__c where Id =: CRId].CR_Name__c;
            
        }    
        //1
        alloId = [select Id,Allocation_Type__c from Allocation__c where Id=:allocationId];    
    }
    
    public PageReference save(){
        PageReference redirecturl;
        if(myTimeSheet != null){
            myTimeSheet.Project_Allocation__c = allocationId;
        
            myTimeSheet.Billable1__c = alloId.Allocation_Type__c;
            System.debug('Task Category Selected ---->'+myTimeSheet.Task_Category__c);
            insert myTimeSheet; 
        }
        if(projectId != null){
            System.debug(redirecturl);
            redirecturl = new PageReference('/apex/TimeSheetPage?projectId='+projectId+'&employeeId='+employeecode+'&AllocationId='+allocationId);
 
            System.debug(redirecturl);
            redirecturl.setRedirect(true);       
            //return redirecturl;
        }
        else  if(CRId != null)
        {
            redirecturl = new PageReference('/apex/TimeSheetPage?CRId='+CRId+'&employeeId='+employeecode+'&AllocationId='+allocationId);
            redirecturl.setRedirect(true);       
            //return redirecturl;
        }
        System.debug(redirecturl);
        return redirecturl;
    }
    
    public PageReference cancel(){
        PageReference pg;
        if(projectId != null){
            pg = new PageReference('/apex/TimeSheetPage?projectId='+projectId+'&employeeId='+employeecode+'&AllocationId='+AllocationId);
            pg.setRedirect(true);       
            //return pg;
        }
        else  if(CRId != null)
        {
            pg = new PageReference('/apex/TimeSheetPage?CRId='+CRId+'&employeeId='+employeecode+'&AllocationId='+AllocationId);
            pg.setRedirect(true);       
            // return pg;
        }
        return pg;
    }
}