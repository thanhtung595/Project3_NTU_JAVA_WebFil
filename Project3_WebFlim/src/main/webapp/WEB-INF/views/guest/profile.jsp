<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<!-- Basic need -->
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

	<!-- CSS files -->
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="css/style.css">

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<jsp:include page="_header.jsp"></jsp:include>


<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<ul class="breadcumb">
						<li class="active"><a href="home">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Profile</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="user-information">
					<div class="user-img">
						<a href="#"><img src="images/imguser/nguyenthanhtung.jpg" alt=""><br></a>
						<a href="#" class="redbtn">Change avatar</a>
					</div>
					<div class="user-fav">
						<p>Account Details</p>
						<ul>
							<li  class="active"><a href="userprofile.html">Profile</a></li>
							<li><a href="userfavoritelist.html">Favorite movies</a></li>
							<li><a href="userrate.html">Rated movies</a></li>
						</ul>
					</div>
					<div class="user-fav">
						<p>Others</p>
						<ul>
							<li><a href="#">Danh sách flim mua</a></li>
							<li><a href="#">Lịch sử nạp tiền</a></li>
							<li><a href="#">Log out</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="form-style-1 user-pro" action="#">
					<form id="frofile_save" action="#" class="user">
						<h4>01. Profile details</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>Username</label>
								<input id="username_frofile" type="text" placeholder="edwardkennedy" value="${account.userName}" readonly="readonly">
							</div>
							<div class="col-md-6 form-it">
								<label>Email Address</label>
								<input id="email_frofile" type="text" placeholder="edward@kennedy.com" value="${account.email}" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>First Name</label>
								<input id="fistName_frofile" type="text" placeholder="Edward " value="${account.fistName}" required="required">
							</div>
							<div class="col-md-6 form-it">
								<label>Last Name</label>
								<input id="lastName_frofile" type="text" placeholder="Kennedy" value="${account.lastName}" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<input class="submit" type="submit" value="Save">
							</div>
						</div>	
					</form>
					<form id ="password_change" action="#" class="password">
						<h4>02. Change password</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>Old Password</label>
								<input id="passOld" type="password" placeholder="**********" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>New Password</label>
								<input id="passNew" type="password" placeholder="***************" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>Confirm New Password</label>
								<input id="passNewConfig" type="password" placeholder="*************** " required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<input class="submit" type="submit" value="Change">
							</div>
						</div>	
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="_footer.jsp"></jsp:include>
<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
<script src="js/cookieuser.js"></script>
<script src="js/profile.js"></script>
</body>
</html>
