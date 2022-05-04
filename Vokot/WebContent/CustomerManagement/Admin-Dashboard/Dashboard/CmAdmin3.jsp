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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="../iconSet/bootstrapIcons/icons-1.5.0/font/bootstrap-icons.css">

    <!-- custom styles -->
    <link rel="stylesheet" type="text/css" href="../css/styles/styles.css">
    
    <link rel="stylesheet" type="text/css" href="../css/styles/CmStylesadmin.css">

    <style>


.checked:hover{

  color: red;

}

    </style>
</head>

<body  >

<%
session.setMaxInactiveInterval(2);
%>



 <script type="text/javascript">
var Msg ='<%=session.getAttribute("Alert")%>';
    if (Msg != "null") {
 function alertName(){

 swal("Record has been added ");
 } 
 }
 </script> 

<script type="text/javascript"> window.onload = alertName; </script>

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
                                    <h1 class="h3 mb-0 text-gray-800">View all records</h1>

                                </div>
                            </div>

				
    
                            <!-- table card start -->
                            <div class="col-md-12 mt-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-md-flex align-items-center d-md-flex justify-content-between">
                                            <!-- table sorting start -->
                                            <div>
                                                <h1 class="card-title">
                                                  Customer Table
                                                </h1>
                                                
                                            </div>
                                            <div class="ml-auto">
                                                <div class="dl">
                                                    <button type="button" class="btn btn-circle btn-info" data-bs-toggle="modal" data-bs-target="#myModal" ><i class="bi bi-plus"></i></button>
                                                </div>
                                            </div>
                                            <!-- table sorting end -->
                                        </div>
                                    </div>

                                    <!-- data table start -->
                                    <div  class="table-responsive p-3">
                                        <table class="table v-middle data-table">
                                            <!-- table header start -->
                                            <thead>
												<tr class="bg-light">
													<th class="border-top-0">Username</th>
													<th class="border-top-0">First name</th>
													<th class="border-top-0">Last name</th>
													<th class="border-top-0">Email</th>
													<th class="border-top-0">Phone</th>
													<th class="border-top-0">Age</th>
                                                    <th class="border-top-0">Gender</th>
                                                    <th class="border-top-0">Address</th>
													<th class="border-top-0">City</th>
													<th class="border-top-0">Province</th>
													<th class="border-top-0">Postal code</th>
                                                    <th class="border-top-0"></th>
													
												</tr>
											</thead>
                                            <!-- table header end -->

                                            <!-- table body start -->
                                            <tbody>
                                                         
                   <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       

 String query = "SELECT Email,Firstname,Username,Lastname,Address,province,city,postalcode,Age,Gender,Phone FROM customers";
    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
                                            
                                               

                                                <!-- row 2 -->

                                           	<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<%=resultSet.getString("Username") %>
																
															</div>
														</div>
													</td>

													<td><%=resultSet.getString("Firstname") %></td>

													<td><label class="label label-danger"></label><%=resultSet.getString("Lastname") %></td>

													<td><%=resultSet.getString("Email") %></td>

													<td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("Phone") %>
													</td>
													<td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("Age") %>
													</td>
													<td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("Gender") %>
													</td>
                                                    <td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("Address") %>
													</td>
                                                    <td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("province") %>
													</td>
                                                    <td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("city") %>
													</td>
                                                    <td>
														<h4 class="m-b-0"></h4><%=resultSet.getString("postalcode") %>
													</td>
													 <td>
													 <form method="post"  action="${pageContext.request.contextPath}/DeleteCustomer">
													 <input hidden name="Uname" value="<%=resultSet.getString("Username") %>" >
														<button class="btn btn-default" type="submit" ><h4 class="m-b-0"></h4><i class="bi bi-trash-fill checked"></i></button>
														</form>
													</td>
												</tr>
												                						     <%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                            
                                                
                                            </tbody>
                                            <!-- table body end -->
                                            
                                            
                                        </table>
                                    </div>
                                    <!-- data table end -->
                                </div>
                            </div>
                            <!-- table card end -->
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


<!-- Modal -->
<div class="modal fade " id="myModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Add record</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">    <button onclick="DemoReg2()"  class="btn btn-danger"> DEMO</button>
         
<form onsubmit="return(RegisterValidatecheck())"  class="form" method="POST" onsubmit="RegisterValidate()" name="Register" action="${pageContext.request.contextPath}/AddCustomer3Servlet"  >

    <label class="input"for="uname">User name:</label>
       
    
    <input id="Uname2" name="Uname"  type="text"><span style = "color:red;"id=Txt></span>
    
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp; &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;
     &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;
    
   
    <br>
    <label class="input"for="Fname">First name :</label>
    
    
    <input id="Fname"  name="Fname" type="text"><span style = "color:red;"id=Txt1></span>
    
    <label class="input" for="Lname">Last name :</label>
    
    <input id="Lname"  name="Lname"  type="text"><span style = "color:red;"id=Txt2></span>
    <br>
    <label class="input" for="Email">Email :</label>
    
    <input id="Email"  name="Email"  type="email"><span style = "color:red;"id=Txt3></span>
    <br>
    <label class="input" for="pNumber">Phone :</label>
    
    <input  id="pNumber"  name="pNumber" type="text"><span style = "color:red;"id=Txt4></span>
    
     <label class="input" for="City">Age :</label>
    
    <input id="Age"  name="Age" style="width:130px;"type="text"><span style = "color:red;"id=Txt5></span>
    
    <label class="input" for="Gender">Gender :</label>
    
    <input id="Gender"   name="Gender" style="width:100px;"type="text"><span style = "color:red;"id=Txt6></span>
    
    <br>
    <label class="input" for="address">address :</label>
    
    <input id="Address"   name="address" style="width:500px;"type="text"><span style = "color:red;"id=Txt7></span>
    <br>
    <label class="input" for="City">City :</label>
    
    <input id="City"   name="City" style="width:130px;"type="text"><span style = "color:red;"id=Txt8></span>
    
    <label class="input" for="Province">Province :</label>
    
    <input id="Province"  name="Province" style="width:100px;"type="text"><span style = "color:red;"id=Txt9></span>
    
    <label class="input" for="Postal">Postal Code :</label>
    
    <input id="Postal"  name="Postal" style="width:100px;"type="text"><span style = "color:red;"id=Txt10></span>
    
    
    <br>
    <label   class="input" for="ps">Password :</label>
    
    <input id="Password2" name="ps" type="password"><span style = "color:red;"id=Txt11></span>
    
    <br>
    
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp; &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;
     &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;
    
    
    
    <button style="margin-left:100dp" type="submit"  class="btn btn-blue">Submit</button>
        </form>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      
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

    <!-- custom script -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="../js/myScript/CmAdminJs.js"></script>
    <script type="text/javascript" src="../js/myScript/chartScript.js"></script>
    <script type="text/javascript" src="../js/myScript/toggleScript.js"></script>
    <script type="text/javascript" src="../js/myScript/dataTableScript.js"></script>
<script type="text/javascript" src="../js/myScript/CmAdminJs2.js"></script>
</body>

</html>