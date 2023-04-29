<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>findPwd.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	<form name="myform" method="post" action="${ctp}/database/FindPwd">
		<table class="table table-bordered text-center">
			<tr>
				<th colspan="2" class="form control mt-3 mb-3">아이디와 성명을 입력하면 비밀번호를 찾을 수 있습니다.</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="mid" class="form-control" required autofocus></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="name" class="form-control" required autofocus></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="비밀번호 찾기" class="btn btn-info form-control mt-3"></td>
			</tr>	
		</table>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>