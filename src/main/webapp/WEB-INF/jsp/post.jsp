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

</head>
<body style="background-color: black">
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>
	
    <header class="intro-header" >
        <div class="container">
        	<div class="row">
            <div class="jumbotron text-center" style="background-image: url('https://unsplash.it/421/?random');">
                <div class="page-header">
			    	POST
                </div>
            </div>
            </div>
        </div>
    </header>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <h1>${post.title}</h1>
                <!-- Author -->
                <p class="lead">
                    by <a href="#">${post.name}</a>
                </p>
                <hr>
                <!-- Date/Time -->
                <p><span class="glyphicon glyphicon-time"></span> Posted on ${post.regDate}</p>
                <hr>

                <!-- Preview Image -->
                test-image
                <img class="img-responsive" src="https://unsplash.it/426/?random" alt="">
                <hr>
                <!-- Post Content -->

                <p class="lead">
                	${post.content}
                </p>
                <hr>
                
               	<div class="form-group">
                <form role="form" id="postForm" method="post" action="/post/${post.id}/delete">
                	<input type="password" class="form-control" id="password" name="password" placeholder="Password">
                	<input type="hidden" name="postId" value="${post.id}">
                	<div class="text-right">
	                	<button type="submit" class="btn btn-danger">delete</button>
                	</div>
                </form>
                </div>
                <hr>
                <!-- Comments -->
                <!-- Comments Form -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    <form role="form" id="commentForm" method="post">
                        <div class="form-group">
                        	<input type="hidden" name="postId" value="${post.id}">
                            <textarea class="form-control" rows="3" name="content"></textarea>
                            <input type="text" class="form-control" id="name" name="name" placeholder="name">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <hr>
                
                <!-- Posted Comments -->
                <!-- Comment -->
				<div id="commentTarget">
				</div>
				
           </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-2">
                <div class="well">
                    <h4>MENU</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="list-unstyled">
                                <li><a href="/">Home</a>
                                </li>
                                <li><a href="https://jenkins.peoplecode.net">Jenkins</a>
                                </li>
                                <li><a href="/post/write">테스트글쓰기</a>
                                </li>
                                <li><a href="#">-</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <!-- Side Widget Well -->
                <div class="well">
                    <h4>TEST</h4>
                    <p>TEST POST</p>
                </div>
            </div>
        </div>
        <hr>
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; PeopleCode 2017</p>
                </div>
            </div>
        </footer>
    </div>
	
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
				$("#commentTarget").empty();
				
				for (var key in comments) {
					var comment = comments[key];
					
			        var regex = /-?\d+/;
			        var matches = regex.exec(comment.regDate);
			        var dt = new Date(parseInt(matches[0]));
			        var month = dt.getMonth() + 1;
			        var monthString = month > 9 ? month : '0' + month;
			        var day = dt.getDate();
			        var dayString = day > 9 ? day : '0' + day;
			        var year = dt.getFullYear();
			        shortDate = year + '/' + monthString + '/' + dayString + '/' + dt.getHours() + '/' + dt.getMinutes();
					
		            var subTag = "<div class='media jumbotron' >"
			                   + "<a class='pull-left' href='javascript: return false;'>"
			                   + "<img style='width: 64px;height: 64px;'></img>"
			                   + "</a>"
			                   + "<div class='media-body'>"
			                   + "<h4 class='media-heading'>" + comment.name
			                   + "<small class='pull-right'>" + shortDate + "</small>"
			                   + "</h4>"
			                   + comment.content
			                   + "</div>"
			                   + "</div>";
					           
			                   
					$("#commentTarget").append(subTag);
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
    	event.preventDefault(); 
   		$.ajax({
   			type : "POST",
   			url : "/comments",
   			data : $("#commentForm").serialize(),
   			dataType : "json",
   			cache : false,
   			success : function(comments, status) {
   				commentLoad();
   				$("#commentForm")[0].reset();
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


