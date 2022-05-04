<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cm.controller.*"%>
    <%@page import="cm.util.*"%>
    <%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Dashboard</title>

    <!-- bootstrap  css files-->
    <link rel="stylesheet" href="../css/bootstrap/bootstrap-5.1.0-dist/css/bootstrap.min.css
	">
    <link rel="stylesheet" href="../js/DataTables/DataTables-1.10.25/css/dataTables.bootstrap5.min.css">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="../iconSet/bootstrapIcons/icons-1.5.0/font/bootstrap-icons.css">

    <!-- custom styles -->
    <link rel="stylesheet" type="text/css" href="../css/styles/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">

<style>

.checked {
  color: orange;
}
</style>



</head>

<body>
    <div id="wrapper">
        <div class="overlay"></div>
        <!-- side navbar start-->
        <nav class="fixed-top align-top" id="sidebar-wrapper" role="navigation">
            <div class="simplebar-content" style="padding: 0px;">
                <a class="sidebar-brand" href="#">
                    <span class="align-middle brand-name">VOKOT</span>
                </a>

                <ul class="navbar-nav align-self-stretch sidenav-link">
                    <li>
                        <div class="border-right">
                            <div class="d-flex flex-column align-items-center text-center user-profile">
                                <img class="user-image rounded-circle mt-3" src="../images/profile/avatar1.jpg">
                                <span class="fw-bold mt-3">Amarasekara Podimalli</span><br />
                                <span class="mt-1">Chief Executive Officer</span>
                            </div>
                        </div>
                    </li>

                    <li class="mt-1">&nbsp;</li>

                    <li class="sidebar-header">Dashboard</li>

                    <li>
                        <a href="CmAdmin.jsp" class="nav-link text-left active" role="button">
                            <i class="bi bi-pie-chart-fill"></i>Analytics Dashboard
                        </a>
                    </li>

                  
                    <li class="sidebar-header">Manage customers</li>

                    <li class="has-sub">
                        <a class="nav-link collapsed text-left" data-bs-toggle="collapse" href="#collapseFunction1"
                            role="button" aria-expanded="false" aria-controls="collapseFunction1">
                            <i class="bi bi-gear-fill"></i>Manage customers
                            <span class="chevron-icon ms-auto"><i class="bi bi-chevron-down"></i></span>
                        </a>
                        <div class="collapse menu mega-dropdown" id="collapseFunction1">
                            <div class="dropdown" aria-labelledby="navbarDropdown">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 px-2">
                                            <div class="submenu-box">
                                                <ul class="navbar-nav m-0">
                                                     <li><a class="nav-link" href="CmAdmin2.jsp"><i
                                                            class="bi bi-pie-chart-fill"></i>&nbsp;Search customers
                                                    </a></li>
                                                <li><a class="nav-link" href="CmAdmin3.jsp"><i
                                                            class="bi bi-speedometer">&nbsp;</i>View all customer</a>
                                                </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="sidebar-header">Manage feedback</li>

                    <li>
                        <a class="nav-link text-left" href="CmAdmin4.jsp" role="button">
                            <i class="bi bi-gear-fill"></i>View Feedbacks
                        </a>
                    </li>

                  

                    <li class="sidebar-header">Manage password request</li>

                    <li>
                        <a class="nav-link text-left" href="CmAdmin5.jsp"  role="button">
                            <i class="bi bi-gear-fill"></i>view request
                        </a>
                    </li>

          
                </ul>
            </div>
            <div class="d-flex justify-content-center mt-4 mb-4">
                <button class="btn btn-danger" onclick="location.href = '${pageContext.request.contextPath}/CustomerManagement/Home page/CmLogin.jsp';" type="button"><i class="bi bi-box-arrow-right"></i>&nbsp; Logout</button>
            </div>

            
        </nav>
        
        
        <!-- side navbar end-->

        <!-- main content-start -->
        <div id="page-content-wrapper">
            <div id="content">
                <div class="container-fluid p-0 px-lg-0 px-md-0 ">
                    <!-- top navbar start-->
                    <nav class="navbar navbar-expand navbar-light my-navbar d-md-flex justify-content-between">
                        <!-- toggle button-->
                        <div type="button" id="bar" class="nav-toggle hamburger animated fadeInLeft is-closed"
                            data-toggle="offcanvas">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>


                        <div class="ml-auto">
                            <a class="nav-link " href="#">
                                <span class="fw-bold text-uppercase brand-name">VOKOT</span>
                            </a>
                        </div>

                        <div class="d-md-flex align-items-center ml-auto" style="margin-right: 2px;">
                            <!-- top search bar -->
                            <form class="d-none d-sm-inline-block form-inline navbar-search">
                                <div class="input-group">
                                  
                                    </div>
                                </div>
                            </form>
                            <div>&nbsp; &nbsp; &nbsp;</div>
                        </div>
                    </nav>
                    <!-- top navbar end -->

                    <!-- page content start -->
                    <div class="container-fluid px-lg-4">
                        <div class="row">
                            <div class="col-md-12 mt-lg-4 mt-4">
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                    <h1 class="h3 mb-0 text-gray-800">Analytics Dashboard</h1>
                                   
                                       &nbsp;
                                          <button type="button" class="btn btn-circle btn-info" data-bs-toggle="modal" data-bs-target="#myModal" > Generate Report &nbsp;&nbsp; <i class="bi bi-clipboard-data"></i></button>
                                    
                                </div>
                            </div>
                            
          

                            <!-- summary cards start -->
                            <div class="col-md-12">
                                <div class="row">
                                    <!-- card 1 -->
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title mb-4">Total Customers</h5>
                                                                                                                              
                   <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  customers";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <h1 class="display-5  mt-1 mb-3"><%=resultSet.getInt("total") %></h1>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                            
                          
                                            </div>
                                        </div>
                                    </div>
                                    
                          
                                    


                                    <!-- card 2 -->
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title mb-4">Total feedbacks</h5>
                                                         <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <h1 class="display-5  mt-1 mb-3"><%=resultSet.getInt("total") %></h1>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- card 3 -->
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title mb-4">Password requests</h5>
                                                <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  passwordreq";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <h1 class="display-5  mt-1 mb-3"><%=resultSet.getInt("total") %></h1>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- summary cards end -->

                            <!-- chart cards start -->
                            <div class="col-md-12 mt-4">
                                <div class="row">
                                    <!-- chart 1 -->
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                            
                                                <div id="piechart" style="width: 350px; height: 400px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                                                         <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  customers where city LIKE 'Colombo' ";
    
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	    	
    	    	
    	%>
    	
    	<input hidden id="myText" value="<%=resultSet.getInt("total") %>">
               
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                              <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total2 FROM  customers where city LIKE 'Jaffna' ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText2" value="<%=resultSet.getInt("total2") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total3 FROM  customers where city LIKE 'Batticalo' ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText3" value="<%=resultSet.getInt("total3") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                     
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total4 FROM  customers where Gender LIKE 'Male' ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText4" value="<%=resultSet.getInt("total4") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                    
                          
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total5 FROM  customers where Gender LIKE 'Female' ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText5" value="<%=resultSet.getInt("total5") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                    
                                <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total6 FROM  customers where Gender LIKE 'Female' and Age <= 18  ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText6" value="<%=resultSet.getInt("total6") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total7 FROM  customers where Gender LIKE 'Male' and Age <= 18  ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText7" value="<%=resultSet.getInt("total7") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                    
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total8 FROM  customers where Gender LIKE 'Female' and Age > 18 and Age <30  ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText8" value="<%=resultSet.getInt("total8") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                   <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total9 FROM  customers where Gender LIKE 'Male' and Age > 18 and Age <30  ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText9" value="<%=resultSet.getInt("total9") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                    
                                   
                     <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total10 FROM  customers where Gender LIKE 'Female' and Age >= 30  ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText10" value="<%=resultSet.getInt("total10") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                   <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement();  
    	 String query = "SELECT COUNT(*) AS total11 FROM  customers where Gender LIKE 'Male' and Age >= 30   ";
 ResultSet resultSet = st.executeQuery(query);

    	   while (resultSet.next()) {  	
    	%>
    	
    	
             <input hidden id="myText11" value="<%=resultSet.getInt("total11") %>">                               
                     
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                            

                                    <!-- chart 2 -->
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div id="piechart2" style="width: 350px; height: 400px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="table" style="width: 400px; height: 385px;">
                                                    <h3>Customer ratings</h3>
                                                    <table class="table">
                                                        <tr>
                                                        <th>Rating</th>
                                                        <th>Total No</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <div><span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked "></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span></div></td>
                                                         <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback where Rating <=  5 and Rating > 4 ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <td><%=resultSet.getInt("total") %></td>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                                    </tr>
                                                    <tr>
                                                        <td> <div><span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked "></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star "></span></div></td>
                                                                          <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback where Rating <=  4 and Rating > 3";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <td><%=resultSet.getInt("total") %></td>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                                    </tr>
                                                    <tr>
                                                        <td> <div><span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked "></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star "></span>
                                                            <span class="fa fa-star "></span></div></td>
                                                                           <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback where Rating <=  3 and Rating > 2";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <td><%=resultSet.getInt("total") %></td>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                                    </tr>
                                                    <tr>
                                                        <td> <div><span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked "></span>
                                                            <span class="fa fa-star "></span>
                                                            <span class="fa fa-star "></span>
                                                            <span class="fa fa-star "></span></div></td>
                                                                        <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback where Rating <=  2 and Rating > 1";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                          
                                                <td><%=resultSet.getInt("total") %></td>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                                    </tr>
                                                    <tr>
                                                        <td> <div><span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star  "></span>
                                                            <span class="fa fa-star "></span>
                                                            <span class="fa fa-star "></span>
                                                            <span class="fa fa-star "></span></div></td>
                                                                        <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
    	 String query = "SELECT COUNT(*) AS total FROM  feedback where Rating <=  1 and Rating > 0 ";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                         
                                                <td> <%=resultSet.getInt("total") %></td>
       						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                                                    </tr>
                                                    </table>
                                                    
                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-12 mt-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div id="chart_div" style="width: 1000px; height: 400px;"></div>
                                    </div>

                                </div>
                            </div>
                            <!-- chart cards end -->

                          
                        </div>
                    </div>
                    <!-- page content end -->
                </div>
                <!-- footer start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row text-muted">
                            <div class="col-6 text-left">
                                <p class="mb-0">
                                    <a class="text-muted">
                                        <strong class="text-uppercase">ITP21_S2_MT_11 &copy;</strong>
                                    </a>
                                </p>
                            </div>
                            <div class="col-6 text-right">
                                <ul class="list-inline">
                                    <li class="footer-item">
                                        <a class="text-muted">
                                            Home
                                        </a>
                                    </li>

                                    <li class="footer-item">
                                        <a class="text-muted">
                                            About Us
                                        </a>
                                    </li>

                                    <li class="footer-item">
                                        <a class="text-muted">
                                            Login
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- footer start -->
            </div>
        </div>
        <!-- main content-end -->
    </div>
    
    
    <div class="modal" id="myModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Report generation</h5>
        <button
          type="button"
          class="btn-close"
          data-bs-dismiss="modal"
          aria-label="Close"
        ></button>
      </div>
      <div class="modal-body">
      
      <form method="POST" action="${pageContext.request.contextPath}/Report"  >
<label> Enter Report name :</label>
<input required style=" border-color: black; border-radius: 5px;" name="Report" type="text" >
<br><br><br>
<label> Select Report category :</label>
   <select required name="Type" style="width: 180px;  height:30px;  border-color: black; border-radius: 5px;">
      <option  value="Customer"> Customer Report</option>
        <option  value="Feedback">Feedback Report </option>
    
    </select>
 

<br>
<br>
<br>
<button type="Submit" class="btn btn-blue" >Print</button>





</form>
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>

    <!-- Bootstrap js files-->
    <script src="../css/bootstrap/bootstrap-5.1.0-dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery file -->
    <script src="../js/jquery-3.6.0.min.js"></script>

    <!-- data table scripts -->
    <script src="../js/DataTables/datatables.min.js"></script>
    <script src="../js/DataTables/DataTables-1.10.25/js/dataTables.bootstrap5.min.js"></script>

    <!-- Google Charts Script-->
    <script src="../js/googleCharts.js"></script>
<!--Rating Js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

    <!-- custom script -->
    <script type="text/javascript" src="../js/myScript/CmAdminJs.js"></script>
    <script type="text/javascript" src="../js/myScript/toggleScript.js"></script>
    <script type="text/javascript" src="../js/myScript/dataTableScript.js"></script>

</body>

</html>