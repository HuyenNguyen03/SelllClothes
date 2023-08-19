<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>|Change Pasword</title>

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


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
	<!-- Start your project here-->


	<div class="super_container">

		
		<div class="container-fluid" style="padding-top: 150px;">
 <div class="" style="background-color: #eee;">
        <div class="row mt-5">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 " style="background-color: #FFF;">
                <div class="logo_image text-center">
                    <a href="/home/index"><img src="/forUser/images/forgot-password.png" alt="logo" style="width: 80px;"></a>
                </div>
                <div class=" main_signin mt-3 " style="font-family: futura-pt,Tahoma,Geneva,Verdana,Arial,sans-serif;background-color: #eee;
                font-style: normal;
                font-weight: 400;
                font-size: 16px;
                line-height: 1.5;
                letter-spacing: .4px;
                ">
                    <ul class="row nav nav-pills border-bottom rounded-0 " style="background-color: #FFF;">
                        <li class="col nav-item rounded-0 ">
                            <a class=" nav-link text-center text-muted border-end fw-bold rounded-0"
                                style="background-color: #FFF;text-transform: uppercase;letter-spacing: 2px;line-height: 1.7;"
                                data-bs-toggle="pill" href="#home">CHANGE PASSWORD</a>
                        </li>
                    

                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content " style="background-color: #FFF;">
                        
                       
                        <div class="row tab-pane container active fade show " id="menu1">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 mx-auto">
                                <div class="row">
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-10">
                                        <form action="change-password" method="post" class="was-validated">
                                            <h6 class="text-danger">${message }</h6>
                                            <div class="mb-3 mt-3">
                                                <label for="uname" class="form-label text-muted fw-bold text-black-50"
                                                    style="font-style: normal;font-size:15px;text-transform: uppercase;">USERNAME*</label>
                                                <input type="text" class="form-control rounded-0 mt-1" id="username"
                                                    style="height:50px;" placeholder="Enter username" name="username"
                                                    required>
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pwd" class="form-label text-muted fw-bold text-black-50"
                                                    style="font-style: normal;font-size:15px;text-transform: uppercase;">PASSWORD*</label>
                                                <input type="password" class="form-control rounded-0 mt-1" id="password"
                                                    style="height:50px;" placeholder="Enter password" name="password"
                                                    required>
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pwd" class="form-label text-muted fw-bold text-black-50"
                                                    style="font-style: normal;font-size:15px;text-transform: uppercase;">NEW PASSWORD*</label>
                                                <input type="password" class="form-control rounded-0 mt-1" id="newpassword"
                                                    style="height:50px;" placeholder="Enter password" name="newpassword"
                                                    required>
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this field.</div>
                                            </div>
                                             <div class="mb-3">
                                                <label for="pwd" class="form-label text-muted fw-bold text-black-50"
                                                    style="font-style: normal;font-size:15px;text-transform: uppercase;">CONFIRM NEW PASSWORD*</label>
                                                <input type="password" class="form-control rounded-0 mt-1" id="confirmpassword"
                                                    style="height:50px;" placeholder="Enter password" name="confirmpassword"
                                                    required>
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this field.</div>
                                            </div>
                                            <button type="submit"
                                                class="btn btn-primary w-100 bg-dark text-white rounded-0 fw-bold mb-4"
                                                style="height:50px;letter-spacing: 2px;font-style: normal;line-height: 1.5;">CONFIRM</button>
                                           
                                           

                                        </form>

                                    </div>

                                    <div class="col-sm-1 "></div>
                                </div>

                            </div>
                            <div class="col-sm-1"></div>

                        </div>



                    </div>
                </div>
            </div>

            <div class="col-sm-3"></div>
        </div>
        <div class="row mt-5" style="font-size: 14px;">
            <div class="text-center">
                <a href="#" class="text-decoration-none text-muted"><u class="border-end-2 ">Privacy Policy</u> |</a>
                <a href="#" class="text-decoration-none text-muted"><u> Terms and Conđitions</u></a>
            </div>
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