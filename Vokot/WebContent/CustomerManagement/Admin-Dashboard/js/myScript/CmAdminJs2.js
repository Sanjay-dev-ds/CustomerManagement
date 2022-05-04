function DemoReg2(){
	      document.getElementById("Uname2").value = "kamal2000";
	    document.getElementById("Fname").value = "Kamal";
	    document.getElementById("Lname").value = "hassan";
	     document.getElementById("Email").value = "shruthi@gmail.com";
	      document.getElementById("Gender").value = "Male";
	       document.getElementById("pNumber").value = "0750004545";
	        document.getElementById("Age").value = "30";
	         document.getElementById("Address").value = "10 B 1/1 ebenezer  road";
	          document.getElementById("City").value = "Jaffna";
	            document.getElementById("Province").value = "Western";
	          document.getElementById("Postal").value = "10350";
	            document.getElementById("Password2").value = "kamal1234";
	          

	}
	


function RegisterValidatecheck() {
	
var Uname =  document.Register.Uname2.value;
 var Fname = document.Register.Fname.value;
 var Lname = document.Register.Lname.value;
 var Email = document.Register.Email.value;
 var Gender = document.Register.Gender.value;
 var pNumber  = document.Register.pNumber.value;
 var Age = document.Register.Age.value;
 var address = document.Register.address.value;
 var City = document.Register.City.value;
 var Province = document.Register.Province.value;
 var Postal  = document.Register.Postal.value;
 var ps = document.Register.ps.value;


 let text = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-shield-fill-exclamation' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M8 0c-.69 0-1.843.265-2.928.56-1.11.3-2.229.655-2.887.87a1.54 1.54 0 0 0-1.044 1.262c-.596 4.477.787 7.795 2.465 9.99a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.775 11.775 0 0 0 2.517-2.453c1.678-2.195 3.061-5.513 2.465-9.99a1.541 1.541 0 0 0-1.044-1.263 62.467 62.467 0 0 0-2.887-.87C9.843.266 8.69 0 8 0zm-.55 8.502L7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0zM8.002 12a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>";


 if (Uname.length < 5  || Fname.length < 5  || Lname.length < 5   ||  Email.length < 5  ||  Gender == -1    || pNumber.length !=10  || Age < 10    || address.length < 5    || City.length < 5    || Province.length < 5  || Postal.length < 5 || ps != Cps ) {

	 
 if(Uname.length < 5  ) {
		    
		   
		    document.getElementById("Txt").innerHTML = text;

 }
		 
	 
	 
   
 if(Fname.length < 5  ) {
    
   
    document.getElementById("Txt1").innerHTML = text;

 }
 

 
 if(Fname.length > 5  ) {
    
   
    document.getElementById("Txt1").innerHTML = "";

 }
 
 
 
  if(Lname.length < 5) {
    
    document.getElementById("Txt2").innerHTML = text;

 }
   
 if(Email.length < 5 ) {
    
    document.getElementById("Txt3").innerHTML = text;

 }
 if(  Gender == -1    ) {
    
    document.getElementById("Txt6").innerHTML = text;

 }
 if( pNumber.length != 10  ) {
    
    document.getElementById("Txt4").innerHTML = text;

 }
 if(Age < 18 ) {
    
    document.getElementById("Txt5").innerHTML = text;

 }
 if( address.length < 5   ) {
    
    document.getElementById("Txt7").innerHTML = text;

 }
  if( City.length < 5 ) {
    
    document.getElementById("Txt8").innerHTML = text;

 }
 
    
 if( Province.length < 5   ) {
    
    document.getElementById("Txt9").innerHTML = text;

 }

 
 if( Postal.length < 5  ) {
    
    document.getElementById("Txt10").innerHTML = text;

 }
 
  

 
  if( ps.length < 5  ) {
    
    document.getElementById("Txt11").innerHTML = text;

 }
 

 


 
 
     return false;
 
 }

 
 else {

    return true;
 }

}

 


function CharacterInput(e){
    var keyCode = (e.keyCode ? e.keyCode : e.which);
    if ( keyCode < 48 || keyCode > 57 ){
        e.preventDefault();
    }
}



function preventNumberInput (e){
    var keyCode = (e.keyCode ? e.keyCode : e.which);
    if (keyCode > 8 && keyCode < 65  || keyCode > 90 && keyCode < 97  || keyCode > 122){
        e.preventDefault();
    }
}


function EmailValidation(e) {
    var keyCode = (e.keyCode ? e.keyCode : e.which);
    if (  keyCode > 8 && keyCode < 48    || keyCode > 57 && keyCode < 64  || keyCode > 90 && keyCode < 97  || keyCode > 122){
        e.preventDefault();
    }
}

$(document).ready(function(){
    $('#Fname').keypress(function(e) {
        preventNumberInput(e);
    });
    
       $('#Lname').keypress(function(e) {
        preventNumberInput(e);
    });
    
      $('#City').keypress(function(e) {
        preventNumberInput(e);
    });
    
      $('#Email').keypress(function(e) {
       EmailValidation(e);
    });
    
    
       $('#Province').keypress(function(e) {
        preventNumberInput(e);
    });
    
   
        $('#pNumber').keypress(function(e) {
        CharacterInput(e);
    });
    
    
        $('#Postal').keypress(function(e) {
        CharacterInput(e);
    });
    
          $('#Age').keypress(function(e) {
        CharacterInput(e);
    });
    
    
    
    
})