
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
    <h1 ><b>Sign Up</b></h1><small><label>Existing User ?</label><a href="CmLogin.jsp">Sign In</a></small>
    <br>
    <img style="margin-left: -30px;"src="assets/images/reg1.png">
    &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="DemoReg()" class="btn btn-danger"> DEMO </button>
</div>
    
<div class="Register">


<form class="form" method="post" name="Register" id="Register"  onsubmit="return(RegisterValidatecheck())" action="${pageContext.request.contextPath}/AddCustomerServlet">
<label for="Fname">First name :</label>



<input  onkeydown="preventNumberInput(event)" onkeyup="preventNumberInput(event)" id="Fname" name="Fname"  type="text">
<span style = "color:red;"id=Txt1></span>


<label for="Lname">Last name :</label>

<input onkeydown="preventNumberInput(event)" onkeyup="preventNumberInput(event)" id="Lname" name="Lname"  type="text">
<span style = "color:red;"id=Txt2></span>
<br>

<label for="Email">Email :</label>

<input id="Email"  name="Email" type="email">
<span style = "color:red;"id=Txt3></span>


<br>
<label for="Gender">Gender :</label>
<select id="Gender" name="Gender" style="width:100px; height:27px;" name="gender" class="gender" >
<option  value="-1" ></option>
  <option value="1">Male</option>
  <option value="2">Female</option>
    <option value="3">Other</option>
</select>
<span style = "color:red;"id=Txt4></span>

<label   for="pNumber">Phone :</label>

<input id="pNumber" style="width:150px;"  name="pNumber"  type="text">
<span style = "color:red;"id=Txt5></span>

<label for="age">Age :</label>

<input id="Age"  style="width:70px;" max="80" min="10" name="Age" type="number">
<span style = "color:red;"id=Txt6></span>
<br>
<label for="address">address :</label>

<input id="Address"  name="address" style="width:500px;"type="text">
<span style = "color:red;"id=Txt7></span>
<br>
<label for="City">City :</label>

<input id="City"   name="City" style="width:130px;"type="text">
<span style = "color:red;"id=Txt8></span>

<label for="Province">Province :</label>

<input id="Province"  name="Province" style="width:100px;"type="text">
<span style = "color:red;"id=Txt9></span>

<label for="Postal">Postal Code :</label>

<input    id="Postal"  name="Postal" style="width:100px;"type="text">
<span style = "color:red;"id=Txt10></span>


<br>
<label for="ps">Password :</label>
<script type="text/javascript">
function HidePw() {
	  var x = document.getElementById("ps");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}



</script>

<input id="ps"name="ps"  type="password">
<input onclick="HidePw()" type="checkbox">
<span style = "color:red;"id=Txt11></span>

<span style = "color:red;"id=Txt13></span>

<br>
<label for="Cps">Confirm password :</label>

<input id="cps"  name="Cps" type="password">
<span style = "color:red;"id=Txt12></span>
<span style = "color:red;"id=Txt14></span>

<br>
<button type="submit" class="button2"  value="AddCustomerServlet"   >CREATE ACCOUNT</button> 

</form>


  </div>
  


</div>
























    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <script src="assets/js/custom.js"></script>
+
        <script src="assets/js/CmJs101.js"></script>
     
     
   


   

  </body>
</html>