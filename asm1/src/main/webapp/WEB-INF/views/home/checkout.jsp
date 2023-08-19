<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CHECKOUT</title>

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
body {
	background: linear-gradient(110deg, #BBDEFB 60%, #42A5F5 60%)
}

.shop {
	font-size: 10px
}

.space {
	letter-spacing: 0.8px !important
}

.second a:hover {
	color: rgb(92, 92, 92)
}

.active-2 {
	color: rgb(92, 92, 92)
}

.breadcrumb>li+li:before {
	content: "" !important
}

.breadcrumb {
	padding: 0px;
	font-size: 10px;
	color: #aaa !important
}

.first {
	background-color: white
}

a {
	text-decoration: none !important;
	color: #aaa
}

.btn-lg, .form-control-sm:focus, .form-control-sm:active, a:focus, a:active
	{
	outline: none !important;
	box-shadow: none !important
}

.form-control-sm:focus {
	border: 1.5px solid #4bb8a9
}

.btn-group-lg>.btn, .btn-lg {
	padding: .5rem 0.1rem;
	font-size: 1rem;
	border-radius: 0;
	color: white !important;
	background-color: #4bb8a9;
	height: 2.8rem !important;
	border-radius: 0.2rem !important
}

.btn-group-lg>.btn:hover, .btn-lg:hover {
	background-color: #26A69A
}

.btn-outline-primary {
	background-color: #fff !important;
	color: #4bb8a9 !important;
	border-radius: 0.2rem !important;
	border: 1px solid #4bb8a9
}

.btn-outline-primary:hover {
	background-color: #4bb8a9 !important;
	color: #fff !important;
	border: 1px solid #4bb8a9
}

.card-2 {
	margin-top: 40px !important
}

.card-header {
	background-color: #fff;
	border-bottom: 0px solid #aaaa !important
}

p {
	font-size: 13px
}

.small {
	font-size: 9px !important
}

.form-control-sm {
	height: calc(2.2em + .5rem + 2px);
	font-size: .875rem;
	line-height: 1.5;
	border-radius: 0
}

.cursor-pointer {
	cursor: pointer
}

.boxed {
	padding: 0px 8px 0 8px;
	background-color: #4bb8a9;
	color: white
}

.boxed-1 {
	padding: 0px 8px 0 8px;
	color: black !important;
	border: 1px solid #aaaa
}

.bell {
	opacity: 0.5;
	cursor: pointer
}

@media ( max-width : 767px) {
	.breadcrumb-item+.breadcrumb-item {
		padding-left: 0
	}
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<!-- Start your project here-->


	<div class="super_container">


		<div class=" container-fluid my-5 ">

			<div class="row justify-content-center ">
				<div class="col-xl-10">
					<div class="card shadow-lg ">
						<div class="row p-2 mt-3 justify-content-between mx-sm-2">
							<div class="col">
								<p class="text-muted space mb-0 shop">Shop No.78618K</p>
								<p class="text-muted space mb-0 shop">Store Locator</p>
							</div>
							<div class="col">
								<div class="row justify-content-start ">
									<div class="col">
										<img class="irc_mi img-fluid cursor-pointer "
											src="https://i.imgur.com/jFQo2lD.png" width="70" height="70">
									</div>
								</div>
							</div>
							<div class="col-auto">
								<img class="irc_mi img-fluid bell"
									src="https://i.imgur.com/uSHMClk.jpg" width="30" height="30">
							</div>
						</div>
						<div class="row mx-auto justify-content-center text-center">
							<div class="col-12 mt-3 ">
								<nav aria-label="breadcrumb" class="second ">
									<ol class="breadcrumb indigo lighten-6 first ">
										<li class="breadcrumb-item font-weight-bold "><a
											class="black-text text-uppercase " href="/home/categories"><span
												class="mr-md-3 mr-1">BACK TO SHOP</span></a><i
											class="fa fa-angle-double-right " aria-hidden="true"></i></li>
										<li class="breadcrumb-item font-weight-bold"><a
											class="black-text text-uppercase" href="/home/cart"><span
												class="mr-md-3 mr-1">SHOPPING BAG</span></a><i
											class="fa fa-angle-double-right text-uppercase "
											aria-hidden="true"></i></li>
										<li class="breadcrumb-item font-weight-bold"><a
											class="black-text text-uppercase active-2" href="#"><span
												class="mr-md-3 mr-1">CHECKOUT</span></a></li>
									</ol>
								</nav>
							</div>
						</div>
						<form action="order-detail" method="post" class="needs-validation"
							novalidate>
							<div class="row justify-content-around">
								<div class="col-md-5">
									<div class="card border-0">
										<div class="card-header pb-0">
											<h2 class="card-title space ">Checkout</h2>
											<p class="card-text text-muted mt-4 space">SHIPPING
												DETAILS</p>
											<hr class="my-0">
										</div>
										<div class="card-body">
											<div class="row justify-content-between">
												<div class="col-auto mt-0">
													<p>
														<b>BBBootstrap Team Vasant Vihar 110020 New Delhi
															India</b>
													</p>
												</div>
												<div class="col-auto">
													<p>
														<b>BBBootstrap@gmail.com</b>
													</p>
												</div>
											</div>
											<div class="row mt-4">
												<div class="col">
													<p class="text-muted mb-2">PAYMENT DETAILS</p>
													<hr class="mt-0">
												</div>
											</div>
											<div class="form-group">
												<label for="validateAddress" class="small text-muted mb-1">ADDRESS*</label>
												<input type="text" class="form-control form-control-sm"
													name="address" id="validateAddress" required>
												<div class="invalid-feedback">Please provide a valid
													city.</div>
											</div>
											<div class="form-group">
												<label for="NAME" class="small text-muted mb-1">NAME
													ON CARD</label> <input type="text"
													class="form-control form-control-sm" name="NAME" id="NAME"
													aria-describedby="helpId" placeholder="BBBootstrap Team">
											</div>
											<div class="form-group">
												<label for="NAME" class="small text-muted mb-1">CARD
													NUMBER</label> <input type="text"
													class="form-control form-control-sm" name="NAME" id="NAME"
													aria-describedby="helpId" placeholder="4534 5555 5555 5555">
											</div>
											<div class="row no-gutters">
												<div class="col-sm-6 pr-sm-2">
													<div class="form-group">
														<label for="NAME" class="small text-muted mb-1">VALID
															THROUGH</label> <input type="text"
															class="form-control form-control-sm" name="NAME"
															id="NAME" aria-describedby="helpId" placeholder="06/21">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label for="NAME" class="small text-muted mb-1">CVC
															CODE</label> <input type="text"
															class="form-control form-control-sm" name="NAME"
															id="NAME" aria-describedby="helpId" placeholder="183">
													</div>
												</div>
											</div>
											<div class="row mb-md-5">
												<div class="col">
													<button type="submit" class="btn btn-lg btn-block ">Place Order</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-5">
									<div class="card border-0 ">
										<div class="card-header card-2">
											<p class="card-text text-muted mt-md-4 mb-2 space">
												YOUR ORDER <span
													class=" small text-muted ml-2 cursor-pointer">EDIT
													SHOPPING BAG</span>
											</p>
											<hr class="my-2">
										</div>
										<div class="card-body pt-0">
											<c:forEach var="item" items="${cart.items}">
												<div class="row justify-content-between">
													<div class="col-auto col-md-7">
														<div class="media flex-column flex-sm-row">
															<img class=" img-fluid"
																src="/forUser/images/${item.image}" width="62"
																height="62">
															<div class="media-body my-auto">
																<div class="row ">
																	<div class="col-auto">
																		<p class="mb-0">
																			<b>EC-GO Bag Standard</b>
																		</p>
																		<small class="text-muted">1 Week Subscription</small>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class=" pl-0 flex-sm-col col-auto my-auto">
														<p class="boxed-1">${item.qty}</p>
													</div>
													<div class=" pl-0 flex-sm-col col-auto my-auto ">
														<p>
															<%-- 															<b>${item.name }x${item.qty } <span>$${item.price* --%>
															<!-- 																	item.qty}</span></b> -->
															<b><span>$${item.price* item.qty}</span></b>
														</p>
													</div>

													<hr class="my-2">
												</div>
											</c:forEach>

											<hr class="my-2">

											<div class="row ">
												<div class="col">


													<div class="row justify-content-between">
														<div class="col">
															<p class="mb-1">
																<b>Shipping</b>
															</p>
														</div>
														<div class="flex-sm-col col-auto">
															<p class="mb-1">
																<b>0 SEK</b>
															</p>
														</div>
													</div>
													<div class="row justify-content-between">
														<div class="col-4">
															<p>
																<b>Total</b>
															</p>
														</div>
														<div class="flex-sm-col col-auto">
															<p class="mb-1">
																<b>$${cart.total }</b>
															</p>
														</div>
													</div>
													<hr class="my-0">
												</div>
											</div>

											<div class="row mb-5 mt-4 ">
												<div class="col-md-7 col-lg-6 mx-auto">
													<button type="submit"
														class="btn btn-block btn-outline-primary btn-lg">ADD
														GIFT CODE</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>

		<!-- Newsletter -->


	</div>
	<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
</body>
</html>