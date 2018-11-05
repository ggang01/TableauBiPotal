<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
     <!-- Bootstrap core CSS-->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">


    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin.css" rel="stylesheet">
    
    
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  
    
<title>Dfocus-admin</title>

</head>
<body>
<table border=0 >
	<tr>
		<jsp:include page="../common/header.jsp"/>
	</tr>
	<tr>
		<td valign="top">
			<div style="height: 900px;">
      		<ul class="sidebar navbar-nav" style="height: 900px;">
       			<li class="nav-item">
       				<a class="nav-link" href="${pageContext.request.contextPath}/admin/userList" target="contents">
       					<span>유저관리</span>
       				</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link">
       					<span>메뉴관리</span>
       				</a>
       			</li>
      		</ul>
      		</div>
		</td>
		<td style="width:100%; height:900px;"">
			 <div class="container">
      			<iframe id="contents" name="contents" style="display:block; width:100%; height:820px;"  frameborder="0"
				src="${pageContext.request.contextPath}/admin/userList" >
	  			</iframe>
			 </div>
		</td>
	</tr>
</table>
</body>
</html>