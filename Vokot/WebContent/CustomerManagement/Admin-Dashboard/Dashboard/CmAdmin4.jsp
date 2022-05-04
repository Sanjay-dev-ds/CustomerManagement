<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cm.controller.*"%>
    <%@page import="cm.util.*"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
      google.charts.load('current', {'packages':['gauge']});
      google.charts.setOnLoadCallback(drawChart);
      
  
      function drawChart() {
    	//count  
    	    var x = document.getElementById("myText").value;
    	    var integer = parseInt(x, 10);
    	//sum
    	var y = document.getElementById("myText2").value;
            var integer2 = parseFloat(y);
            
            var z =  (integer2 /  integer ) * 20;
            var integer3 = parseFloat(z);
    

        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ["Rating", integer3 ]
        
        ]);

        var options = {
          width: 200, height: 200,
          redFrom: 0, redTo: 20,
          yellowFrom:20, yellowTo: 40,
          greenFrom: 90, greenTo: 100,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

        chart.draw(data, options);

       
     
      }
    </script>

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
    <link rel="stylesheet" type="text/css" href="../css/styles/CmStylesadmin.css">
</head>

<body>
   <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
    	
  
       
    	 String query = "SELECT COUNT(*) AS total4 FROM  feedback ";
    	
    	
 ResultSet resultSet = st.executeQuery(query);


    	    while (resultSet.next() ) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText" value="<%=resultSet.getInt("total4") %>">           
                                        
                     
       			                    
                     
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
    	
    	
       
       
    	 String query = "SELECT SUM(`Rating`) AS total5 FROM  feedback ";
    	
 ResultSet resultSet = st.executeQuery(query);


    	    while (resultSet.next() ) {
    	    	
    	    	
    	%>
    	
    	
             <input hidden id="myText2" value="<%=resultSet.getDouble("total5") %>">           
                                         
                     
       			                    
                     
       						     <%
                            }
                             con.close();
                            
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>


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
									<h1 class="h3 mb-0 text-gray-800">View feedback</h1>
								
								</div>
							</div>

							<!-- summary cards start -->
							
							<!-- summary cards end -->


							<!-- table card start -->
							
							
							 
							<div class="col-md-12 mt-4">
								<div class="card">
									<div class="card-body">
										<div class="d-md-flex align-items-center d-md-flex justify-content-between">
											<!-- table sorting start -->
											<div>
												<h1 class="card-title">
													Feedback table
												</h1>
												
											</div>
										
										</div>
									</div>

									<!-- data table start -->
									<div class="table-responsive p-3">
										<table class="table v-middle">
											<!-- table header start -->
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">Username</th>
													<th class="border-top-0">Feedback type</th>
													<th class="border-top-0">Content</th>
													<th class="border-top-0">Rating</th>
													<th class="border-top-0">Product Type</th>
												
													
												</tr>
											</thead>
											<!-- table header end -->

											<!-- table body start -->
											<tbody>
											            <%

    try {
    
    	Connection con=DbConnection.getConnection();
    	Statement st=con.createStatement(); 
       
String query;

 query = "SELECT * FROM feedback ";
    



    	
 ResultSet resultSet = st.executeQuery(query);

    	    while (resultSet.next()) {
    	%>
												                 <!-- row 1 -->
                                                                 <tr>
                                                                    <td>
                                                                        <div class="d-flex align-items-center">
                                                                            <div class="m-r-10">
                                                                               <%=resultSet.getString("Username") %>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                
                                                                    <td>  <%=resultSet.getString("Description") %></td>
                
                                                                    <td><label class="label label-danger"></label>  <%=resultSet.getString("Category") %></td>
                
                                                                    <td>  <%=resultSet.getString("Rating") %></td>
                                                                      <td>  <%=resultSet.getString("Product") %></td>
                
                                                                    
                                                                    
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
							
							
							
										<div class="col-md-8 mt-4">
								<div class="card"  style="width: 400px; height: 400px;" >
									<div class="card-body" >
										<div class="d-md-flex align-items-center d-md-flex justify-content-between">
											<!-- table sorting start -->
											<div>
												<div>
												<h1 class="card-title">
													Overall Rating percentage
												</h1>
												
											</div><br><br><br>
											
											  <div id="chart_div" style="width: 200px; height: 300px;"></div>
											</div>
													</div>
							
									</div>
									</div>
									</div>
							
							
							
							
						</div>
					</div>
					<!-- page content end -->
				</div>
				
				<br><br><br><br>
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
	<script type="text/javascript" src="../js/myScript/chartScript.js"></script>
	<script type="text/javascript" src="../js/myScript/toggleScript.js"></script>
	<script type="text/javascript" src="../js/myScript/dataTableScript.js"></script>

</body>

</html>