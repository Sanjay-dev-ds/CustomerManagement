<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Admin Dashboard</title>
	
	<!--  cdn styles files -->
	<jsp:include page="/partials/cdnStyles.jsp" />
	
	<!--  local styles files -->
	<jsp:include page="/partials/localStyles.jsp" />

	<!-- custom styles -->
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/mainStyles.css">

</head>
<body>
	<div id="wrapper">
		<div class="overlay"></div>
		
		<!-- side navbar start-->
		<jsp:include page="/partials/sideNav-productionMangement.jsp" />
		<!-- side navbar end-->

		<!-- main content-start -->
		<div id="page-content-wrapper">
			<div id="content">
				<div class="container-fluid p-0 px-lg-0 px-md-0">
				
					<!-- top navbar start-->
					<jsp:include page="/partials/topNav-admin.jsp" />
					<!-- top navbar end -->

					<!-- page content start -->
					<div class="container-fluid px-lg-4">
						<div class="row">
							<div class="col-md-12 mt-lg-4 mt-4">
								<div class="d-sm-flex align-items-center justify-content-between mb-4">
									<h1 class="h3 mb-0 text-gray-800">Analytics Dashboard</h1>
									<a href="#" class="d-none d-sm-inline-block btn-sm btn-primary btn-blue shadow-sm">
										<i class="bi bi-clipboard-data"></i>&nbsp; Generate Report
									</a>
								</div>
							</div>

							<!-- summary cards start -->
							<div class="col-md-12">
								<div class="row">
									<!-- card 1 -->
									<div class="col-sm-4">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title mb-4">Heading</h5>
												<h1 class="display-5  mt-1 mb-3">540</h1>
												<div class="mb-1">
													<span class="text-success"><i></i>Increased</span>
													<span class="textmuted">Description</span>
												</div>
											</div>
										</div>
									</div>

									<!-- card 2 -->
									<div class="col-sm-4">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title mb-4">Heading</h5>
												<h1 class="display-5  mt-1 mb-3">540</h1>
												<div class="mb-1">
													<span class="text-danger"><i></i>Decreased</span>
													<span class="textmuted">Description</span>
												</div>
											</div>
										</div>
									</div>

									<!-- card 3 -->
									<div class="col-sm-4">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title mb-4">Heading</h5>
												<h1 class="display-5  mt-1 mb-3">540</h1>
												<div class="mb-1">
													<span class="text-success"><i></i>Increased</span>
													<span class="textmuted">Description</span>
												</div>
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
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
											<div id="piechart" fun width="400" height="200"></div></div>
										</div>
									</div>

									<!-- chart 2 -->
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div id="barchart" fun width="400" height="200"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- chart cards end -->

							<!-- table card start -->
							<div class="col-md-12 mt-4">
								<div class="card">
									<div class="card-body">
										<div class="d-md-flex align-items-center d-md-flex justify-content-between">
											<!-- table sorting start -->
											<div>
												<h4 class="card-title">
													Table Title
												</h4>
												<h5 class="card-subtitle">
													Overview of table title
												</h5>
											</div>
											<div class="ml-auto">
												<div class="dl">
													<select class="custom-select">
														<option value="365" selected="true">
															Yearly
														</option>
														<option value="30" selected="true">
															Monthly
														</option>
														<option value="7" selected="true">
															Weekly
														</option><option value="1" selected="true">
															Daily
														</option>
													</select>
												</div>
											</div>
											<!-- table sorting end -->
										</div>
									</div>

									<!-- data table start -->
									<div class="table-responsive p-3">
										<table class="table v-middle data-table">
											<!-- table header start -->
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">Column A</th>
													<th class="border-top-0">Column B</th>
													<th class="border-top-0">Column C</th>
													<th class="border-top-0">Column D</th>
													<th class="border-top-0">Column E</th>
												</tr>
											</thead>
											<!-- table header end -->

											<!-- table body start -->
											<tbody>
												<!-- row 1 -->
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<a class="btn btn-circle btn-info text-white">A1</a>
															</div>
														</div>
													</td>

													<td>B1</td>

													<td><label class="label label-danger"></label>C1</td>

													<td>D1</td>

													<td><h4 class="m-b-0"></h4>E1</td>
												</tr>

												<!-- row 2 -->
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<a class="btn btn-circle btn-info text-white">A2</a>
															</div>
														</div>
													</td>

													<td>B2</td>

													<td><label class="label label-danger"></label>C2</td>

													<td>D2</td>

													<td><h4 class="m-b-0"></h4>E2</td>
												</tr>

												<!-- row 3 -->
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<a class="btn btn-circle btn-info text-white">A3</a>
															</div>
														</div>
													</td>

													<td>B3</td>

													<td><label class="label label-danger"></label>C3</td>

													<td>D3</td>

													<td><h4 class="m-b-0"></h4>E3</td>
												</tr>

												<!-- row 4 -->
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<a class="btn btn-circle btn-info text-white">A4</a>
															</div>
														</div>
													</td>

													<td>B4</td>

													<td><label class="label label-danger"></label>C4</td>

													<td>D4</td>

													<td><h4 class="m-b-0"></h4>E4</td>
												</tr>

												<!-- row 5 -->
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<div class="m-r-10">
																<a class="btn btn-circle btn-info text-white">A5</a>
															</div>
														</div>
													</td>

													<td>B5</td>

													<td><label class="label label-danger"></label>C5</td>

													<td>D5</td>

													<td><h4 class="m-b-0"></h4>E5</td>
												</tr>
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
				<jsp:include page="/partials/footer-admin.jsp" />
				<!-- footer start -->								
			</div>
		</div>
		<!-- main content-end -->
	</div>	
	
	<!--  cdn script files -->
	<jsp:include page="/partials/cdnScripts.jsp" />
	
	<!--  local script files -->
	<jsp:include page="/partials/localScripts.jsp" />

	<!-- custom script -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/commonScript/chartScript.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/commonScript/toggleScript.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/commonScript/dataTableScript.js"></script>
	
</body>
</html>