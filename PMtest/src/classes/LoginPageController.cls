public class LoginPageController {
    
    public String employeecode{get;set;}
    public List<Contact> employeelist;
    public Map<String,Id> codemap;
    
    
    
    public LoginPageController(){
        employeelist = [SELECT Id, FirstName, Employee_ID__c FROM Contact];
    }
    
     public PageReference login(){
         
         PageReference pageref;
         if(String.isNotBlank(employeecode) || String.isNotEmpty(employeecode)){
             
             for(Contact con : employeelist){
                 
                 if(con.Employee_ID__c == employeecode){
                     pageref = new PageReference('/AllProjectsPage');
                     pageref.getParameters().put('employeeId',employeecode);
                     pageref.setRedirect(true);
                     //return pageref; 
                     
                 }
                 else{
                 ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'We did not find your Employee Code. Please contact your Administrator'));
                }
            }
          
         }
         else{
           //  pageref = new PageReference('https://sb03-aress.cs19.force.com/ProjectPortal');
           //  pageref.setRedirect(false);
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter Employee Code'));
                 
         }
      return pageref;     
  
    }
   

}