<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
</head>
<body style="background-color: black">
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <!-- style="background-image: url('/webjars/startbootstrap-clean-blog/img/post-bg.jpg')" -->
    <header class="intro-header"  >
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="post-heading">
                        <h1>${post.title}</h1>
                        <h2 class="subheading">${post.subTitle}</h2>
                        <span class="meta">Posted by <a href="#">k</a> on ${post.regDate}</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

	<!-- Post Content -->
	<article>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">${post.content}</div>
				
				<div class="pull-left">
				<a href="/post/${post.id}/delete" onclick="if(!confirm('정말???')){return false;}">
					<button type="button" class="btn btn-danger">삭제</button>
				</a>
				<a href="/post/${post.id}/edit">
					<button type="button" class="btn btn-danger">수정</button>
				</a>
				</div>
				
			</div>
			
			<form class="form-horizontal" id="commentForm">
				<input type="hidden" name="postId" value="${post.id}">
				<div class="form-inline" >
					<div class="form-group col-xs-4">
						<label class="sr-only" for="name">name</label> 
						<input type="text" class="form-control" id="name" name="name" placeholder="name">
					</div>
					<div class="form-group col-xs-4">
						<label class="sr-only" for="password">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Password">
					</div>
				   <button type="submit" id="contentSubmit" class="btn btn-default btn-sm" >Sign in</button>
				</div>
				
				<div class="form-group">
					<textarea class="form-control" rows="3" name="content"></textarea>
				</div>
			</form>
			
			<div class="form-horizontal" id="commentArea">	
				
				
				
			</div>
		</div>
	</article>
	<!-- <hr>  -->
	

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

    <!-- Bootstra0p Core JavaScript -->
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/jqBootstrapValidation.js"></script>
    <script src="/webjars/startbootstrap-clean-blog/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="/webjars/startbootstrap-clean-blog/js/clean-blog.min.js"></script>
    
    <!-- 댓글 -->
    <script type="text/javascript">
    	
    
    function commentLoad() {
    	$.ajax({
    		type : "GET",
    		url : "/comments",
    		data : "postId=${post.id}",
    		dataType : "json",
    		cache : false,
			success : function(comments, status) {
				$("#commentArea").empty();
				for (var key in comments) {
					var comment = comments[key];
					
					var subTag = "<div class='form-group'>"
					           + "<p class='bg-info'>"+ comment.name+"</p>"
					           + "<p class='bg-danger'>"+ comment.content+"</p>"
					           + "<div>";
					
					$("#commentArea").append(subTag);
				}
			},

			error : function(data, status) {
				alert(data.responseJSON.message);
			}

		});
    }
    
    function commentSave() {
    }
    
    $("#commentForm").submit(function(event) {
		var form = $(this);
		$.ajax({
			type : 'post',
			url : "/comments",
			data : form.serialize(),
			dataType : 'json',
			success : function(data, status) {
				commentLoad();
				form[0].reset();
			},
			error : function(data, status) {
				alert(data.responseJSON.message);
			}
		});
	});
    
    commentLoad();
   	</script>
    
</body>
</html>


