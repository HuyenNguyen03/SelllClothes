<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Profile</title>
<!-- profile -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<!-- profile -->
<link rel="stylesheet" type="text/css"
	href="/forUser/styles/bootstrap4/bootstrap.min.css">
<link
	href="/forUser/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/forUser/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="/forUser/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="/forUser/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="/forUser/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="/forUser/styles/responsive.css">
<style>
.form-control:focus {
	box-shadow: none;
	border-color: #BA68C8;
}

.profile-button {
	background: #BA68C8;
	box-shadow: none;
	border: none;
}

.profile-button:hover {
	background: #682773;
}

.profile-button:focus {
	background: #682773;
	box-shadow: none;
}

.profile-button:active {
	background: #682773;
	box-shadow: none;
}

.back:hover {
	color: #682773;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="super_container">

		<!-- Header -->


		<div class="fs_menu_overlay"></div>
		<div class="hamburger_menu mb-5">
			<div class="hamburger_close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children"><a href="#"> usd <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#">cad</a></li>
							<li><a href="#">aud</a></li>
							<li><a href="#">eur</a></li>
							<li><a href="#">gbp</a></li>
						</ul></li>
					<li class="menu_item has-children"><a href="#"> English <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#">French</a></li>
							<li><a href="#">Italian</a></li>
							<li><a href="#">German</a></li>
							<li><a href="#">Spanish</a></li>
						</ul></li>
					<li class="menu_item has-children"><a href="#"> My Account
							<i class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#"><i class="fa fa-sign-in"
									aria-hidden="true"></i>Sign In</a></li>
							<li><a href="#"><i class="fa fa-user-plus"
									aria-hidden="true"></i>Register</a></li>
						</ul></li>
					<li class="menu_item"><a href="index">home</a></li>
					<li class="menu_item"><a href="categories">shop</a></li>
					<li class="menu_item"><a href="#">promotion</a></li>
					<li class="menu_item"><a href="#">pages</a></li>
					<li class="menu_item"><a href="#">blog</a></li>
					<li class="menu_item"><a href="contact">contact</a></li>
				</ul>
			</div>
		</div>
		<!--  profile -->

		<div class="container rounded bg-light"
			style="height: auto; padding-top: 150px;">
			<div class="row">
				<div class="col-md-4 border-right">
					<div
						class="d-flex flex-column align-items-center text-center text-muted p-3 py-5">
						<img class="rounded-circle mt-5"
							src="/forAdmin/assets/images/users/${photo}" width="90"><span
							class="font-weight-bold">John Doe</span><span
							class="text-black-50">${email}</span><span>United States</span>
					</div>
				</div>
				<div class="col-md-8">
					<div class="p-3 py-5">
						<div
							class="d-flex justify-content-between align-items-center mb-3">
							<div class="d-flex flex-row align-items-center back">
								<i class="fa fa-long-arrow-left mr-1 mb-1"></i>
								<h6>
									<a href="/home/index">Back to home</a>
								</h6>
							</div>
							<h6 class="text-right">
								<a href="#">Edit Profile</a>
							</h6>
						</div>
						<div class="row mt-2">
							<div class="col-md-6 ">
								<input type="text" class="form-control text-muted"
									placeholder="first name" value="${username }">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									value="${fullname }" placeholder="Doe">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									placeholder="Email" value="${email}">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									value="0844831357 " placeholder="Phone Number">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									placeholder="address" value="D-113, right avenue block, CA,USA">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control text-muted" value="USA"
									placeholder="Country">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									placeholder="Bank Name" value="Bank of America">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control text-muted"
									value="043958409584095" placeholder="Account Number">
							</div>
						</div>
						<div class="mt-5 text-right">
							<form action="/home/myorder" method="post">
							<input type="hidden" name="username" value="${username}"
								onblur="this.form.submit()">
							<button class="btn btn-primary profile-button"
								style="font-size: 20px; font-weight: bolder;">My Order</button>
</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end profile -->
		<!-- Newsletter -->

	
		</div>
	
	<script src="/forUser/js/jquery-3.2.1.min.js"></script>
	<script src="/forUser/styles/bootstrap4/popper.js"></script>
	<script src="/forUser/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/forUser/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="/forUser/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="/forUser/plugins/easing/easing.js"></script>
</body>
</html>