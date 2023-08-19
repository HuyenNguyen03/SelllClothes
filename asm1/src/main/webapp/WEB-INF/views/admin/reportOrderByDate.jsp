<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin</title>
<!-- loader-->
<link href="assets/css/pace.min.css" rel="stylesheet" />
<script src="assets/js/pace.min.js"></script>
<!--favicon-->
<link rel="icon" href="/forAdmin/assets/images/favicon.ico"
	type="image/x-icon">
<!-- Vector CSS -->
<link
	href="/forAdmin/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<!-- simplebar CSS-->
<link href="/forAdmin/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet" />
<!-- Bootstrap core CSS-->
<link href="/forAdmin/assets/css/bootstrap.min.css" rel="stylesheet" />
<!-- animate CSS-->
<link href="/forAdmin/assets/css/animate.css" rel="stylesheet"
	type="text/css" />
<!-- Icons CSS-->
<link href="/forAdmin/assets/css/icons.css" rel="stylesheet"
	type="text/css" />
<!-- Sidebar CSS-->
<link href="/forAdmin/assets/css/sidebar-menu.css" rel="stylesheet" />
<!-- Custom Style-->
<link href="/forAdmin/assets/css/app-style.css" rel="stylesheet" />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
body {
	color: #404E67;
	background: #F5F7FA;
	font-family: 'Open Sans', sans-serif;
}

.table-wrapper {
	width: 90%;
	margin: 30px auto;
	background: #fff;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 10px;
	margin: 0 0 10px;
}

.table-title h2 {
	margin: 6px 0 0;
	font-size: 22px;
}

.table-title .add-new {
	float: right;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
	text-shadow: none;
	min-width: 100px;
	border-radius: 50px;
	line-height: 13px;
}

.table-title .add-new i {
	margin-right: 4px;
}

table.table {
	table-layout: fixed;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table th:last-child {
	width: 100px;
}

table.table td a {
	cursor: pointer;
	display: inline-block;
	margin: 0 5px;
	min-width: 24px;
}

table.table td a.add {
	color: #27C46B;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

table.table td a.add i {
	font-size: 24px;
	margin-right: -1px;
	position: relative;
	top: 3px;
}

table.table .form-control {
	height: 32px;
	line-height: 32px;
	box-shadow: none;
	border-radius: 2px;
}

table.table .form-control.error {
	border-color: #f50000;
}

table.table td .add {
	display: none;
}
</style>
</head>
<body class="bg-theme bg-theme1">

	<!-- Start wrapper-->
	<div id="wrapper">

		<!--Start sidebar-wrapper-->
		<%@include file="sidebarwrapper.jsp"%>
		<!--End sidebar-wrapper-->
		<%@include file="headerAdmin.jsp"%>

		<div class="clearfix"></div>

		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<h3 class="alert alert-info">Report Order By Date</h3>
						<div class="row px-3 py-1">
							<div class="col-3 alert alert-primary">
								<form action="/admin/reportOrderByDate" method="post">
									<div class="form-group">
										Form Date:<input type="text" class="form-control"
											name="firstDate" id="firstDate"
											aria-describedby="firstDateHid" placeholder="MM-dd-yyyy" />
									</div>
									<div class="form-group">
										To Date: <input type="text" class="form-control"
											name="lastDate" id="lastDate" aria-describedby="lastDateHid"
											placeholder="MM-dd-yyyy" />
									</div>
									<button type="submit" class="btn btn-primary ">Search</button>
								</form>
							</div>
							<div class="col-3 alert alert-info offset-6">
								<h3 class="text-center">Order</h3>
								<h5>
									From:
									<fmt:formatDate pattern="MM-dd-yyyy" value="${firstDate }" />
								</h5>
								<h5>
									To:
									<fmt:formatDate pattern="MM-dd-yyyy" value="${lastDate }" />
								</h5>
								<h5>Total: ${page.totalElements }</h5>
							</div>
						</div>

						<table class="table text-center">
							<thead>
								<tr>
									<th style="font-weight: bolder; font-size: 18px">No.</th>
									<th style="font-weight: bolder; font-size: 18px">Order ID</th>
									<th style="font-weight: bolder; font-size: 18px">Address</th>
									<th style="font-weight: bolder; font-size: 18px">Create
										Date</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0" />
								<c:forEach var="item" items="${page.content}">
									<tr>
										<td>${i =i+1}</td>
										<td>${item.id }</td>
										<td>${item.address }</td>
										<td>${item.createDate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
		<div class="text-center">
			<a href="/admin/reportOrderByDate?p=0" class="btn btn-primary">First</a>
			<a href="/admin/reportOrderByDate?p=${page.number-1}"
				class="btn btn-primary">Previous</a> <a
				href="/admin/reportOrderByDate?p=${page.number+1}"
				class="btn btn-primary">Next</a> <a
				href="/admin/reportOrderByDate?p=${page.totalPages-1}"
				class="btn btn-primary">Last</a>
		</div>


			</div>
			<a href="javaScript:void();" class="back-to-top"><i
				class="fa fa-angle-double-up"></i> </a>
			<!--Start footer-->
			<%@include file="footer.jsp"%>
			<!--End footer-->

			<!--start color switcher-->
			<div class="right-sidebar">
				<div class="switcher-icon">
					<i class="zmdi zmdi-settings zmdi-hc-spin"></i>
				</div>
				<div class="right-sidebar-content">

					<p class="mb-0">Gaussion Texture</p>
					<hr>

					<ul class="switcher">
						<li id="theme1"></li>
						<li id="theme2"></li>
						<li id="theme3"></li>
						<li id="theme4"></li>
						<li id="theme5"></li>
						<li id="theme6"></li>
					</ul>

					<p class="mb-0">Gradient Background</p>
					<hr>

					<ul class="switcher">
						<li id="theme7"></li>
						<li id="theme8"></li>
						<li id="theme9"></li>
						<li id="theme10"></li>
						<li id="theme11"></li>
						<li id="theme12"></li>
						<li id="theme13"></li>
						<li id="theme14"></li>
						<li id="theme15"></li>
					</ul>

				</div>
			</div>
			<!--end color switcher-->

		</div>
	</div>
	<!--End wrapper-->

	<!-- Bootstrap core JavaScript-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- simplebar js -->
	<script src="assets/plugins/simplebar/js/simplebar.js"></script>
	<!-- sidebar-menu js -->
	<script src="assets/js/sidebar-menu.js"></script>
	<!-- loader scripts -->
	<script src="assets/js/jquery.loading-indicator.js"></script>
	<!-- Custom scripts -->
	<script src="assets/js/app-script.js"></script>
	<!-- Chart js -->

	<script src="assets/plugins/Chart.js/Chart.min.js"></script>

	<!-- Index js -->
	<script src="assets/js/index.js"></script>
</body>
</html>