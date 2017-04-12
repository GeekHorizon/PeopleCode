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
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">


<!-- jQuery -->
<script src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>

<!-- masonry -->
<script src="/webjars/masonry/masonry.pkgd.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<style type="text/css">
.grid-item-content {
  border: 2px solid hsla(0, 0%, 0%, 0.5);
}
.dw-pnl__cntnt {
  border-radius: 10px;
  overflow: hidden;
  padding: 10px;
  width: 100%;
}


.mmm {
width: 300px;
height: 300;
}

</style>
<script type="text/javascript">
	var $grid = $('.grid').masonry({
	  itemSelector: '.grid-item',
	  columnWidth: '.grid-sizer',
	  percentPosition: true
	});
</script>
</head>
<body style="background-color: #eee">
	<%@ include file="/WEB-INF/jspf/nav.jspf"%>

	<!-- Page Header -->
	<header class="intro-header" >
	      <div class="container">
	      	<div class="row">
	          <div class="jumbotron text-center" style="background-image: url('https://unsplash.it/426/?random');">
	             <div class="site-heading">
				<h1>PeopleCode</h1>
				<span class="subheading">ddd
				</span>
			</div>
	          </div>
	          </div>
	      </div>
	  </header>

	
	
	<!-- Main Content -->
	<div class="container">
		<!-- add extra container element for Masonry -->
		<div class="grid">
			<div class="grid-sizer col-xs-6 col-sm-4 col-md-3"></div>

			<div class="grid-item ">
				<!-- add inner element for column content -->
				<div class="grid-item-content mmm">
					<img src="https://unsplash.it/424/?random" class="dw-pnl__cntnt" />
				</div>
			</div>

			<div class="grid-item mmm">
				<div class="grid-item-content mmm">
					<img src="https://unsplash.it/420/?random" class="dw-pnl__cntnt" />
				</div>
			</div>

			<div class="grid-item mmm">
				<div class="grid-item-content grid-item-content--height2">
					<img src="https://unsplash.it/426/?random" class="dw-pnl__cntnt" />
				</div>
			</div>
			<div class="grid-item mmm">
				<div class="grid-item-content">
					<img src="https://unsplash.it/419/?random" class="dw-pnl__cntnt" />
				</div>
			</div>
			<div class="grid-item mmm">
				<div class="grid-item-content grid-item-content--height2">
					<img src="https://unsplash.it/425/?random" class="dw-pnl__cntnt" />
				</div>
			</div>
			<div class="grid-item mmm">
				<div class="grid-item-content"></div>
			</div>
			<div class="grid-item mmm">
				<div class="grid-item-content"></div>
			</div>

			<c:forEach var="post" items="${postList}">
				<div class="grid-item mmm">
					<div class="grid-item-content">
						<a href="/post/${post.id}"> <span>${post.title}</span>
						</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>


	<%@ include file="/WEB-INF/jspf/footer.jspf" %>
</body>
</html>