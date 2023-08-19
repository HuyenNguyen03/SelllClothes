<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
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
<body class="my-login-page">

	<div class="super_container">
		<section class="h-100">
			<div class="container h-100">
				<div class="row justify-content-md-center h-100">
					<div class="card-wrapper">
						<div class="brand">
							<img src="img/logo.jpg" alt="bootstrap 4 login page">
						</div>
						<div class="card fat">
							<div class="card-body">
								<h4 class="card-title">Register</h4>
								<h6>${message }</h6>
								<form:form action="/home/register" method="get"
									modelAttribute="item">
									<div class="form-group">
										<label for="name">Username or email address *:</label>

										<form:input path="username" type="text" id="username"
											class="form-control" />

									</div>


									<div class="form-group">
										<label for="password">Password*:</label>
										<form:input path="password" id="password" type="password"
											class="form-control" />

									</div>

									<div class="form-group">
										<label for="fullname">Fullname *:</label>
										<form:input path="fullname" id="fullname" type="text"
											class="form-control" name="fullname" />

									</div>

									<div class="form-group">
										<label for="email">Email *:</label>
										<form:input path="email" id="email" type="email"
											class="form-control" name="email" />

									</div>

									<div class="form-group">
										<div class="image-upload-wrap">
											<form:input class="file-upload-input" type='file'
												path="photo" id="photo" onchange="readURL(this);"
												accept="image/*" />
											<div class="drag-text">
												<h3>Drag and drop a file or select add Image</h3>
											</div>
										</div>
										<div class="file-upload-content">
											<img class="file-upload-image" src="#" alt="your image" />
											<div class="image-title-wrap">
												<button type="button" onclick="removeUpload()"
													class="remove-image">
													Remove <span class="image-title">Uploaded Image</span>
												</button>
											</div>
										</div>
									</div>
									<div class="form-group m-0">
										<button type="submit" class="btn btn-primary btn-block"
											formaction="/home/register/create">Register</button>
									</div>
									<div class="mt-4 text-center">
										Already have an account? <a href="/home/login">Login</a>
									</div>
								</form:form>
							</div>
						</div>
						<div class="footer">Copyright &copy; 2017 &mdash; Your
							Company</div>
					</div>
				</div>
			</div>
		</section>
		
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>

</body>
</html>