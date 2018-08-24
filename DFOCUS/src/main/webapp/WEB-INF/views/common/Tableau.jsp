<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                url = "http://bi.dfocus.net/t/sales/views/US_Superstore_10_0/Overview"
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
<body onload="initViz('${ticket}')";>
<div id="vizContainer" style="width:800px; height:700px; position:absolute;
  top:25%;left:25%;"></div>
</body>
</html>