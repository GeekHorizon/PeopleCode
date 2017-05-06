<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<!-- Ckeditor -->
<script src="/webjars/ckeditor/ckeditor.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" >
        <div class="container">
        	<div class="row">
            <div class="jumbotron text-center" style="background-image: url('https://unsplash.it/426/?random');">
                <div class="page-header">
			    	POST
                </div>
            </div>
            </div>
        </div>
    </header>

	<div class="container">
		<div class="row">
			<c:choose>
				<c:when test="${post == null || post.id == 0}">
					<c:url var="action" value="/post"/>
				</c:when>
				<c:otherwise>
					<c:url var="action" value="/post/${post.id}"/>
				</c:otherwise>
			</c:choose>

			<form class="form-horizontal" method="post" action="${action}">
				<div class="form-group">
					<label for="postTitle" class="col-sm-2 control-label">Title</label>
				    <div class="col-sm-10">
				    	<input class="form-control" id="postTitle" type="text" name="title" placeholder="" value="${post.title}"/>
				    </div>
				</div>
				<div class="form-group">
					<label for="postName" class="col-sm-2 control-label">Name</label>
				    <div class="col-sm-10">
						<input class="form-control" id="postName" type="text" name="name" placeholder="" value="${post.name}"/>
				    </div>
				</div>
				<div class="form-group">
					<label for="postPassword" class="col-sm-2 control-label">Password</label>
				    <div class="col-sm-10">
						<input class="form-control" id="postPassword" type="password" name="password" placeholder="" value=""/>
				    </div>
				</div>
				<div class="form-group">
					<div class="col-sm-2"></div>
					<div class="col-sm-10">
						<textarea class="form-control" name="content" id="editor" rows="10" cols="80">${post.content}</textarea>
						<script>
							CKEDITOR.replace('editor');
						</script>
					</div>
				</div>
				<div class="clearfix">
					<input class="btn btn-info btn-primary pull-right" type="submit" value="Submit" />
				</div>
			</form>
		    <hr />
	    </div>
	</div>
			
    <%@ include file="/WEB-INF/jspf/footer.jspf" %>
	
	<!-- jQuery -->
	<script src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>
</html>
