
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title><tiles:getAsString name="title"/></title>
</head>
<body>
  <!-- header -->
  <nav style="background-color:#232323;">
  <tiles:insertAttribute name="header" >${userVo.pm}</tiles:insertAttribute>
  </nav>
  <!-- body -->
  <div>
  
  	<tiles:insertAttribute name="body"></tiles:insertAttribute>
  </div>
  <!-- footer -->
  <div class="navbar-fixed-bottom" style="background-color:#232323;">
  <tiles:insertAttribute name="footer"></tiles:insertAttribute>
  </div>
</body>
</html>