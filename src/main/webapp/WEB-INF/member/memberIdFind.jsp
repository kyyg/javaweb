<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberIdFind.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
	<div class="container">
	<div class="modal-dialog">
		<div class="modal-content p-4 pb-4">
			 <h2 class="text-center pt-5 pb-5">아이디 찾기</h2>
		  <form name="myform" method="post" action="${ctp}/MemberIdFindOk.mem" class="was-validated">
		    <div class="form-group">
		      <label for="name">성명</label>
		      <input type="text" class="form-control" name="name" id="name" required autofocus />
		      <div class="valid-feedback">Ok</div>
		      <div class="invalid-feedback">성명을 입력해 주세요.</div>
		    </div>
		    <div class="form-group text-center pt-4 pb-5">
		    	<button type="submit" class="btn btn-primary mr-1">아이디 찾기</button>
		    	<button type="button" onclick="location.href='${ctp}/MemberLogin.mem';" class="btn btn-warning mr-1">뒤로가기</button>
		    </div>
		  </form>
		</div>
	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>