<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--login form popup-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form id="loginForm">
        	<div class="row">
        		 <label for="username">
                    Username:
                    <input type="text" name="username" id="username" required="required" />
                </label>
        	</div>
            <div class="row">
            	<label for="password">
                    Password:
                    <input type="password" name="password" id="password" required="required" />
                </label>
            </div>
            <div class="row">
            	<div class="remember">
					<div>
						<input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
					</div>
            		<a href="#">Forget password ?</a>
            	</div>
            </div>
           <div class="row">
           	 <button type="submit">Login</button>
           	 <p id="errorlogin"></p>
           </div>
        </form>
        <div class="row">
        	<p>Or via social</p>
            <div class="social-btn-2">
            	<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
            	<a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form  id="singupForm" method="post" action="#">
            <div class="row">
                 <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="User Name or Email" required="required" />
                </label>
            </div>
           
            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="text" name="email" id="email-2" placeholder="" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="lastname">
                    your last name:
                    <input type="text" name="lastname" id="lastname" placeholder="" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="fistname">
                    your fist name:
                    <input type="text" name="fistname" id="fistname" placeholder="" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder="" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder=""required="required" />
                </label>
            </div>
            <p id="errorSignup"></p>
           <div class="row">
             <button type="submit">sign up</button>
           </div>
        </form>
    </div>
</div>
<!--end of signup form popup-->

<!-- BEGIN | Header -->
<header class="ht-header">
	<div class="container">
		<nav class="navbar navbar-default navbar-custom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
				    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					    <span class="sr-only">Toggle navigation</span>
					    <div id="nav-icon1">
							<span></span>
							<span></span>
							<span></span>
						</div>
				    </div>
				    <a href=""><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a href="home">
							Home </i>
							</a>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							movies<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">		
								<li><a href="trending">Trending</a></li>
								<li><a href="movie-list">Movie list</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav flex-child-menu menu-right">               
						<li><a href="#">Help</a></li>
						<li id="naptien"><a href="#">Nạp tiền</a></li>
						<li id="profile" style="display: none;"><a href="profile">Profile</a></li>
						<li id="priceaccount" style="display: none;"><p id="txtpriceaccount" style="font-weight: bold;">$580</p></li>
						<li id="logoutbtn" style="display: none;margin-left: 15px" class="btn"><a href="#">log out</a></li>
						<li id="loginbtn"  class="loginLink"><a href="#">LOG In</a></li>
						<li id="signupbtn" class="btn signupLink"><a href="#">sign up</a></li>
					</ul>
				</div>
			<!-- /.navbar-collapse -->
	    </nav>
	    
	    <!-- top search form -->
	    <div class="top-search">
			<input type="text" placeholder="Search for a movie, TV Show or celebrity that you are looking for">
	    </div>
	</div>
</header>
<!-- END | Header -->