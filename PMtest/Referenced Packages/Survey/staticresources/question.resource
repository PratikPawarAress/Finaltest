var currentOption = ''; 

function proceccOptions(option) {
    currentOption = option; 
    
    $('.add_more_label').addClass('hideMe'); 
    $('.'+option+'_add_more_label').removeClass('hideMe'); 
    $('.options').parent().addClass('hideMe'); 

    if(option=='free_text'){
        $('#weightage').addClass('hideMe');
        $('#sliderText').addClass('hideMe');
        $('[id$=weightageValue]').val('0');
    }else{
        $('#weightage').removeClass('hideMe'); 
        $('[id$=weightageValue]').val('');
    }
    if(option=='slider'){	
    	//$('#sliderText').removeClass('hideMe');  	
        	$('.add_more_label').addClass('hideMe'); 
    }
    if(option=='radio' || option=='multiselect'){
        $('#sliderText').addClass('hideMe');
    }
}


function initActions() {
    //Set weightageValue as Zero by default
    $('[id$=weightageValue]').val('0');
    
    $('[id$=scoreMsg]').css('display','none');
    $('[id$=scoreBlock]').css('display','none');
    $('[id$=weightageMsgBlock]').css('display','none');
    
    $(".typeQuestions input[type='radio']").click(function(){
        $('[id$=scoreMsg]').css('display','none'); //hide error messages if any
        $('[id$=scoreBlock]').css('display','none');
        $('#addmore-bottom').css('display','none');
        var option = $(this).val();
        if(option != currentOption) {
            $('.options').html('');
        }

        proceccOptions(option);		
        currentOption = option; 
    });
    
    $(".add_more_button").click(function(){ 
        $('.options').parent().removeClass('hideMe');
        $('.scores').parent().removeClass('hideMe');
        $('#addmore-bottom').css('display','block');
        
        $('[id$=addMoreButton]').removeClass('hideMe');
        $('.options').append($('.'+currentOption+'_question_type').html());
        $('.scores').append($('.'+currentOption+'_question_score').html());
        
        $(".delete_option").click(function(){                        
            $(this).parent().remove();
            if($('.options').children().length == 0){
                removeScoreError();
                $('#addmore-bottom').css('display','none');
                $('[id$=addMoreButton]').addClass('hideMe');
        	}
        });
        
        if($('.options').children().length == 0){
            $('#addmore-bottom').css('display','none');
           	$('[id$=addMoreButton]').addClass('hideMe');
        }
//Added below to give Id to textbox when click        
        var currentIndex = 1;
        $('.options input[type="text"]').each(function( i ) {
            $(this).removeAttr('id');  
            $(this).attr('id','option'+currentIndex);
            currentIndex++;
        });
//Added below to give Id to dropdown when click
        var currentIndex = 1;
        $('.scores.questionOptionText').each(function( i ) {
            $(this).removeAttr('id');  
            $(this).attr('id','scores'+currentIndex);
            currentIndex++;
        });

    });
    
    $('[id$=weightageValue]').blur(function(){
        if(checkWeightage() == false){
            showWeightageError();
        } else{
            removeWeightageError();
        }
    });
}

function checkWeightage(){
    var weightage = $('[id$=weightageValue]').val();
    if(weightage != undefined){
     	if(weightage == null || weightage.trim() == '' || ($.isNumeric(weightage) == false) || (weightage <= 0) ){
        	return false;
    	}
    }else{
        return checkWeigthageOnEditPage();
    }
    return true;
}

function checkWeigthageOnEditPage(){
    var weightage = $('[id$=editWeightage]').val();
if(weightage!=undefined){
    if(weightage == null || weightage.trim() == '' || ($.isNumeric(weightage) == false)){
        showWeightageError();
        $('[id$=editWeightage]').addClass('borderError');
    } else{
        removeWeightageError();
        $('[id$=editWeightage]').removeClass('borderError');
    }
   }
}

function checkValidScore(scoreElement){  
  /* if(parseInt($(scoreElement).val()) > parseInt($('.weightageValue').val()) || parseInt($(scoreElement).val()) <= 0 )  {  
  return false; 
    }*/ 
    return true;
}

