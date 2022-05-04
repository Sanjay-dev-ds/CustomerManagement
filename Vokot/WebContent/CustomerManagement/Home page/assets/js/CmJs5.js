 function Addfeedback(){
  
  var product = document.AddFeedback.Product.value;
  var Feedback = document.AddFeedback.Feedback.value;
  let text = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-shield-fill-exclamation' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M8 0c-.69 0-1.843.265-2.928.56-1.11.3-2.229.655-2.887.87a1.54 1.54 0 0 0-1.044 1.262c-.596 4.477.787 7.795 2.465 9.99a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.775 11.775 0 0 0 2.517-2.453c1.678-2.195 3.061-5.513 2.465-9.99a1.541 1.541 0 0 0-1.044-1.263 62.467 62.467 0 0 0-2.887-.87C9.843.266 8.69 0 8 0zm-.55 8.502L7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0zM8.002 12a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>";
  
  if (product == -1  || Feedback.length < 5 )
  {
  
  
  if (product == -1  ){
  
   
  
  document.getElementById("Txt1").innerHTML = text;
  
  }
  
    
  if (  Feedback.length < 5){
  
  document.getElementById("Txt2").innerHTML = text;
  
  
  }
  
 
  return false;
  }
  
  
  else {

  return true;
  }
  
  
  
  
  }
  
     $(function () {
        $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
            var rating = data.rating;
            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
            $(this).parent().find('.result').text('rating :'+ rating);
            $(this).parent().find('input[name=rating]').val(rating); 
        });
    });




    $(function () {
        $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
            var rating = data.rating;
            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
            $(this).parent().find('.result').text('Feedback rating :'+ rating);
            $(this).parent().find('input[name=rating]').val(rating);
        });
    });
    
    
    function DemoReg() {
    
    	document.getElementById("Feedback").value ="Good products,Price should less";
    } 
    
  
  
  