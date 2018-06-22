/* $(document).ready(function(e){
if  ( $(".request-quote-desktop").css('display') == 'block') {
$("#contact_person").focus();if($("#enquiryFrm")){jQuery("#enquiryFrm").validate({errorElement:'div',errorClass:'error',rules:{'contact_person':{required:true},'email':{required:true,email:true},'phone':{required:true},'location':{required:true},'requirement':{required:true},'captcha':{required:true},},messages:{'contact_person':{required:"Please enter name."},'email':{required:"Please enter your email address."},'phone':{required:"Please enter your phone number."},'location':{required:"Please enter your preferred location."},'requirement':{required:"Please enter your message."},'captcha':{required:"Please enter the code."}},errorPlacement:function(error,element){error.appendTo(element.parent().parent());},submitHandler:function(form){jQuery('input[type=submit]',form).attr('disabled','disabled'); form.submit();  }});}
}
}); */


$(document).ready(function () {
	//alert ( "width: " + screen.width);
	if ( screen.width < 767 )
		$('.request-quote-desktop').html('');
	else
		$('.request-quote-mobile').html('');
		
    $.validator.setDefaults({
        //debug: true, // blocks submit
        errorElement: 'div', //default input error message container
        errorClass: 'error', // default input error message class
		errorPlacement: function(error, element) {
					error.appendTo( element.parent().parent());
				},
        // added submitHandler only for demo
        submitHandler: function(form) { 
            jQuery('input[type=submit]',form).attr('disabled','disabled');
            form.submit();
        }
    });

    // init validator obj and set the rules
    $('#enquiryFrm').validate({
        rules: {
            'contact_person':{required:true},
			'email':{required:true,email:true},
			'phone':{required:true},
			'location':{required:true},
			'requirement':{required:true},
			'captcha':{required:true},
		},
		messages:{
			'contact_person':{required:"Please enter name."},
			'email':{required:"Please enter your email address.", email:"Please enter correct email address."},
			'phone':{required:"Please enter your phone number."},
			'location':{required:"Please enter your preferred location."},
			'requirement':{required:"Please enter your message."},
			'captcha':{required:"Please enter the code."}
        }
    });
  
});