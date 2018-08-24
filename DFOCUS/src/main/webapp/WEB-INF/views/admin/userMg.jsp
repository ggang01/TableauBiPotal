<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
<title>Dfocus</title>

<script>

/* function dodelete() {  
		var row = $(this);
		var tr = row.parent().parent();
		var td = tr.children();
		var userId = td.eq(2).text();
		alert(td.eq(2).text());
		var pm=$("#pm option:selected").val();
		alert(pm);
} */
$(document).ready( function() {
	$("#deleteBtn").click(function(){
		if(false==confirm("삭제 하시겠습니까?"))return;
		var checkBtn = $(this);
		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
		var tr = checkBtn.parent().parent();
		var td = tr.children();
		var pm=$("#pm option:selected").val();
		var userId = td.eq(0).text();
		location.href="DeleteUser?userId="+userId+"&pm="+pm;

		}); 
} );
function popUp(){
	$('#myModal').modal("show");
};

function formChk(){
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]+[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!regExp.test(document.joinForm.userEmail.value)){
		  alert('email형식을 확인 하세요.'); 
          return false;    		
		}
		if(document.joinForm.userId.value==''){
	      alert("id를 입력하세요!!");
	      document.joinForm.userId.focus();
	    }
		/*else if(document.joinForm.userPwd.value==''){
	      alert("password를 입력하세요!!");    
	      document.joinForm.userPwd.focus();
	    }
		}else if(document.joinForm.userNm.value==''){
    	  alert("이름을 입력하세요!!");    
    	  document.joinForm.userNm.focus();
  		}
	    else{
	       document.joinForm.submit(); 
	       return true;
	    } */

		
 };
</script>

</head>
<body>

<jsp:include page="../common/header.jsp"/>

<c:if test="${!empty sessionScope.id}">
<button class="btn btn-danger" onclick="popUp();" style="margin-bottom: 30px; margin-top: 20px;">사용자 추가</button>
<table id="listTable" class="table table-striped table-hover table-bordered">
    <thead>
	    <tr>    
	        <th class="text-center">ID</th>
	        <th class="text-center">이름</th>
	        <th class="text-center">권한</th>
	        <th class="text-center">이메일</th>
			<th class="text-center">수정/삭제</th>
	    </tr>
    </thead>
    <tbody>
     <c:choose>
        <c:when test="${list.size()>0}">
            <c:forEach var="userVo" items="${list}">
			     <tr>
			        <td class="text-center"><c:out value="${userVo.userId}"/></td>
			        <td class="text-center"><c:out value="${userVo.userNm}"/></td>
			        <td class="text-center">
			        	<select name="pm" id="pm" class="form-control">
			        		<option value=3 <c:if test="${userVo.pm eq 3}" > selected </c:if> >관리자</option>
			        		<option value=2 <c:if test="${userVo.pm eq 2}" > selected </c:if> >인터랙터</option>
			        		<option value=1 <c:if test="${userVo.pm eq 1}" > selected </c:if> >뷰어</option>
			        	</select>
			        </td>
			        <td class="text-center"><c:out value="${userVo.userEmail}"/></td>
			        <td class="text-center"><button class="btn btn-success">수정</button><button id="deleteBtn" class="btn btn-danger" onclick="dodelete();">삭제</button></td>
			     </tr>
			     

		     </c:forEach>
	     </c:when>
      </c:choose>
     </tbody>         
  </table>
</c:if>
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content rounded" >
        <div class="modal-header" style="background-color: #FBB00D;">
          <h4 class="modal-title">사용자 추가</h4>
        </div>
      	<form action="CreateUser" class="form" id="joinForm" method="post" onSubmit="formChk();">
 
                 <label class="col-lg-4 control-label">아이디</label>
                 <div class="col-lg-8">
                        <input type="text" name="userId" id="userId" class="form-control" placeholder="아이디"/>                                      
                 </div>
                 <label class="col-lg-4 control-label">비밀번호</label>
                 <div class="col-lg-8">
                        <input type="text" name="userPwd" id="userPwd" class="form-control" placeholder="비밀번호"/>                                      
                 </div>
                 <label class="col-lg-4 control-label">이름</label>
                  <div class="col-lg-8">
                        <input type="text" name="userNm"" id="userNm" class="form-control" placeholder="이름"/>                                      
                 </div>
                 <label class="col-lg-4 control-label">이메일</label>
                 <div class="col-lg-8">
                        <input type="text" name="userEmail" id="userEmail" class="form-control" placeholder="이메일"/>                                      
                 </div>
                 <label class="col-lg-4 control-label">역활</label>
                 <div class="col-lg-8">
                        <select name="pm" id="pm" class="form-control">
			        		<option value=3>관리자</option>
			        		<option value=2>인터랙터</option>
			        		<option value=1>뷰어</option>
			        	</select>                                      
                 </div>
          <div class="modal-footer">
          <input type="submit" class="btn btn-success" value="사용자 추가"/>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      	</form>
      </div>
      
    </div>
  </div>


   
  <!-- footer -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>