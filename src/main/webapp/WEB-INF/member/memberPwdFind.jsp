<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>memberPwdFind.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
	<style>
	#tb{
	width:600px;
	}
	</style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container text-center">
	<form name="myform" method="post" action="${ctp}/MemberPwdFindOk.mem">
		<table class="table table-borderless text-center" id="tb">
			<tr>
				<td colspan="2"><h3 class="mb-5 mt-5">비밀번호 찾기</h3></td>
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
			<tr>
				<td colspan="2"><input type="button" onclick="location.href='${ctp}/MemberLogin.mem';" value="돌아가기" class="btn btn-warning form-control mt-3"></td>
			</tr>	
		</table>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>