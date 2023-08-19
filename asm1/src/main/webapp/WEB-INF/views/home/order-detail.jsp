<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>My order</title>
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
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="/style/style.css" rel="stylesheet" type="text/css">
<style>
body {
	color: #404E67;
	background: #F5F7FA;
	font-family: 'Open Sans', sans-serif;
}

.table-wrapper {
	width: 700px;
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
<body>
<body>
	<!-- Start your project here-->


	<div class="super_container">
		<div class="container-fluid" style="padding-top: 150px;">

			<div class="table-responsive">

				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="alert alert-success col row mx-1" role="alert">
								Order Successfully!</div>
							<div class="mx-1 mb-2">
								<h5>
									<strong>Order ID:</strong> ${order.id }
								</h5>
								<h5>
									<strong>Name:</strong> ${order.account.fullname }
								</h5>
								<h5>
									<strong>Address:</strong> ${order.address }
								</h5>
								<h5>
									<strong>Email:</strong> ${order.account.email }
								</h5>
								<h5>
									<strong>Create Date:</strong> ${order.createDate }
								</h5>
							</div>
							<div class="col-sm-10">
								<h2>
									<b>My order</b>
								</h2>

							</div>

						</div>
					</div>
					<table class="table table-bordered" id="tableMyorder"
						style="width: 900px">
						<thead>
							<tr>
								<th style="width: 60px;">NO.</th>
								<th style="width: 120px;">Product Name</th>
								<th style="width: 120px;">Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${items}">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td>${i=i+1}</td>
									<%-- <td class="cart-pic first-row">
										<img src="/forUser/img/products/${item.product.image}" alt="" width=50%></td> --%>
									<td class="cart-title first-row">
										<h5>${item.product.name }</h5>
									</td>
									<td class="p-price first-row">$${item.price }</td>
									<td class="p-price first-row">${item.quantity }</td>
									<td class="total-price first-row">$${item.price*item.quantity}</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>

	</div>
	<script src="/forUser/js/jquery-3.2.1.min.js"></script>
	<script src="/forUser/styles/bootstrap4/popper.js"></script>
	<script src="/forUser/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/forUser/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="/forUser/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
</body>
</html>