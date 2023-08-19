<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin</title>
<!-- loader-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<base href="${pageContext.servletContext.contextPath}/" />
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
			<h5 class="mt-3 text-center bold">ACCOUNT LIST</h5>
			<form:form action="/admin/account" modelAttribute="item">
				<div class="bg-success  px-3">${message}</div>
				<div class="row mx-auto my-5" style="width: 700px;">
					<div class="col">
						<label>Username*:</label>
						<form:input path="username" type="text" class="form-control"
							placeholder="Username" />
						<label>Password*:</label>
						<form:input path="password" type="password"
							class="form-control my-3" placeholder="Password" />
						<label>Image*:</label>
						<form:input type="file" class="form-control mb-3" id="photo"
							path="photo" aria-describedby="photoHid" placeholder="photo" />
						<div class="form-group">
						<label>Activity*:</label>
							<form:radiobuttons class="mx-2" path="activated"
								items="${activateds }" delimiter="" />
						</div>
					</div>
					<div class="col">

						<div class="form-group">
							<label>Fullname*:</label>
							<form:input type="text" class="form-control" path="fullname" />

						</div>
						<div class="form-group">
						<label>Email*:</label>
							<form:input type="email" class="form-control my-3" id="email"
								path="email" />
						</div>
						<div class="form-group">
						<label>Role*:</label>
							
							<form:radiobuttons class="mx-2 mb-3" path="admin"
								items="${admins }" delimiter="" />
						</div>

					</div>
					<div class="card-footer text-muted mt-3">
						<button type="submit" class="btn btn-primary "
							formaction="/admin/account/create">Insert</button>
						<button type="submit" class="btn btn-warning"
							formaction="/admin/account/update">Update</button>
						<button type="submit" class="btn btn-danger"
							formaction="/admin/account/delete/${item.username}">Delete</button>
						<button type="submit" class="btn btn-success"
							formaction="/admin/accountControl">Reset</button>
					</div>
				</div>
			</form:form>
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