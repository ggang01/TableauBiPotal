<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
</style>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${userVo.pm eq 3}">
<nav style="background-color:#232323;">
		<div class="headermenu" style="float: right; rightpadding: 10px;">
			<a class="glyphicon glyphicon-home" href="main">홈으로</a>
		      <a class="glyphicon glyphicon-th-list" href="#">메뉴관리</a>
		      <a class="glyphicon glyphicon-user" href="userList">사용자관리</a>
		      <a class="glyphicon glyphicon-off" href="logout">로그아웃</a>
		 </div>
</nav>
</c:when>

<c:when test="${userVo.pm < 3}">
<nav style="background-color:#232323;">
		<div class="headermenu" style="float: right; rightpadding: 10px;">
				<a class="glyphicon glyphicon-home" href="main">홈으로</a>
				<a class="glyphicon glyphicon-user" href="userList">내정보</a>
		        <a class="glyphicon glyphicon-off" href="logout">로그아웃</a>
		 </div>
</nav>
</c:when>
</c:choose>
</body>
</html>