<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="sidebar-wrapper" data-simplebar=""
			data-simplebar-auto-hide="true">
			<div class="brand-logo">
				<a href="/home/index"> <img src="/forAdmin/assets/images/users/${photo}"
					class="logo-icon" alt="logo icon">
					<h5 class="logo-text">${email}</h5>
				</a>
			</div>
			<ul class="sidebar-menu do-nicescrol">
				<li class="sidebar-header">MAIN NAVIGATION</li>
				<li><a href="index.html"> <i
						class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
				</a></li>

				<li><a href="/admin/account"> <i
						class="zmdi zmdi-accounts-list"></i> <span>Account List</span>
				</a></li>
				<li><a href="/admin/category"> <i
						class="zmdi zmdi-group"></i> <span>Categories List</span>
				</a></li>
				<li><a href="order"> <i
						class="zmdi zmdi-card-travel"></i> <span>Order Controller</span>
				</a></li>
				<li><a href="product"> <i
						class="zmdi zmdi-book-image"></i> <span>Product Controller</span>
				</a></li>
				<li><a href="/admin/bestsaler"> <i
						class="zmdi zmdi-format-list-bulleted"></i> <span>Best Saler</span>
				</a></li>

				<li><a href="/admin/topcustomer"> <i class="zmdi zmdi-grid"></i> <span>Top Customer</span>
				</a></li>
				
				<li><a href="/admin/reportcategory"> <i class="zmdi zmdi-grid"></i> <span>Category Statistic</span>
				</a></li>
				
				
				<li><a href="/admin/reportOrderByDate"> <i class="zmdi zmdi-grid"></i> <span>Report Order By Date</span>
				</a></li>
				<li><a href="/admin/revenuereport"> <i class="zmdi zmdi-grid"></i> <span>Revenue</span>
				</a></li>

				<li><a href="calendar.html"> <i
						class="zmdi zmdi-calendar-check"></i> <span>Calendar</span> <small
						class="badge float-right badge-light">New</small>
				</a></li>

				<li><a href="profile.html"> <i class="zmdi zmdi-face"></i>
						<span>Profile</span>
				</a></li>

				<li><a href="login.html" target="_blank"> <i
						class="zmdi zmdi-lock"></i> <span>Login</span>
				</a></li>

				<li><a href="register.html" target="_blank"> <i
						class="zmdi zmdi-account-circle"></i> <span>Registration</span>
				</a></li>

				<!-- <li class="sidebar-header">LABELS</li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-coffee text-danger"></i> <span>Important</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-chart-donut text-success"></i> <span>Warning</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-share text-info"></i> <span>Information</span></a></li> -->

			</ul>

		</div>
</body>
</html>