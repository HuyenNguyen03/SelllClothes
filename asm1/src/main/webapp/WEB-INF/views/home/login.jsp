<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
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

		<section class="vh-100">
			<div class="mx-auto" style="width: 80%;">
				<div class="row">
					<div class="col-sm-6 text-black">

						<div class="px-5 ms-xl-4">
							<i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4"
								style="color: #709085;"></i> <span class="h1 fw-bold mb-0">Logo</span>
						</div>

						<div
							class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">


							<form action="login" method="post" style="width: 23rem;">
								<h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log
									in</h3>
								<h5 class="text-danger">${message}</h5>
								<div class="form-outline mb-4">
									<label for="" class="form-label">Username or Email
										address</label> <input type="text" id="username" name="username"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-4">
									<label for="" class="form-label">Password</label> <input
										type="password" id="password" name="password"
										class="form-control form-control-lg" />
								</div>
								<div class="form-check d-flex justify-content-start mb-4">
									<input type="checkbox" value="" name="remember" id="savePass">
									<label class="form-check-label" for="exampleCheck1">Check
										me out</label>
								</div>
								<button type="submit" class="btn btn-info btn-lg btn-block">Submit</button>
								<p class=" mb-5 pb-lg-2 mt-3">
									<a class="text-muted" href="forgot-password">Forgot
										password?</a>
								</p>

								<p>
									Don't have an account? <a href="register" class="link-info">Register
										here</a>
								</p>
							</form>
						</div>

					</div>
					<div class="col-sm-6 px-0 d-none d-sm-block">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img3.webp"
							alt="Login image" class="w-100 vh-100"
							style="object-fit: cover; object-position: left;">
					</div>
				</div>
			</div>
		</section>

	</div>
</body>
</html>