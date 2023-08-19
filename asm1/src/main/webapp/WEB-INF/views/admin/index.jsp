<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin</title>
<!-- loader-->
<link href="/forAdmin/assets/css/pace.min.css" rel="stylesheet" />
<script src="/forAdmin/assets/js/pace.min.js"></script>
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
	<script src="/forAdmin/assets/js/jquery.min.js"></script>
	<script src="/forAdmin/assets/js/popper.min.js"></script>
	<script src="/forAdmin/assets/js/bootstrap.min.js"></script>

	<!-- simplebar js -->
	<script src="/forAdmin/assets/plugins/simplebar/js/simplebar.js"></script>
	<!-- sidebar-menu js -->
	<script src="/forAdmin/assets/js/sidebar-menu.js"></script>
	<!-- loader scripts -->
	<script src="/forAdmin/assets/js/jquery.loading-indicator.js"></script>
	<!-- Custom scripts -->
	<script src="/forAdmin/assets/js/app-script.js"></script>
	<!-- Chart js -->

	<script src="/forAdmin/assets/plugins/Chart.js/Chart.min.js"></script>

	<!-- Index js -->
	<script src="/forAdmin/assets/js/index.js"></script>
</body>
</html>