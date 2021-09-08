
function PreviewImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#pic').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);

        $('#buttonHide').show();


        
    }
}


//Jquery to remove content 
$(document).ready(function(){
    $('#buttonHide').click(function(){
        $("#pic").attr("src","");
        $("#in").val('');
        $('#buttonHide').hide();
    });
  });
  
  
  $(document).ready(function(){
    $('.delete2').click(function(){
     
        $('#in').attr('type',"file");
          $("#pic").attr("src","");
         $('.delete2').hide();
      
    });
  });

//submission check
  $(document).ready(function(){
    $('#suform').on('submit', function(e){
        e.preventDefault();
        var errorCount = 0;
        $('span.errorMessage').text(''); // reset all error mesaage
        $('input').each(function(){
            var $this = $(this);
            if($this.val() === ''){
                var error = 'Please fill ' + $this.prev('label').text(); // take the input field from label
                $this.next('span').text(error);
                errorCount = errorCount + 1;   
            }
        });
        if(errorCount === 0){
            $(this)[0].submit(); // submit form if no error
        }
    });
});


   $(function () {
        $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
            var rating = data.rating;
            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
            $(this).parent().find('.result').text('rating :'+ rating);
            $(this).parent().find('input[name=rating]').val(rating); //add rating value to input field
        });
    });




    $(function () {
        $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
            var rating = data.rating;
            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
            $(this).parent().find('.result').text('Feedback rating :'+ rating);
            $(this).parent().find('input[name=rating]').val(rating); //add rating value to input field
        });
    });
  
 
  
  
    $(document).ready(function(){
    $('#Create').click(function(){
    window.location.href = "CmRegister.jsp";
      
    });
  });
  
    $(document).ready(function(){
    $('#EditProf').click(function(){
    window.location.href = "CmEditProfile.jsp";
      
    });
  });
  
  
  
  
  
 
  
