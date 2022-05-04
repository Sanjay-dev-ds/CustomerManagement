
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
  
    <title>Vokot Profile</title>

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
  <%

    try {
    	String Id = (String) session.getAttribute("Uname");
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
    	String query = "SELECT Email,Image,Firstname,Username,Lastname,Address,province,city,postalcode,Age,Gender,Phone FROM customers where Username='"+Id+"'";
    	 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>

    
    <!-- Page Content -->
    
<div  class="container fluid container3">
    <div  class="head">
        <h3><b>HELLO,</b></h3><small style=" margin-left: 100px;" ><%=resultSet.getString("Username") %></small>
     
  
    </div>
        
    <div class="Register">
  
    
    <form class="form" method="POST">
    <h4   style="margin-left: 50px; margin-bottom:20px;" name=profile for="Fname">Profile picture:</h4>
    <img src="assets/images/<%=resultSet.getString("Image") %>"  id="pic" src="<%=resultSet.getString("Image") %>" style="margin-left: 50px;" width="100px" height="100px" src="" alt="Your image" >
    <span id="buttonHide"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
        <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
      </svg></span>
    <br>

 
  
    <br>

    <label for="Fname">First name :</label>

    <input disabled value="<%=resultSet.getString("Firstname") %>" required type="text">
    
    <label for="Lname">Last name :</label>
    
    <input  disabled value="<%=resultSet.getString("Lastname") %>"  type="text">
    <br>
    <label for="Email">Email :</label>
    
    <input  disabled value="<%=resultSet.getString("Email") %>" type="email">
    <br>
    <label for="pNumber">Phone :</label>
    
    <input  disabled value="<%=resultSet.getString("Phone") %>"  type="text">
    
       <label for="pNumber">Age :</label>
    
    <input  disabled value="<%=resultSet.getString("Age") %>"  style="width:70px;  type="text">
       <label  for="gen">Gender:</label>
    
    <input  disabled value="<%=resultSet.getString("Gender") %>"  style="width:100px; type="text">
    <br>
    <label for="address">address :</label>
    
    <input  disabled value="<%=resultSet.getString("Address") %>"  name="address" style="width:500px;"type="text">
    <br>
    <label for="City">City :</label>
    
    <input  disabled value="<%=resultSet.getString("city") %>"  name="City" style="width:130px;"type="text">
    
    <label for="Province">Province :</label>
    
    <input  disabled value="<%=resultSet.getString("province") %>"  name="Province" style="width:100px;"type="text">
    
    <label for="Postal">Postal Code :</label>
    
    <input  disabled value="<%=resultSet.getString("postalcode") %>"   name="Postal" style="width:100px;"type="text">   
    
    <br>
    
    <button style=" margin-left: 650px;"type="button" id="EditProf" class="button2" >EDIT</button> 
    
    
    </form>
    
        <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
    
    
      </div>
      
    
    
    </div>





















 
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
   


   

  </body>
</html>