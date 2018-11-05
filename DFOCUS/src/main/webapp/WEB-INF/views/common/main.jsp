<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="com.dfocus.bi.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
UserVo userVo=(UserVo)session.getAttribute("userVo");
if(userVo.getUserId()==null){
	response.sendRedirect(":/");
}
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

 <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath}/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Bootstrap JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- tableau Api -->
<script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/viz_v1.js"></script>
<script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/tableau-2.2.1.min.js"></script>
<!-- tableau Api -->
<!-- login css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<title>Dfocus</title>

</head>
<body >
<!-- header -->
<table>
	<tr>
		<jsp:include page="../common/header.jsp"/>
	</tr>
	<tr>
		<td>
		<div style="height: 900px;">
      		<ul class="sidebar navbar-nav" style="height: 900px;">
       			<li class="nav-item">
       				<a class="nav-link" href="${pageContext.request.contextPath}/tableauTicket?number=0" target="contents">
       					<span>남양주희망케어-지역별</span>
       				</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="${pageContext.request.contextPath}/tableauTicket?number=1" target="contents">
       					<span>남양주희망케어-연도별</span>
       				</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="${pageContext.request.contextPath}/tableauTicket?number=2" target="contents">
       					<span>남양주희망케어-후원</span>
       				</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="${pageContext.request.contextPath}/tableauTicket?number=3" target="contents">
       					<span>남양주희망케어-장기후원</span>
       				</a>
       			</li>
      		</ul>
      		</div>
		</td>
		<td style="width:100%; height:900px;"">
      			<iframe id="contents" name="contents" style="display:block; width:100%; height:820px;"  frameborder="0"
				src="http://bi.dfocus.net/trusted/${ticket}/namyangju/views/___2/sheet0?:embed=y&:showAppBanner=false&:display_count=no&:showVizHome=no">
	  			</iframe>
		</td>
	</tr>
</table>
</body>


</html>