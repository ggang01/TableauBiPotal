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



<!-- 태블로 대시보드 스크립트 -->
 <script type="text/javascript">
        function initViz(ticket) {
            var containerDiv = document.getElementById("vizContainer"),
                url = "http://bi.dfocus.net/views/_21/sheet0_1"
            /*     url+=ticket
                url+="/sales/views/US_Superstore_10_0/Overview" */
                alert(url);
                options = {
                    hideTabs: true,
                    onFirstInteractive: function () {
                        console.log("Run this code when the viz has finished loading.");
                    }
                };
            var viz = new tableau.Viz(containerDiv, url, options); 

        }
</script>




</head>
<body  onload="initViz('${ticket}')";>
<!-- header -->
<jsp:include page="../common/header.jsp"/>

<div id="vizContainer" style="width:800px; height:700px; position:absolute;
  top:15%;left:25%;"></div>

</body>


</html>