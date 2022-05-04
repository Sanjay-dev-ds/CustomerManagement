

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@page import="cm.util.*"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <title>Vokot Feedback</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/CmStyle3.css">
    <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<!-- Latest compiled and minified JavaScript -->














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
              <li class="nav-item ">
                <a class="nav-link" href="index.jsp">Home
           
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
              <li class="nav-item active">
                <a class="nav-link" href="CmFeedback.jsp">Feedback
                <span class="sr-only">(current)</span>
                </a>
                
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact Us</a>
              </li>
              <li class="nav-item">
               
              </li>
                      
          </div>
          
        </div>
        
        <img src="assets/images/profile.png" style="height: 50px;width: 50px; margin-right:  20px;"><a class="btn btn-warning" href="CmLogin.jsp" style="color:black;margin-right: 30px;font-weight: 500;">Logout</a>
      </nav>
    </header>
<br><br><br><br><br>
      &nbsp;&nbsp;&nbsp;&nbsp;   <button onclick="DemoReg()" class="btn btn-danger"> DEMO </button>
    
    <!-- Page Content -->
    
<div class="container fluid container3">
    <div  class="head">
       
    
    </div>
        
  
        
    
    
    <form name = "AddFeedback"  onsubmit="return(Addfeedback())" class="form" method="POST"  action="${pageContext.request.contextPath}/AddFeedbackServlet"  >
    
    <label style="width: 300px;" for="Fname">Select your product category:</label>
    <select name="Product" style="width: 100px;">
    <option  value="-1"> </option>
 

  <%

    try {
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
    	String query = "SELECT DISTINCT name FROM productp";
    	 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
    
    <option value="<%=resultSet.getString("name") %>"> <%=resultSet.getString("name") %> </option>
   
     
    
    
    
      <%
              }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
          
                    %>
                      </select>
                  
    <span style = "color:red;"id=Txt1></span>
    <label  style="width: 500px;">Rate our service</label>
    
    
    

     <div class="rateyo" id= "rating"
         data-rateyo-rating="4"
         data-rateyo-num-stars="5"
         data-rateyo-score="3">
         </div>
 
    <span style="margin-left:200dp" class='result'></span>
    <input type="hidden" name="rating">
    <br>
    <label style="width: 500px;" for="Fname">Select your feedback category:</label><br>
    
<div class="container">
   
      <div class="form-check-inline">
      
      
        <label class="form-check-label" for="check1">
          <input type="radio" class="form-check-input" id="check1" value="Suggestion" name="optradio" checked>Suggestion
        </label>
      </div>
      <div class="form-check-inline">
        <label  class="form-check-label" for="check2">
          <input style="margin-left: -20px;"  type="radio" value="Compliment"   name="optradio" class="form-check-input" id="check2" >Compliment
        </label>
      </div>
      <div class="form-check-inline">
        <label class="form-check-label">
          <input style="margin-left: -20px;" type="radio" value="Our service"  name="optradio" class="form-check-input" >Our service
        </label>
      </div>
      
  </div>
    <br>

    <label style="width: 500px;" for="Feedback">Please leave your feedback below :</label>
     <span style = "color:red;"id=Txt2></span><br>
<textarea name="Feedback"  id="Feedback"    ></textarea>
    
    <br>
    
    <button style="margin-left: 600px;"type="submit" class="button2" >SEND</button> 
    
    
    
    
    </form>
    
    
    
    
    
    
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
     <script src="assets/js/CmJs5.js"></script>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

   

  </body>
</html>