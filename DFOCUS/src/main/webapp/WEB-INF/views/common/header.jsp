<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: underline;}
</style>
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

 <!-- Bootstrap core CSS-->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">


    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin.css" rel="stylesheet">
    
    
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<a href="main"><img alt="dfocus" src="${pageContext.request.contextPath}/resources/image/dfocus_logo_1.png" width="200px;" style="margin: 20px;"></a>
		<div class="headermenu" style="float: right; rightpadding: 10px;">
<c:choose>
<c:when test="${userVo.pm eq 3}">
	<ul class="navbar-nav ml-auto ml-md-0" style="position:absolute; right: 10px;  top: 30%;" >
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link" href="admin" target="_blank">
		    	<i class="fas fa-fw fa-user-tie">
		     	</i>
		     	<span>
		     	 관리자메뉴
		     	</span>
		    </a>
		</li>
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link" href="logout">
		    	<i class="fas fa-fw fa-power-off">
		     	</i>
		     	<span>
		     	로그아웃
		     	</span>
		    </a>
		</li>    
	</ul>	      
</c:when>

<c:when test="${userVo.pm < 3}">
		<ul class="navbar-nav ml-auto ml-md-0">
		  <li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link" href="#">
		    	<i class="fas fa-fw fa-user-circle">
		     	</i>
		     	<span>
		     	로그아웃
		     	</span>
		    </a>
		</li>    
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link" href="logout">
		    	<i class="fas fa-fw fa-power-off">
		     	</i>
		     	<span>
		     	로그아웃
		     	</span>
		    </a>
		</li>         
	</ul>	
</c:when>
</c:choose>
		 </div>
</nav>
</body>
</html>