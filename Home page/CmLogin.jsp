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
  


<div class="container fluid container1">

  <div class="login">

<h1 style="margin-left: 40px;"><b>WELCOME!</b></h1><br>
<img width="350px" height="150px"  src="assets/images/bg2.png">
<form class="form" method="POST" action="${pageContext.request.contextPath}/LoginServlet" >
<label for="name">Username :</label>
<br>
<input name="Uname" type="text">
<br><br>
<label for="password">password :</label>
<br>
<input name="Password" type="password">
<br><br>
<button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal">Forgot password ?</button>
<br>
<button value="LoginServlet" type="submit" class="button1">SIGN IN</button>
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
          <form action="${pageContext.request.contextPath}/PwServlet"   method="post"  >
          <label for="name">Username :</label>
          <br>
          <input name="Uname"  type="text">
          <br><br>
          <label for="password"> new password :</label>
          <br>
          <input name="Password" type="password">
          <br> 
        

     
    
      
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
    <script src="assets/js/CmJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   


   

  </body>
</html>