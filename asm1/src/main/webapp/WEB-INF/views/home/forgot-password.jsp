<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fogot Password</title>
<link rel="icon" href="/forUser/images/mdb-favicon.ico"
	type="image/x-icon" />
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


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/forUser/styles/my-login.css">
<style>
.bg-image-vertical {
	position: relative;
	overflow: hidden;
	background-repeat: no-repeat;
	background-position: right center;
	background-size: auto 100%;
}

@media ( min-width : 1025px) {
	.h-custom-2 {
		height: 100%;
	}
}
</style>
</head>
<body>
	<!-- Start your project here-->


	<div class="super_container">

		<div class="my-login-page">
			<section class="h-100">
				<div class="container h-100">
					<div class="row justify-content-md-center align-items-center h-100">
						<div class="card-wrapper">
							<div class="brand">
								<img src="img/logo.jpg" alt="bootstrap 4 login page">
							</div>
							<h5 class="text-danger">${message }</h5>
							<div class="card fat">
								<div class="card-body">
									<h4 class="card-title">Forgot Password</h4>
									<form action="forgot-password" method="post"
										modelAttribute="ac" class="my-login-validation" novalidate="">
										<div class="form-group">
											<label for="username">Username</label> <input id="username"
												type="text" class="form-control" name="username" value=""
												required autofocus>
											<div class="invalid-feedback">Username is invalid</div>
											<div class="form-text text-muted">By clicking "Reset
												Password" we will send a password reset link</div>
										</div>
										<div class="form-group">
											<label for="email">E-Mail Address</label> <input id="email"
												type="email" class="form-control" name="email" value=""
												required autofocus>
											<div class="invalid-feedback">Email is invalid</div>
											<div class="form-text text-muted">By clicking "Reset
												Password" we will send a password reset link</div>
										</div>

										<div class="form-group m-0">
											<button type="submit" class="btn btn-primary btn-block">
												SEND</button>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>
</html>