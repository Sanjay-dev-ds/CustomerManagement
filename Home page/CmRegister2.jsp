
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cm.controller.*"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>Vokot Register</title>

    <!-- Bootstrap core CSS -->
    
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/CmStyle2.css">
  


  </head>

<body>
  


<div class="container fluid container2">
<div  class="head"ss="">
    <h1 ><b>Sign Up</b></h1><small><label>Existing User ?</label><a href="CmLogin.html">Sign up</a></small>
    <br>
    <img style="margin-left: -20px;"src="assets/images/reg2.png">
</div>
    
<div class="Register"> 


<form  enctype = "multipart/form-data" action="${pageContext.request.contextPath}/AddCustomerServlet2"  class="form" method="post">
<h4   style="margin-left: 50px; margin-bottom:50px;" name=profile for="Fname">Profile picture:</h4>
<img  id="pic" style="margin-left: 50px;" width="200px" height="200px" src="" alt="Your image" >
<span id="buttonHide"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
  </svg></span>
<br>

<input id="in" onchange="PreviewImage(this)" style="margin-left: 250px; margin-bottom: 50px;" name="profile" accept="image/*" type="file" >  

<br>
<label style="margin-left: 50px;" for="Uname">User name :</label>
<input name="Uname" required type="text">


<br>
<button value="AddCustomer2Servlet" type="submit" style="margin-right:50px; width: 100px;" class="button2" >FINISH</button> 

</form>


  </div>
  


</div>



    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/CmJs.js"></script>
   


   

  </body>
</html>