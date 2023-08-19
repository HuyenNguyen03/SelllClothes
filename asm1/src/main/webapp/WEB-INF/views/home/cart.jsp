<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cart</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
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
	margin-top: 20px;
	background: #eee;
}

.ui-w-40 {
	width: 40px !important;
	height: auto;
}

.card {
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}

.ui-product-color {
	display: inline-block;
	overflow: hidden;
	margin: .144em;
	width: .875rem;
	height: .875rem;
	border-radius: 10rem;
	-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	vertical-align: middle;
}
</style>
</head>
<body>
	<div class="super_container">

		<!-- Header -->
		<div class="container px-3 my-5 clearfix" style="padding-top: 100px;">
			<c:if test="${cart.getCount()==0 }">
				<p class="text-center mt-5">KHÔNG CÓ SẢN PHẨM NÀO TRONG GIỎ HÀNG</p>
			</c:if>
			<c:if test="${cart.getCount() !=0}">
				<!-- Shopping cart table -->
				<div class="card">
					<div class="card-header">
						<h2>Shopping Cart</h2>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered m-0">
								<thead>
									<tr>
										<!-- Set columns width -->
										<th class="text-center py-3 px-2" style="min-width: 200px;">Product
											Name &amp; Details</th>
										<th class="text-right py-3 px-4" style="width: 120px;">Price</th>
										<th class="text-center py-3 px-4" style="width: 150px;">Quantity</th>
										<th class="text-right py-3 px-4" style="width: 100px;">Total</th>
										<th class="text-center align-middle py-3 px-0"
											style="width: 40px;"><a href="#"
											class="shop-tooltip float-none text-light" title=""
											data-original-title="Clear cart"><i
												class="ino ion-md-trash"></i></a></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${cart.items}">
										<form action="/home/cart/update" method="post">
											<input type="hidden" name="id" value="${item.id}">
											<tr>
												<td class="p-4">
													<div class="media align-items-center">
														<img src="/forUser/images/${item.image}"
															class="d-block ui-w-40 ui-bordered mr-4" alt="">
														<div class="media-body">
															<a href="#" class="d-block text-dark">${item.name}</a> <small>
																<span class="text-muted">Color:</span> <span
																class="ui-product-color ui-product-color-sm align-text-bottom"
																style="background: #e81e2c;"></span> &nbsp; <span
																class="text-muted">Size: </span> EU 37 &nbsp; <span
																class="text-muted">Ships from: </span> China
															</small>
														</div>
													</div>
												</td>
												<td class="text-right font-weight-semibold align-middle p-4">$${item.price
													}</td>
												<td class="align-middle p-4 text-center"><a
													class='btn text-muted btn-xs' style="width: 10px;"
													href="/home/cart/sub/${item.id}"> - </a> <input name="qty"
													value="${item.qty}" min="0" onblur="this.form.submit()"
													class="text-center text-muted"
													style="width: 20px; height: 20px; font-size: 18px; font-weight: bolder; border: none">
													<a class='btn text-muted btn-xs' style="width: 10px;"
													href="/home/cart/add/${item.id}">+</a> <%--  											<input type="text" class="form-control text-center" name="qty" value="${item.qty }" onblur="this.form.submit()" > --%>
												</td>
												<td class="text-right font-weight-semibold align-middle p-4">${item.price * item.qty}</td>
												<td class="text-center align-middle px-0"><a
													href="/home/cart/remove/${item.id}"
													class="shop-tooltip close float-none text-danger" title=""
													data-original-title="Remove">×</a></td>
											</tr>
										</form>

									</c:forEach>





								</tbody>
							</table>
						</div>
						<!-- / Shopping cart table -->

						<div
							class="d-flex flex-wrap justify-content-between align-items-center pb-4">
							<div class="mt-4">
								<label class="text-muted font-weight-normal">Promocode</label> <input
									type="text" placeholder="ABC" class="form-control">
							</div>
							<div class="d-flex">
								<div class="text-right mt-4 mr-5">
									<label class="text-muted font-weight-normal m-0">Discount</label>
									<div class="text-large">
										<strong>$20</strong>
									</div>
								</div>
								<div class="text-right mt-4">
									<label class="text-muted font-weight-normal m-0">Total
										price</label>
									<div class="text-large">
										<strong>${cart.total }</strong>
									</div>
								</div>
							</div>
						</div>

						<div class="float-right">
							<a href="/home/categories"
								class="btn text-primary-emphasis bg-info-subtle border border-info-subtle">Back
								to Shopping</a> <a href="/home/cart/clear"
								class="btn border text-dark">Clear Cart</a>

							<!-- 						<a href="checkout" class="btn border text-dark" >Checkout</a> -->
							<c:if test="${!isLogin}">
								<a href="/home/login" class="proceed-btn">PROCEED TO CHECK
									OUT</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/home/checkout" class="proceed-btn">PROCEED TO
									CHECK OUT</a>
							</c:if>
						</div>

					</div>
				</div>

			</c:if>
		</div>

	</div>
	<script src="/forUser/js/jquery-3.2.1.min.js"></script>
	<script src="/forUser/styles/bootstrap4/popper.js"></script>
	<script src="/forUser/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/forUser/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="/forUser/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="/forUser/plugins/easing/easing.js"></script>
</body>
</html>