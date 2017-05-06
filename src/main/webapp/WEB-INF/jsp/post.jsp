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
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">

<style type="text/css">
.bd-comment {
	padding: 1.5rem;
	margin-right: 0;
	margin-bottom: 0;
	margin-left: 0;
	border-width: .2rem;
	border: solid #f7f7f9
}
</style>

</head>
<body >
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
                
                <form class="form-horizontal" id="postAction">
               		<input type="hidden" name="postId" value="${post.id}">
    	           	<div class="form-group">
	                	<div class="">
    	           			<label class="sr-only" for="postPassword">Password</label>
  	            			<input type="password" class="form-control" id="postPassword" name="password" placeholder="Password">
	                	</div>
	                	
	                	<div class="btn-group pull-right">
		                	<label class="btn btn-primary" id="edit" >edit</label>
       						<label class="btn btn-primary" id="delete">delete</label>
	                	</div>
	                	
	                </div>
                </form>
                
                <hr>
                <!-- Comments -->
                <!-- Comments Form -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    <form id="commentForm" method="post">
                       	<input type="hidden" name="postId" value="${post.id}">
                        <div class="form-group">
                        	<textarea class="form-control" rows="3" name="content"></textarea>
                        </div>
                        <div class="form-group">
                        	<input type="text" class="form-control" id="name" name="name" placeholder="name">
                        </div>
						<div class="form-group">                         
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>
                        <div class="clearfix">
                        	<button type="submit" class="btn btn-primary pull-right">Submit</button>
                        </div>
                    </form>
                </div>
                <hr>
                
                <!-- Posted Comments -->
                <!-- Comment -->
                <div class="bd-comment">
                	<ul class="media-list" id="commentTarget">
                	</ul>
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
        <hr />
    </div>
	
	<%@ include file="/WEB-INF/jspf/footer.jspf" %>
	
	<!-- jQuery -->
	<script src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

    <!-- Theme JavaScript -->
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
					
		           /*  var subTag = "<div class='media jumbotron' >"
			                   + "<a class='pull-left' href='javascript: return false;'>"
			                   + "<img style='width: 64px;height: 64px;'></img>"
			                   + "</a>"
			                   + "<div class='media-body'>"
			                   + "<h5 class='mt-0'>" + comment.name
			                   + "<small class='left'>" + shortDate + "</small>"
			                   + "</h5>"
			                   + comment.content
			                   + "</div>"
			                   + "</div>"; */
		           	var subTag = "<li class='media'>"
			                   + "<div class='media-left'><img class='media-object' style='width: 64px; height: 64px;' src='data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_15b5dcf3b2c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_15b5dcf3b2c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2214%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E' data-holder-rendered='true'></div>"
			                   + "<div class='media-body'>"
			                   + "<h4 class='media-heading'>" + comment.name
			                   + "<small><i>" + shortDate + "</i></small></h4><p>"
			                   + comment.content
			                   + "</p></div>"
			                   + "</li><hr />"; 
					           
					$("#commentTarget").append(subTag);
				}
			},

			error : function(data, status) {
				alert(data.responseJSON.message);
			}

		});
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
    $('body').popover({
        placement: 'bottom',
        container: 'body',
        trigger: 'hover',
        html: true,
        animation: false,
        selector: '[data-toggle="popover"]'
    });
    
    $("#edit").on("click", function() {
    	$("#postAction").attr("action", "/post/${post.id}/edit").attr("method", "GET").submit();
    });
    
	$("#delete").on("click", function() {
		$("#postAction").attr("action", "/post/${post.id}").attr("method", "DELETE").submit();
    });
    
   	</script>
</body>
</html>