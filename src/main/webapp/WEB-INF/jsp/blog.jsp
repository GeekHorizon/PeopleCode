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
.img-thumbnail {
    padding: 10px;
}
.post-box, .post-box2 , .post-box3 {
    margin: 10px 0 10px 0;
}

.grid-item--gigante {
  width: 320px;
  height: 360px;
}
</style>
</head>
<body style="background-color: #eee">
	<%@ include file="/WEB-INF/jspf/nav.jspf"%>

	<!-- Page Header -->
	<header class="intro-header">
		<div class="container">
			<div class="row">
				<div class="jumbotron text-center"
					style="background-image: url('https://unsplash.it/426/?random');">
					<div class="site-heading">
						<h1>PeopleCode</h1>
						<span class="subheading">ddd </span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<!-- add extra container element for Masonry -->
		<div class="grid">
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
			 	<div class="panel panel-default">
			 		<div class="panel-heading"><span>test5</span>
				 	</div>
				 	<div class="panel-body">
					 	<div class="post-box2"> 
				        	<img class="img-responsive img-thumbnail" src="http://i.imgur.com/5wbEJ4D.jpg">
				   		</div>
				 	</div>
		   		</div>
			</div>
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
			 	<div class="panel panel-default">
			 		<div class="panel-heading"><span>test4</span>
				 	</div>
				 	<div class="panel-body">
					 	<div class="post-box2"> 
				        	<img class="img-responsive img-thumbnail" src="http://tiaurus.info/wp-content/uploads/2012/08/yarkoe-i-sochnoe-gipperrealistichnoe-iskusstvo-dennis-wojtkiewicz-3.jpg?76b437">
				   		</div>
				 	</div>
		   		</div>
			</div>
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
			 	<div class="panel panel-default">
			 		<div class="panel-heading"><span>test3</span>
				 	</div>
				 	<div class="panel-body">
					 	<div class="post-box2"> 
					    	<img class="img-responsive img-thumbnail" src="http://s3.amazonaws.com/s3.babblin.gs/posts/images/000/000/241/large/OoRsR42.gif">
				   		</div>
				 	</div>
		   		</div>
			</div>
			
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
			 	<div class="panel panel-default">
			 		<div class="panel-heading"><span>test2</span>
				 	</div>
				 	<div class="panel-body">
					 	<div class="post-box2"> 
			    			<img class="img-responsive img-thumbnail" src="http://i.imgur.com/FaIH0Zz.jpg">
				   		</div>
				 	</div>
		   		</div>
			</div>
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
			 	<div class="panel panel-default">
				 	<div class="panel-heading"><span>test1</span>
				 	</div>
				 	<div class="panel-body">
					 	<div class="post-box2"> 
				    		<img class="img-responsive img-thumbnail" src="http://i.imgur.com/3CjBFlN.jpg">
				   		</div>
				 	</div>
		   		</div>
			</div>
			
			<c:forEach var="post" items="${postList}">
			<div class="grid-item col-lg-4 col-md-4 col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a href="/post/${post.id}"> <span>${post.title}</span></a>
					</div>
					<div class="panel-body">body</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>


	<%@ include file="/WEB-INF/jspf/footer.jspf" %>
	
	<script type="text/javascript">
		var $grid = $('.grid').masonry({
		  itemSelector: '.grid-item',
		  percentPosition: true
		});
		
		$grid.on( 'click', '.grid-item', function() {
			$(this).toggleClass('grid-item--gigante');
			$grid.masonry();
		});
		
	</script>
	
</body>
</html>