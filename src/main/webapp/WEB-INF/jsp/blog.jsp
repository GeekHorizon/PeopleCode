<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>People Code</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Theme CSS -->
<link rel="stylesheet"
	href="/webjars/startbootstrap-clean-blog/css/clean-blog.min.css">

<!-- jQuery -->
<script src="/webjars/jquery/3.1.1/dist/jquery.min.js"></script>

<!-- masonry -->
<script src="/webjars/masonry/masonry.pkgd.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Contact Form JavaScript -->
<script
	src="/webjars/startbootstrap-clean-blog/js/jqBootstrapValidation.js"></script>
<script src="/webjars/startbootstrap-clean-blog/js/contact_me.js"></script>

<!-- Theme JavaScript -->
<script src="/webjars/startbootstrap-clean-blog/js/clean-blog.min.js"></script>

<script type="text/javascript">
var $grid = $('.dw').masonry({
	  itemSelector: '.dw_pnl',
	  percentPosition: true
	});
	
	$grid.on( 'click', '.dw_pnl', function() {
	 	 // remove clicked element
	  	// $grid.masonry( 'remove', this )
	    // layout remaining item elements
	    //.masonry('layout');
	 	 
	 	 
	});	
	
</script>

<style type="text/css">
div {
	border: 1px solid gold;
}

.dw {
	-webkit-animation: fade 2s;
	animation: fade 2s;
}

.dw {
	box-sizing: border-box;
	-webkit-column-gap: 0;
	-moz-column-gap: 0;
	column-gap: 0;
	
}

.dw * {
	box-sizing: border-box;
}

.dw__fcs-crtn {
	background-color: #000;
	bottom: 0;
	display: none;
	left: 0;
	opacity: 0.75;
	position: fixed;
	right: 0;
	top: 0;
	z-index: 2;
}

@media ( min-width : 768px) {
	.dw {
		-webkit-column-count: 2;
		-moz-column-count: 2;
		column-count: 2;
	}
}

@media ( min-width : 992px) {
	.dw {
		-webkit-column-count: 3;
		-moz-column-count: 3;
		column-count: 3;
	}
}

@media ( min-width : 1500px) {
	.dw {
		-webkit-column-count: 4;
		-moz-column-count: 4;
		column-count: 4;
	}
}

.dw-pnl {
	margin: 0;
	padding: 5px;
}

.dw-pnl--fcs {
	position: relative;
}

.dw-pnl--fcs:hover {
	z-index: 3;
}

.dw-pnl--fcs:hover ~ .dw__fcs-crtn {
	display: block;
}

.dw-pnl--pls {
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-perspective: 1000;
	perspective: 1000;
	-webkit-transition: -webkit-transform 0.25s ease 0s;
	transition: -webkit-transform 0.25s ease 0s;
	transition: transform 0.25s ease 0s;
	transition: transform 0.25s ease 0s, -webkit-transform 0.25s ease 0s;
}

.dw-pnl--pls:hover {
	-webkit-transform: scale(1.02);
	transform: scale(1.02);
}

.dw-pnl__cntnt {
	border-radius: 10px;
	overflow: hidden;
	padding: 20px;
	width: 100%;
}

@media ( min-width : 768px) {
	.dw-pnl {
		-webkit-column-break-inside: avoid;
		page-break-inside: avoid;
		break-inside: avoid;
	}
}

.dw-flp {
	-webkit-perspective: 1000;
	perspective: 1000;
}

