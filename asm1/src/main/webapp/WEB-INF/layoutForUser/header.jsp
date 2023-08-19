<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Header -->

<header class="header trans_300">

	<!-- Top Navigation -->

	<div class="top_nav">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="top_nav_left text-white">

						<c:if test="${isLogin}">

							<a href="profile" class="text-white" style="font-weight: bolder;">${fullname}</a>
							<a class="text-white" id="btnLogOff" href="/logout" title="">[Logout]</a>

							<c:if test="${admin}">
								<a href="/admin/index"
									class="login-panel text-white float-end ms-3"><i
									class="fa fa-user"></i>Administration</a>
							</c:if>

						</c:if>
					</div>
				</div>
				<div class="col-md-6 text-right">
					<div class="top_nav_right">
						<ul class="top_nav_menu">

							<!-- Currency / Language / My Account -->

							<li class="currency"><a href="#"> usd <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="currency_selection">
									<li><a href="#">cad</a></li>
									<li><a href="#">aud</a></li>
									<li><a href="#">eur</a></li>
									<li><a href="#">gbp</a></li>
								</ul></li>
							<li class="language"><a href="#"> English <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="language_selection">
									<li><a href="#">French</a></li>
									<li><a href="#">Italian</a></li>
									<li><a href="#">German</a></li>
									<li><a href="#">Spanish</a></li>
								</ul></li>
							<li class="account"><a href="#"> My Account <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="account_selection">
									<c:if test="${!isLogin}">
										<li><a href="/home/login"><i class="fa fa-sign-in"
												aria-hidden="true"></i>Sign In</a></li>
										<li><a href="/home/register"><i
												class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
									</c:if>

								</ul></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Main Navigation -->

	<div class="main_nav_container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-right">
					<div class="logo_container">
						<a href="#">colo<span>shop</span></a>
					</div>
					<nav class="navbar">
						<ul class="navbar_menu">
							<li><a href="/home/index">home</a></li>
							<li><a href="/home/categories">shop</a></li>
							<li><a href="#">promotion</a></li>
							<li><a href="#">pages</a></li>
							<li><a href="#">blog</a></li>
							<li><a href="/home/contact">contact</a></li>
						</ul>
						<ul class="navbar_user">
							<li><a href="#"><i class="fa fa-search"
									aria-hidden="true"></i></a></li>
							<li>

								<div class="btn dropdown show">
									<a class=" dropdown-toggle" href="/home/profile"
										" role="button" id="dropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <i
										class="fa fa-user" aria-hidden="true"></i>
									</a>

									<div class="dropdown-menu" aria-labelledby="dropdownMenuLink"
										style="width: 170px; padding-right: 100px;">
										<a class="dropdown-item" style="width: 100px;"
											href="/home/profile"><small>Profile</small></a> <a
											class="dropdown-item" style="width: 170px;"
											href="/home/change-password"><small>ChangePassword</small></a>
									</div>
								</div>
							<li class="checkout"><a href="/home/cart"> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i> <span
									id="checkout_items" class="checkout_items">${cart.getCount()}</span>
							</a></li>
						</ul>
						<div class="hamburger_container">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>