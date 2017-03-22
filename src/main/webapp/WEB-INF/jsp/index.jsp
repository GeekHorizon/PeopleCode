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
<link rel="stylesheet" href="/webjars/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="/webjars/startbootstrap-clean-blog/css/clean-blog.min.css">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="/">PeopleCode</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/blog">Home</a></li>
					<li><a href="#about.html">About</a></li>
					<li><a href="/post">Sample Post</a></li>
					<li><a href="#contact.html">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('/webjars/startbootstrap-clean-blog/img/home-bg.jpg')">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading">
						<h1>People Code</h1>
						<hr class="small">
						<span class="subheading">::개인 블로그 개발중::</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-preview">
					<a href="/post">
						<h2 class="post-title">게시글 제목1</h2>
						<h3 class="post-subtitle">Problems look mighty small from 150 miles up</h3>
					</a>
					<p class="post-meta">Posted by <a href="#">k</a> on September 24, 2015
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="/post">
						<h2 class="post-title">게시글 제목2</h2>
					</a>
					<p class="post-meta">Posted by <a href="#">kk</a> on September 18, 2017
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="/post">
						<h2 class="post-title">게시근 제목3</h2>
						<h3 class="post-subtitle">We predict too much for the next year and yet far too little for the next ten.</h3>
					</a>
					<p class="post-meta">Posted by <a href="#">Kwon</a> on August 24, 2017
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="/post">
						<h2 class="post-title">Failure is not an option</h2>
						<h3 class="post-subtitle">Many say exploration is part of our
							destiny, but it’s actually our duty to future generations.</h3>
					</a>
					<p class="post-meta">Posted by <a href="#">Sap</a> on July 8, 2014
					</p>
				</div>
				<hr>
				<!-- Pager -->
				<ul class="pager">
					<li class="next"><a href="#">Older Posts &rarr;</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li>
						<a href="#"> <span class="fa-stack fa-lg"> 
						<i class="fa fa-circle fa-stack-2x"></i> 
						<i class="fa fa-github fa-stack-1x fa-inverse"></i>
						</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website 2017</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Contact Form JavaScript -->
	<script src="/webjars/jquery/3.1.1/dist/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="/webjars/startbootstrap-clean-blog/js/clean-blog.min.js"></script>

</body>

</html>
