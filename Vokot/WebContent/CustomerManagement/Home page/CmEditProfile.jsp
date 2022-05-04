<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cm.controller.*"%>
    <%@page import="cm.util.*"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <title>Vokot Edit profile</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/CmStyle3.css">
    <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
  
<!--





-->
<style>
  .container1{
    width: 400px;
    height: 300px;
    margin-left: 20px;
  }
  .navCol1{
    color: aliceblue;
  }

  a:link {
  color: white;
  background-color: transparent;
  text-decoration: none;
}


</style>

  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.html"><h2>VOKOT<em>.</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
             <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="about.html">Bussiness</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="blog.html">Vacancies</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="post-details.html">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="CmFeedback.jsp">Feedback</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact Us</a>
              </li>
              <li class="nav-item">
               
              </li>
           
            </ul>
           
          </div>
          
        </div>
        
        <img src="assets/images/profile.png" style="height: 50px;width: 50px; margin-right:  20px;"><a class="btn btn-warning" href="CmLogin.jsp" style="color:black;margin-right: 30px;font-weight: 500;">Logout</a>
      </nav>
    </header>
<br><br><br><br><br>
    
    <!-- Page Content -->
     <%

    try {
    	String Id = (String) session.getAttribute("Uname");
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
    	String query = "SELECT Email,Image,Firstname,Username,Lastname,Address,province,city,postalcode,Age,Gender,Phone FROM customers where Username='"+Id+"'";
    	 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
    
<div class="container fluid container2">
    <div  class="head">
       <h3><b>HELLO,</b></h3><small style=" margin-left: 100px;" ><%=resultSet.getString("Username") %></small>
        <br>
  
    </div>
        
    <div class="Register">
    
    
    <form name="Register" onsubmit="return(RegisterValidatecheck())" enctype = "multipart/form-data" class="form" method="POST" action="${pageContext.request.contextPath}/UpdateCustomer" >
    <h4   style="margin-left: 50px; margin-bottom:50px;" name=profile for="Fname">Profile picture:<span class="delete2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
</svg></span></h4>
    <img  id="pic" style="margin-left: 50px;" width="100px" height="100px" src="assets/images/<%=resultSet.getString("Image") %>" alt="Your image" >
    <span id="buttonHide"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
        <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
      </svg></span>
    <br>
    
     <%
     String Image=resultSet.getString("Image");
    
		    session.setAttribute("Image", Image);
		    
		    %>
    
    <input id="in" value=""  required onchange="PreviewImage(this)" style="margin-left: 250px; margin-bottom: 50px;" name="profile" accept="image/*" type="hidden" >  
    
    <br>

    <label for="Fname">First name :</label>

    <input id="Fname" name="Fname" value="<%=resultSet.getString("Firstname") %>" required type="text"><span style = "color:red;"id=Txt1></span>
    
    <label for="Lname">Last name :</label>
    
    <input id="Lname" name="Lname"  value="<%=resultSet.getString("Lastname") %>"  type="text"><span style = "color:red;"id=Txt2></span>
    <br>
    <label for="Email">Email :</label>
    
    <input  id="Email" name="Email"  value="<%=resultSet.getString("Email") %>" type="email"><span style = "color:red;"id=Txt3></span>
    <br>
    <label for="pNumber">Phone :</label>
    
    <input id="pNumber"  name="pNumber" value="<%=resultSet.getString("Phone") %>"  type="text"><span style = "color:red;"id=Txt4></span>
    
       <label for="Age">Age :</label>
    
    <input type="Number" max=80 id="Age"  name="Age"  value="<%=resultSet.getString("Age") %>"  style="width:70px;  type="text"><span style = "color:red;"id=Txt5></span>
       <label  for="gen">Gender:</label>
    <select name="Gender" style="width:100px; height:27px;"  value="<%=resultSet.getString("Gender") %>" name="gender" class="gender" ><span style = "color:red;"id=Txt6></span>
  <option value="Male">Male</option>
  <option value="Female">Female</option>
    <option value="Other">Other</option>
</select>
    
    <br>
    <label for="address">address :</label>
    
    <input name="address"  value="<%=resultSet.getString("Address") %>"  name="address" style="width:500px;"type="text"><span style = "color:red;"id=Txt7></span>
    <br>
    <label for="City">City :</label>
    
    <input  id="City" name="City" value="<%=resultSet.getString("city") %>"  name="City" style="width:130px;"type="text"><span style = "color:red;"id=Txt8></span>
    
    <label for="Province">Province :</label>
    
    <input id="Province"  name="Province"  value="<%=resultSet.getString("province") %>"  name="Province" style="width:100px;"type="text"><span style = "color:red;"id=Txt9></span>
    
    <label for="Postal">Postal Code :</label>
    
    <input id="Postal"  name="Postal" value="<%=resultSet.getString("postalcode") %>"   name="Postal" style="width:100px;"type="text">    <span style = "color:red;"id=Txt10></span>
    
    <br>
    <button type="submit" class="button1">SAVE</button>
    <button type="button"  data-toggle="modal" data-target="#myModal" class="button2" >RESET PASSWORD</button> 
    
    
    </form>
    
    
      </div>
      
    
    
    </div>








    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h3 class="modal-title"><b>Reset password</b></h3>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              
            </div>
            <div class="modal-body">
            <button onclick="DemoReg2()" class="btn btn-danger"> DEMO </button>
              <p> 
                
                <form class=""  name=check onsubmit="return(forgotps())" method="POST" action="${pageContext.request.contextPath}/PwChangeServlet">
                <label style="width: 100px;"for="name">new password :</label>
                
                <input id="Password" name="Ps" type="password"> <span style = "color:red;"id=Txt100></span>
                
               <span onclick="HidePw()"   ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
  <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
</svg></span>

                <br>
                 <span style = "color:red;"id=Txt102></span>
                <br>
                <label style="width: 100px;" for="password"> confirm password :</label>
               
                <input id="CPassword" name="Cps" type="password"> <span style = "color:red;"id=Txt101></span>
                <br> 
                
                <input class="username" type="hidden" name="Uname" value="<%=resultSet.getString("Username") %>">
                <br>
              <button type="submit"  class="button1" >Change <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
              </svg></button>
              
            </form>
             
            </div>
            <div class="modal-footer">
            
             
            </div>
          </div>
          
        </div>
      </div>
      
       <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
    






















 
    <footer>
      <div class="container-flued">
        <div class="row">
          <div class="col-lg-3 social-icons">
            <h1 style="color: aliceblue; font-weight: 600;" >VOKOT </h1><small style="color: aliceblue;">Garments</small>
          </div>
          <div class="col-lg-3 social-icons">
            <h2 style="color: aliceblue;text-align: left;">Buissness </h2>
          <Ul class="navCol1" style="text-align: left;">
            <li><a href="#">Custamize order</a></li>
              <li><a href="#">Mens</a></li>
              <li><a href="#">Women</a></li>
             
          </Ul>
          </div>
          <div class="col-lg-3" >
            <h2 style="color: aliceblue;text-align: left;">Contact</h2>
            <ul class="navCol1" style="text-align: left;">
              <li><a href="#">Feedback</a></li>
              <li><a href="#">FindUS</a></li>
              
            </ul>
          </div>
          <div class="col-lg-3">
            
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.059107270847!2d79.85985501477273!3d6.883523295025878!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bc5b8555555%3A0xa291a7080d720a68!2sHindu%20College%20Colombo!5e0!3m2!1sen!2slk!4v1629387270457!5m2!1sen!2slk" width="200" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            
            
          </div>
          <div class="col-lg-12">
            <div class="copyright-text">
              <p>Copyright 2022 Vokot Garments PVT(LTD)</p>
                    
               
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/CmJs.js"></script>
    <script src="assets/js/CmJs6.js"></script>
   

<script type="text/javascript">

function HidePw() {
	  var x = document.getElementById("Password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

function forgotps() {
  var Ps = document.check.Ps.value;
  var Cps = document.check.Cps.value;
  let text2 ="Password not matching";
  let text = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-shield-fill-exclamation' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M8 0c-.69 0-1.843.265-2.928.56-1.11.3-2.229.655-2.887.87a1.54 1.54 0 0 0-1.044 1.262c-.596 4.477.787 7.795 2.465 9.99a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.775 11.775 0 0 0 2.517-2.453c1.678-2.195 3.061-5.513 2.465-9.99a1.541 1.541 0 0 0-1.044-1.263 62.467 62.467 0 0 0-2.887-.87C9.843.266 8.69 0 8 0zm-.55 8.502L7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0zM8.002 12a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>";
  
  
  if (Ps.length < 5 || Cps.length<5 || Ps != Cps){
  
  if(Ps.length < 5 )
     document.getElementById("Txt100").innerHTML = text;
     
     
  if(Cps.length < 5 )
     document.getElementById("Txt101").innerHTML = text;
     
     
  if(Ps != Cps)
     document.getElementById("Txt102").innerHTML = text2;
     
     
     return false;
  }
  
  else {
  
  return true;
  
  
 }
  
 
   
  


}



</script>


<script type="text/javascript">

function DemoReg2() {
	 
  	document.getElementById("Password").value ="SanjayViva";
  	document.getElementById("CPassword").value ="SanjayViva";
  } 
</script>

   

  </body>
</html>