<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>memberIdFindRes.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
		<style>
	#tb{
	width:600px;
	text-align: center;
	}
	</style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	<table class="table table-borderless text-center table-hover" id="tb">
		<tr>
			<td colspan="2"><h2 class="text-center mb-4">회원님의 아이디를 알려드립니다.</h2></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>${vo.mid}</td>
		</tr>	
		<tr>
			<td>성명</td>
			<td>${vo.name}</td>
		</tr>	
		<tr>
			<td colspan="2"><a href="${ctp}/MemberLogin.mem" class="btn btn-info form-control">로그인</a></td>
		</tr>	
	</table>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>