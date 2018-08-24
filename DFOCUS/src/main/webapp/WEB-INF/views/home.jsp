<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma","no-store");
response.setDateHeader("Expires", 0);
if(request.getProtocol().equals("HTTP/1.1"))
	response.setHeader("Cache-Control", "no-store");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

<!-- Bootstrap 반응형 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<!--  Bootstrap theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css">

<!-- Bootstrap JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- login css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
	<title>Dfocus</title>
</head>
<body>
	<section class="container">
		    <article class="half">
			        <img alt="" src="${pageContext.request.contextPath}/resources/image/logo.jpg" style="margin-left: auto; margin-right: auto; display: block;"/>
			        <div class="tabs">
				            <span class="tab signin active">Sign in</a></span>
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form action="/login" method="post" >
						                    <input type="text" name="userId" id="userId" class="inpt" required="required" placeholder="Your id">
						                    <label for="userID">Your id</label>
						                    <input type="password" name="userPwd" id="userPwd" class="inpt" required="required" placeholder="Your password">
                						    <label for="userPWD">Your password</label>
                						 	<h6 align="center" style="color: red;">${message}</h1>
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign in" class="submit">
							                        <a href="#" class="more">Forgot your password?</a>
						                    </div>
        					        </form>
    				        </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>


<script type="text/javascript">
$('.container .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});
</script>
</body>
</html>