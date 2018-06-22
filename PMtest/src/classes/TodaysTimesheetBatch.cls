global class TodaysTimesheetBatch implements Database.Batchable<sObject>,Database.Stateful{
    
    global String Query;
     List<Allocation__c> Query1 = new List<Allocation__c>();
    List<Allocation__c> listofAllocations = new List<Allocation__c>();
    global Database.QueryLocator start(Database.BatchableContext BC){
        Query = 'SELECT Id FROM Allocation__c WHERE Today_TimeSheet__c = 0 AND isTimesheetAddedToday__c = false AND Allocation_End_Date__c > TODAY AND  Allocation_Start_Date__c <= TODAY ';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Allocation__c> scope){
       // List<Allocation__c> listofAllocations = new List<Allocation__c>();
        
        for(Allocation__c allocation : scope){
              allocation.Today_TimeSheet__c = 1;
              listofAllocations.add(allocation);
       
        }
        if(!listofAllocations.isEmpty()){
            update listofAllocations;
        
        }
    }
     
    global void finish(Database.BatchableContext BC){
        Integer i=1;
        String body='<h2>List of employee who have not added Timesheet on '+Date.today().format()+'</h2>';
        body+=' <table style="width:120%" border=1>';
        body+='<tr style="font-weight: bold;font-color:white;">';
        body+='<td>No</td>';
        body+='<td>Date</td>';
        body+='<td>Name</td>';
        body+='<td>Project Name</td>';
        body+='<td>Project Manager</td>';
        body+='<td>Allocation Start Date</td>';
        body+='<td>Allocation End Date</td>';
        body+='</tr>';
       Query1=[Select Allocation_Start_Date__c,Allocation_End_Date__c,Project__r.Name,Project__r.Project_Name__c,Employee__r.FirstName,Employee__r.LastName,
              Employee__r.Employee_ID__c,Today_TimeSheet__c,Project__r.Project_Manager__r.LastName,Project__r.Project_Manager__r.FirstName
              from Allocation__C where Today_TimeSheet__c=1 AND isTimesheetAddedToday__c = false];
              if(!Query1.isEmpty())
              {
              for(Allocation__c allocation : Query1)
              {
              		body+='<tr>';
                  	body+='<td>'+i+'</td>';
                  	body+='<td>'+date.today().format()+'</td>';
          			body+='<td>'+allocation.Employee__r.FirstName+' '+allocation.Employee__r.LastName+'</td>';
                  	body+='<td>'+allocation.Project__r.Project_Name__c+'</td>';
                 	body+='<td>'+allocation.Project__r.Project_Manager__r.FirstName+' '+allocation.Project__r.Project_Manager__r.LastName+'</td>';
             		body+='<td>'+allocation.Allocation_Start_Date__c.format()+'</td>';
                    body+='<td>'+allocation.Allocation_End_Date__c.format()+'</td>';
                	body+='</tr>';
                	i++;
        	  }
             
                
           
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
            String[] toAddresses = new String[] {'dnyanesh.gawali@aress.com','prosenjit.mahalanobis@aress.com'};
            String[] ccAddresses = new String[] {'sumanta.mukherjee@aress.com'};
             
            mail.setToAddresses(toAddresses);
            mail.setCcAddresses(ccAddresses);
            mail.setSubject('Daily Timesheet Report');
            
            mail.setHtmlBody(body);
             
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
              }
    }
}