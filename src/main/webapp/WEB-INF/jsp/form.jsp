<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="/webjars/startbootstrap-clean-blog/css/clean-blog.min.css">


<style type="text/css">
div {border: 1px solid gold;}
</style>

<!-- Custom Fonts -->
<!-- <link href="/webjars/startbootstrap-clean-blog/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 -->
<!-- Ckeditor -->
<script src="/webjars/ckeditor/ckeditor.js"></script>
</head>
<body style="background-color: black">
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" >
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="post-heading">
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
            	<form method="post">
	            <input class="form-control" type="text" name="title" placeholder="title" value="${post.title}"/>
	            <textarea name="content" id="editor" rows="10" cols="80">${post.content}</textarea>
            	<script>
	                CKEDITOR.replace('editor');
            	</script>
            	<input class="btn btn-default" type="submit" value="등록" />
       			</form>
            </div>
        </div>
    </article>
				
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; PeopleCode 2017</p>
                </div>
            </div>
        </div>
    </footer>
	
	<!-- jQuery -->
	<script src="/webjars/jquery/3.1.1/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/jqBootstrapValidation.js"></script>
    <script src="/webjars/startbootstrap-clean-blog/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/clean-blog.min.js"></script>
</body>
</html>
