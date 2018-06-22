 function returnConfirm(object,message){
                    var redirect = false;
                   $.confirm({
                            'title'     : 'Confirm before continue',
                            'message'   : message,
                            'buttons'   : {
                                'Yes'   : {
                                    'class' : 'blue',
                                    'action': function(){
                                        redirect = true;
                                        window.location.href = object.href;
                                        return true;                                        
                                     }
                                 },
                                'No'    : {
                                    'class' : 'gray',
                                    'action': function(){
                                    
                                    }  // Nothing to do in this case. You can as well omit the action property.
                                }
                            }
                        });
                         
                         return  redirect;
               }
               