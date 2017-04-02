<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="/webjars/startbootstrap-clean-blog/css/clean-blog.min.css">

<!-- jQuery -->
<script src="/webjars/jquery/3.1.1/dist/jquery.min.js"></script>

<!-- masonry -->
<script src="/webjars/masonry/masonry.pkgd.min.js"></script>


<style type="text/css">
div {border: 1px solid gold;}

.masonry { /* Masonry container */
    column-count: 4;
    column-gap: 1em;
}

.item { /* Masonry bricks or child elements */
    background-color: #eee;
    display: inline-block;
    margin: 0 0 1em;
    width: 100%;
}

body {
    font: 1em/1.67 'Open Sans', Arial, Sans-serif;
    margin: 0;
    background: #e9e9e9;
}

.wrapper {
    width: 95%;
    margin: 3em auto;
}

.masonry {
    margin: 1.5em 0;
    padding: 0;
    -moz-column-gap: 1.5em;
    -webkit-column-gap: 1.5em;
    column-gap: 1.5em;
    font-size: .85em;
}

.item {
    display: inline-block;
    background: #fff;
    padding: 1em;
    margin: 0 0 1.5em;
    width: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-shadow: 2px 2px 4px 0 #ccc;
}

@media only screen and (min-width: 400px) {
    .masonry {
        -moz-column-count: 2;
        -webkit-column-count: 2;
        column-count: 2;
    }
}

@media only screen and (min-width: 700px) {
    .masonry {
        -moz-column-count: 3;
        -webkit-column-count: 3;
        column-count: 3;
    }
}

@media only screen and (min-width: 900px) {
    .masonry {
        -moz-column-count: 4;
        -webkit-column-count: 4;
        column-count: 4;
    }
}

@media only screen and (min-width: 1100px) {
    .masonry {
        -moz-column-count: 5;
        -webkit-column-count: 5;
        column-count: 5;
    }
}

@media only screen and (min-width: 1280px) {
    .wrapper {
        width: 1260px;
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
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>
		
	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header" >
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading">
						<h1>People Code</h1>
						<!-- <hr class="small"> -->
						<!-- <span class="subheading">::PEOPLE::</span> -->
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="masonry">
		<!-- <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<c:forEach var="post" items="${postList}">
					<div class="post-preview">
						<a href="/post/${post.id}">
							<h2 class="post-title">${post.title}</h2>
							<h3 class="post-subtitle">${post.subTitle}</h3>
						</a>
						<p class="post-meta">Posted by <a href="#">k</a> on ${post.regDate}
						</p>
					</div>
				</c:forEach>
				
				<ul class="pager">
				
				</ul>
			</div>
			 -->
   <div class="item">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
   <div class="item">...</div>
   <div class="item">...</div>




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

	<!-- Bootstrap Core JavaScript -->
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/jqBootstrapValidation.js"></script>
    <script src="/webjars/startbootstrap-clean-blog/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/clean-blog.min.js"></script>
    
    <script type="text/javascript">
    var $grid = $('.masonry').masonry({
    	  itemSelector: '.item',
    	  percentPosition: true,
    	  columnWidth: '.grid-sizer'
    	});
    $grid.imagesLoaded().progress( function() {
    	  $grid.masonry('layout');
    	});
    </script>
</body>
</html>
