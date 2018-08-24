<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
</style>

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
<title>Insert title here</title>
</head>
<body>
${userVo.pm}
<c:if test="${userVo.pm eq 3} ">
		<div class="headermenu" style="float: right; rightpadding: 10px;">
		      <a class="glyphicon glyphicon-th-list" href="#">메뉴관리</a>
		      <a class="glyphicon glyphicon-user" href="#">사용자관리</a>
		      <a class="glyphicon glyphicon-off" href="#">로그아웃</a>
		 </div>
</c:if>

<c:if test="${userVo.pm ne  3} ">
		<div class="headermenu" style="float: right; rightpadding: 10px;">
		      <a class="glyphicon glyphicon-off" href="#">로그아웃</a>
		 </div>
</c:if>
</div>		
</body>
</html>