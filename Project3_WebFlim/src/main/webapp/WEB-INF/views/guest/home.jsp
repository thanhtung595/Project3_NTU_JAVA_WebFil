<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<div class="slider movie-items">
	<div class="container">
		<div class="row">
			<div class="social-link">
				<p>Follow us: </p>
				<a href="#"><i class="ion-social-facebook"></i></a>
				<a href="#"><i class="ion-social-twitter"></i></a>
				<a href="#"><i class="ion-social-googleplus"></i></a>
				<a href="#"><i class="ion-social-youtube"></i></a>
			</div>
	    	<div  class="slick-multiItemSlider">
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider1.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span>
	    				</div>
	    				<h6><a href="#">Interstellar</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
				<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider2.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="yell"><a href="#">action</a></span>
	    				</div>
	    				<h6><a href="#">The revenant</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider3.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider4.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
	    				</div>
	    				<h6><a href="#">The walk</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider1.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span>
	    				</div>
	    				<h6><a href="#">Interstellar</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
				<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="images/uploads/slider2.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="yell"><a href="#">action</a></span>
	    				</div>
	    				<h6><a href="#">The revenant</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="images/uploads/slider3.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="images/uploads/slider4.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
	    				</div>
	    				<h6><a href="#">The walk</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="images/uploads/slider3.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
</div>
<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-8">
				<div class="title-hd">
					<h2>top trending</h2>
					<a href="trending" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="tabs">
				    <div class="tab-content">
				        <div id="tab1" class="tab active">
				            <div class="row">
				            	<div class="slick-multiItem">
				            	<c:forEach items="${flimList}" var="flim">
				            	
					            	<div class="slide-it">
					            			<div class="movie-item">
						            			<div class="mv-img">
						            				<img src="images/flim/${flim.baner }" alt="" width="185" height="284">
						            			</div> 
						            			<div class="hvr-inner">
						            				<a href="moviesingle?nameFlim=${flim.nameFlim}"> Watch <i class="ion-android-arrow-dropright"></i> </a>
						            			</div>
						            			<div class="title-in">
						            				<h6><a href="moviesingle?nameFlim=${flim.nameFlim}">${flim.nameFlim}</a></h6>
						            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
						            			</div>
						            		</div>
					            		</div>
				            	</c:forEach>
				            	</div>
				            </div>
				        </div>
				        <div id="tab2" class="tab">
				           <div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
				        </div>
				        <div id="tab3" class="tab">
				        	<div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
			       	 	</div>
			       	 	<div id="tab4" class="tab">
				        	<div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
			       	 	</div>
				    </div>
				</div>
				<div class="title-hd">
					<h2>top rated</h2>
				</div>
				<div class="tabs">
				    <div class="tab-content">
				        <div id="tab21" class="tab">
				            <div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
				        </div>
				        <div id="tab22" class="tab active">
				           <div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            	</div>
				            </div>
				        </div>
				        <div id="tab23" class="tab">
				        	<div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
			       	 	</div>
			       	 	 <div id="tab24" class="tab">
				        	<div class="row">
				            	<div class="slick-multiItem">
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Interstellar</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
									<div class="slide-it">
										<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The revenant</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
									</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">The walk</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#">Die hard</a></h6>
					            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
					            			</div>
					            		</div>
				            		</div>
				            	</div>
				            </div>
			       	 	</div>
				    </div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="sidebar">
					<div class="ads">
						<img src="images/flim/daophopiano.jpg" alt="" width="336" height="296">
					</div>
					<div class="celebrities">
						<h4 class="sb-title">Performer</h4>
						
						<c:forEach items="${listdienvienflim}" var="dv">
							<div class="celeb-item">
								<a href="#"><img src="images/imgdienvien/${dv.image }" alt="" width="70" height="70"></a>
								<div class="celeb-author">
									<h6><a href="#">${dv.nameDienVien }</a></h6>
									<span></span>
								</div>
							</div>
						</c:forEach>
						<a href="#" class="btn">See all celebrities<i class="ion-ios-arrow-right"></i></a>
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
<script src="js/cookieuser.js"></script>
<script src="js/login.js"></script>
<script src="js/register.js"></script>
</body>
</html>
