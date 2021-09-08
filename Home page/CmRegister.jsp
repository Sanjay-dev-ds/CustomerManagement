
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
    <img style="margin-left: -30px;"src="assets/images/reg1.png">
</div>
    
<div class="Register">


<form class="form" method="post"  action="${pageContext.request.contextPath}/AddCustomerServlet">
<label for="Fname">First name :</label>

<input name="Fname" required type="text">

<label for="Lname">Last name :</label>

<input name="Lname"  type="text">
<br>
<label for="Email">Email :</label>

<input  name="Email" type="email">



<br>
<label for="Email">Gender :</label>
<select name="Gender" style="width:100px; height:27px;" name="gender" class="gender" >
<option ></option>
  <option value="1">Male</option>
  <option value="2">Female</option>
    <option value="3">Other</option>
</select>

<label for="pNumber">Phone :</label>

<input style="width:150px;"  name="pNumber"  type="text">

<label for="age">Age :</label>

<input style="width:70px;" max="80" min="10" name="Age" type="number">
<br>
<label for="address">address :</label>

<input  name="address" style="width:500px;"type="text">
<br>
<label for="City">City :</label>

<input  name="City" style="width:130px;"type="text">

<label for="Province">Province :</label>

<input  name="Province" style="width:100px;"type="text">

<label for="Postal">Postal Code :</label>

<input  name="Postal" style="width:100px;"type="text">


<br>
<label for="ps">Password :</label>

<input name="ps"  type="password">

<br>
<label for="Cps">Confirm password :</label>

<input  type="password">

<br>
<button type="submit" class="button2"  value="AddCustomerServlet"   >CREATE ACCOUNT</button> 

</form>


  </div>
  


</div>
























    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
   


   

  </body>
</html>