function showWeightageError(){
    $('[id$=weightageMsgBlock]').css('display','block');
    $('[id$=weightageMsg]').css('display','block');
    $('[id$=weightageMsg]').addClass('message');
    $('[id$=weightageValue]').addClass('borderError');
    $('[id$=weightageMsg]').html( "Please assign valid weightage to the question and should be greater than zero.");
}

function removeWeightageError(){
    $('[id$=weightageMsgBlock]').css('display','none');
    $('[id$=weightageMsg]').css('display','none');
    $('[id$=weightageValue]').removeClass('borderError');
    $('[id$=weightageMsg]').removeClass('message');
}

function showScoreError(msg){
    if(msg==null){
    	//$('[id$=scoreMsg]').html( "Score should be greater than zero and less than weightage and should be a number");    //commented this because told to remove the score weightage validation.
    }else{
        $('[id$=scoreMsg]').html(msg);    
    }
    $('[id$=scoreBlock]').css('display','block');
    $('[id$=scoreMsg]').css('display','block');
    $('[id$=scoreMsg]').addClass('message');
    
}

function removeScoreError(){
    $('[id$=scoreBlock]').css('display','none');
    $('[id$=scoreMsg]').css('display','none');
    $('[id$=scoreMsg]').removeClass('message');
}

$(document).ready(function(){ 
    initActions(); 
});  

var validated = true;
function storeValue(element) {   
    validated = true;
   
    if(checkWeightage() == false){
	validated = false;
    }else{
        validated = true;
    }
    
    $('.scores').each(function() {
        $(this).removeClass('borderError');		   
        $(this).addClass('questionOptionText');
        if(checkValidScore(this)==false){
            validated = false;
            $(this).addClass('borderError');
        }else{
            $(this).removeClass('borderError');
        }
    });
    
    if(validated) {	
        $('[id$=scoreMsg]').css('display','none');
        $('[id$=scoreMsg]').removeClass('message');
        
        var options = new Array();
        var currentIndex = 0;
        var index = 0;
        var optionLength = document.getElementsByClassName("questionOptionText");
       for (i = 1; i <= optionLength.length ; i++) 
       {
            var optionId = document.getElementById("option"+i);
			
			if(optionId!=undefined && optionId!=null)
			{
				if(optionId.value!='' && optionId.value!=null)
				{
						
					options[currentIndex] = optionId.value;
					currentIndex++;
					var selectId = document.getElementById("scores"+i);
					if(selectId !=undefined && selectId!=null)
					{
						options[currentIndex] = selectId.value;
						currentIndex++;
					}
				
				}
				else
				{
					removeScoreError();
					showScoreError('Please Enter Your Option'); // option data is empty.
					validated= false;
					break;
				}
			}
       }

        /*for (i = 0; i < optionLength.length-2 ; i++) 
        {
			options[currentIndex] = optionLength[i].value;
			currentIndex++;
         }  */
  
        /*$('.options input[type="text"]').each(function( i ) {
            options[currentIndex] = $(this).val();
            currentIndex++;
        });*/

        document.getElementById(element).value = options.join(',');
        //return validated;
    }else{
        $('.confirmM3').css('display','none');  //Hide any success page message if any
        showScoreError();
    }

    //console.log('validated:'+validated);
    return validated;
}

function checkQuestionText(){
    var question = $('[id$=theFieldInput]').val();
if(question!=undefined){
    if(question == null || question.trim() == ''){
        showQuestionTextError();
        $('[id$=editWeightage]').addClass('borderError');
return false;
    } else{
        removeQuestionTextError();
        $('[id$=editWeightage]').removeClass('borderError');
return true;
    }
   }
return false;
}

function showQuestionTextError(){
    $('[id$=weightageMsgBlock]').css('display','block');
    $('[id$=weightageMsg]').css('display','block');
    $('[id$=weightageMsg]').addClass('message');
    $('[id$=weightageValue]').addClass('borderError');
    $('[id$=weightageMsg]').html( "Please Enter Your Question");
}

function removeQuestionTextError(){
    $('[id$=weightageMsgBlock]').css('display','none');
    $('[id$=weightageMsg]').css('display','none');
    $('[id$=weightageValue]').removeClass('borderError');
    $('[id$=weightageMsg]').removeClass('message');
}