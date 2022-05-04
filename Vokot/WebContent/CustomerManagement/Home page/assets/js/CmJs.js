
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
 
 
 function LoginValidate() {

  var x = document.Login.Uname.value;
  var y = document.Login.Password.value;


  let text;
  if (x.length < 5  || y.length < 5 ) {
  
    
  if(x.length < 5  ) {
     
    text = "Characters are not valid";
     document.getElementById("Txt2").innerHTML = text;
 
  }
  
  
   if(y.length < 5) {
      text = "Characters are not valid";
     document.getElementById("Txt1").innerHTML = text;
 
  }
  
      return false;
  
  }
  
  else {
     return true;
  }
 
}

  
 
  
  


  
  
  
 
  
