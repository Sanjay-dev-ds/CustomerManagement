<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cm.controller.*"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>Vokot login</title>

    <!-- Bootstrap core CSS -->
    
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/CmStyle.css">
  


  </head>

<body>
  <%
session.setMaxInactiveInterval(2);
%>


  
 <script type="text/javascript">
var Msg ='<%=session.getAttribute("Alert")%>';
    if (Msg != "null") {
 function alertName(){

 swal("Check your credentials ");
 } 
 }
 </script> 

<script type="text/javascript"> window.onload = alertName; </script>


<div class="container fluid container1">

  <div class="login">

<h1 style="margin-left: 40px;"><b>WELCOME!</b></h1><br>
<img width="350px" height="150px"  src="assets/images/bg2.png">
<form class="form" onsubmit="return(LoginValidate())" name="Login" method="POST" action="${pageContext.request.contextPath}/LoginServlet" >
<label for="name">Username :</label>
<br>
<input id="Uname" name="Uname" type="text"><br>
<label style="color:red; " id="Txt2"></label>
<br><br>
<label for="password">password :</label>
<br>
<input id="Password" name="Password" type="password">


<span onclick="HidePw()"   ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
  <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
</svg></span>

<script type="text/javascript">
function HidePw() {
	  var x = document.getElementById("Password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}



</script>
<br>

<label style="color:red; " id="Txt1"></label>
<br><br>
<button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal">Forgot password ?</button>
<br>
<button value="LoginServlet"  type="submit" class="button1">SIGN IN</button>
<button  type="button"  class="button2" id="Create" >CREATE ACCOUNT</button> 

</form>
  </div>
  </div>




<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title"><b>Forgot password?</b></h3>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
        <p> 
          <label>send a request to change your password</label>
          <form  onsubmit="return(check())" name="forgot" action="${pageContext.request.contextPath}/PwServlet"   method="post"  >
          <label for="name">Username :</label>
          <br>
          <input name="Uname"  type="text"><span style = "color:red;"id=Txt3></span>
          <br><br>
          <label for="password"> new password :</label>
          <br>
          <input name="Password" type="password"><span style = "color:red;"id=Txt4></span>
          <br> 
          
          <script type="text/javascript">
          
          function check() {
        

        	  var Uname = document.forgot.Uname.value;
        	  var ps = document.forgot.Password.value;
        	  

        	  let text = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-shield-fill-exclamation' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M8 0c-.69 0-1.843.265-2.928.56-1.11.3-2.229.655-2.887.87a1.54 1.54 0 0 0-1.044 1.262c-.596 4.477.787 7.795 2.465 9.99a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.775 11.775 0 0 0 2.517-2.453c1.678-2.195 3.061-5.513 2.465-9.99a1.541 1.541 0 0 0-1.044-1.263 62.467 62.467 0 0 0-2.887-.87C9.843.266 8.69 0 8 0zm-.55 8.502L7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0zM8.002 12a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>";

        	  if(Uname.length < 5 || ps.length < 5 ){
        		  
        		  if(Uname.length < 5){
        			  
        			  
            		  document.getElementById("Txt3").innerHTML = text;
        		  }
        		  
                         if(ps.length < 5){
        			  
        			  
            		  document.getElementById("Txt4").innerHTML = text;
        		  }
        		  
        		
        		  
        		  return false;
        	  }
        	  
        	  
        	  else {
        		  
        		  
        		  return true;
        	  }
        	  
        	  
          }
          
          
          
          
          
          
          </script>
        

     
    
      
        <button type="submit" value="PwServlet" class="button1" >Send request <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
          <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
        </svg></button>
       
      </form>
      </div>
    </div>
    
  </div>
</div>





















    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="assets/js/CmJs.js"></script>
    <script src="assets/js/CmJs3.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   


   

  </body>
</html>