.dw-flp:hover .dw-flp__cntnt {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.dw-flp--sm {
	height: 200px;
}

.dw-flp--md {
	height: 300px;
}

.dw-flp--lg {
	height: 400px;
}

.dw-flp__pnl {
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	border-radius: 10px;
	height: 100%;
	left: 0;
	overflow: visible;
	padding: 20px;
	position: absolute;
	top: 0;
	width: 100%;
}

.dw-flp__pnl--frnt {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 2;
}

.dw-flp__pnl--bck {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.dw-flp__cntnt {
	height: 100%;
	overflow: visible;
	position: relative;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-transition: 0.25s;
	transition: 0.25s;
}

.dw-clstr {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	padding: 0;
}

@media ( max-width : 430px) {
	.dw-clstr--vrt {
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
}

.dw-clstr--hrz {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
}

.dw-clstr__sgmnt {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
}

.dw-clstr__sgmnt--rw {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

@media ( max-width : 430px) {
	.dw-clstr__sgmnt--rw {
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
}

.dw-clstr__sgmnt--clmn {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media ( min-width : 430px) {
	.dw-clstr__sgmnt--hlf {
		-ms-flex-preferred-size: 50%;
		flex-basis: 50%;
	}
	.dw-clstr__sgmnt--qrt {
		-ms-flex-preferred-size: 25%;
		flex-basis: 25%;
	}
}
/**
  * Theming
*/
* {
	box-sizing: border-box;
}

.tx--left {
	text-align: left;
}

.tx--right {
	text-align: right;
}

.tx--center {
	text-align: center;
}

body {
	font-family: 'Open Sans', sans-serif;
}

h3 {
	margin-top: 0;
}
/**
* Colors
*/
.bd--black {
	border: 4px solid #000;
}

.bg--black {
	background-color: #000;
}

.tx--black {
	color: #000;
}

.bd--red {
	border: 4px solid #e74c3c;
}

.bg--red {
	background-color: #e74c3c;
}

.tx--red {
	color: #e74c3c;
}

.bd--blue {
	border: 4px solid #1e8bc3;
}

.bg--blue {
	background-color: #1e8bc3;
}

.tx--blue {
	color: #1e8bc3;
}

.bd--green {
	border: 4px solid #26a65b;
}

.bg--green {
	background-color: #26a65b;
}

.tx--green {
	color: #26a65b;
}

.bd--grey {
	border: 4px solid #6c7a89;
}

.bg--grey {
	background-color: #6c7a89;
}

.tx--grey {
	color: #6c7a89;
}

.bd--purple {
	border: 4px solid #8e44ad;
}

.bg--purple {
	background-color: #8e44ad;
}

.tx--purple {
	color: #8e44ad;
}

.bd--white {
	border: 4px solid #ecf0f1;
}

.bg--white {
	background-color: #ecf0f1;
}

.tx--white {
	color: #ecf0f1;
}
/**
* Images
*/
img {
	max-height: 300px;
}

img.dw-pnl__cntnt, img.dw-flp__pnl {
	padding: 0;
}

img.dw-flp__pnl {
	max-height: 100%;
}

@
-webkit-keyframes fade {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fade {from { opacity:0;
	
}

to {
	opacity: 1;
}
}

</style>
<!-- Custom Fonts -->
<!-- <link href="/webjars/startbootstrap-clean-blog/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 -->
</head>

<body style="background-color: black">
	<%@ include file="/WEB-INF/jspf/nav.jspf"%>

	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header" >
		<div class="container"  style="background-image: url('https://unsplash.it/426/?random'); background-size:cover; background-repeat:no-repeat;" >
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading">
						<h1>People Code</h1>
						<span class="subheading">우리가 도구를 만들면, 다음엔 도구가 우리를 만든다.
						</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Main Content -->
	
	<div class="container dw">
		
		<!-- 
		<div class="dw-pnl dw-pnl--fcs">
			<div class="dw-pnl__cntnt bd--white tx--white">
				<h1>Pure CSS masonry layout</h1>
			</div>
		</div>
		<div class="dw-pnl">
			<div class="dw-pnl__cntnt bd--white tx--white">
				<ul>
					<li>Configurable</li>
					<li>Responsive</li>
					<li>Supports clusters</li>
				</ul>
			</div>
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/419/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl ">
			<div class="dw-pnl__cntnt tx--white bd--white">
				<p>Phasellus malesuada, urna non auctor viverra, libero ex
					pellentesque urna, id rhoncus eros lacus tristique risus. Interdum
					et malesuada fames ac ante ipsum primis in faucibus.</p>
			</div>
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/445/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/423/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl dw-clstr dw-clstr--hrz">
			<div class="dw-clstr__sgmnt dw-clstr__sgmnt--rw ">
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>How</h2>
					</div>
				</div>
			</div>
			<div class="dw-clstr__sgmnt dw-clstr__sgmnt--rw ">
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>about</h2>
					</div>
				</div>
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>clusters?</h2>
					</div>
				</div>
			</div>
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/420/?random" class="dw-pnl__cntnt" />
		</div>
		<div style="height: 200px;" class="dw-pnl dw-flp">
			<div class="dw-pnl__cntnt dw-flp__cntnt">
				<div
					class="dw-flp__pnl dw-flp__pnl--frnt tx--white bd--white tx--center">
					<h1>You can flip me round</h1>
				</div>
				<div
					class="dw-flp__pnl dw-flp__pnl--bck bd--white tx--white tx--center">
					<h1>Yeah that's right</h1>
				</div>
			</div>
		</div>
		 
		<div class="dw-pnl dw-clstr dw-clstr--vrt">
			<div class="dw-clstr__sgmnt dw-clstr__sgmnt--clmn ">
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>A</h2>
					</div>
				</div>
			</div>
			<div class="dw-clstr__sgmnt dw-clstr__sgmnt--clmn ">
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>vertically</h2>
					</div>
				</div>
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>flowed</h2>
					</div>
				</div>
				<div class="dw-pnl dw-clstr__sgmnt ">
					<div class="dw-pnl__cntnt bd--white tx--white">
						<h2>cluster</h2>
					</div>
				</div>
			</div>
		</div>
		-->
		<div class="dw-pnl ">
			<img src="https://unsplash.it/424/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/425/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/419/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/426/?random" class="dw-pnl__cntnt" />
		</div>
		
		<c:forEach var="post" items="${postList}">
			<div class="dw-pnl" onclick="">
				<div class="dw-pnl__cntnt tx--white ">
					<a href="/post/${post.id}">
				
					<h2>${post.title}</h2>
					<p>${post.content}</p>
					</a>
				</div>
			</div>
		</c:forEach>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/420/?random" class="dw-pnl__cntnt" />
		</div>
	
	<!-- <div class="dw-pnl dw-pnl--pls">
			<div
				class="dw-pnl__cntnt tx--white bd--white bg--darkred tx--center">
				<h1>Pulse on hover</h1>
			</div>
		</div>
		<div class="dw-pnl ">
			<img src="https://unsplash.it/440/?random" class="dw-pnl__cntnt" />
		</div>
		<div class="dw__fcs-crtn"></div>
		
		 -->	
	</div>
		
	<!-- Footer -->
	<footer>
		<div class="container">

			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<!-- 
					<ul class="list-inline text-center">
						<li><a href="#"> 
							<span class="fa-stack fa-lg"> 
								<i class="fa fa-circle fa-stack-2x"></i> 
								<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> 
							<span class="fa-stack fa-lg"> 
							<i class="fa fa-circle fa-stack-2x"></i> 
							<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li>
						<a href="#"> 
						<span class="fa-stack fa-lg"> 
						<i class="fa fa-circle fa-stack-2x"></i> 
						<i class="fa fa-github fa-stack-1x fa-inverse"></i>
						</span>
						</a></li>
					</ul>
					 -->
					<p class="copyright text-muted">Copyright &copy; PeopleCode
						2017</p>
				</div>
		</div>
		</div>
	</footer>
</body>
</html>