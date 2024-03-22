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
		<img class="logo" src="images/logo1.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span> <span></span>
		</div>
	</div>
	<!--end of preloading-->
	<jsp:include page="_header.jsp"></jsp:include>
	<div class="slider movie-items"></div>
	<div class="container"></div>

	<div class="trailers">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-12">
					<div class="title-hd">
						<h2 class="bd-hd">
							Skyfall: Quantum of Spectre <span>2015</span>
						</h2>
						<div class="social-btn">
							<a href="#" class="parent-btn"><i class="ion-heart"></i> Add
								to Favorite</a>
							<div class="hover-bnt">
								<a href="#" class="parent-btn"><i
									class="ion-android-share-alt"></i>share</a>
								<div class="hvr-item">
									<a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
									<a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
									<a href="#" class="hvr-grow"><i
										class="ion-social-googleplus"></i></a> <a href="#"
										class="hvr-grow"><i class="ion-social-youtube"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="videos">
						<div class="slider-for-2 video-ft">
							<video id="videoPlayer" controls>
								<source
									src="video/SƠN TÙNG M-TP _ CHÚNG TA CỦA TƯƠNG LAI _ OFFICIAL MUSIC VIDEO.mp4"
									type="video/mp4">
							</video>
						</div>
						<div class="slider-nav-2 thumb-ft">
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer7.jpg"
										alt="photo by Barn Images" width="4096" height="2737">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Wonder Woman</h4>
									<p>2:30</p>
								</div>
							</div>
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer2.jpg"
										alt="photo by Barn Images" width="350" height="200">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Oblivion: Official Teaser Trailer</h4>
									<p>2:37</p>
								</div>
							</div>
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer6.jpg"
										alt="photo by Joshua Earle">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Exclusive Interview: Skull Island</h4>
									<p>2:44</p>
								</div>
							</div>
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer3.png"
										alt="photo by Alexander Dimitrov" width="100" height="56">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Logan: Director James Mangold Interview</h4>
									<p>2:43</p>
								</div>
							</div>
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer4.png"
										alt="photo by Wojciech Szaturski" width="100" height="56">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Beauty and the Beast: Official Teaser
										Trailer 2</h4>
									<p>2: 32</p>
								</div>
							</div>
							<div class="item">
								<div class="trailer-img">
									<img src="images/uploads/trailer5.jpg"
										alt="photo by Wojciech Szaturski" width="360" height="189">
								</div>
								<div class="trailer-infor">
									<h4 class="desc">Fast&Furious 8</h4>
									<p>3:11</p>
								</div>
							</div>

						</div>
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
</body>
</html>