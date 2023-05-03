<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>findOkPwd.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	
	<h2 class="text-center mb-4">회원님의 정보를 알려드립니다.</h2>
	<table class="table table-bordered text-center table-hover">
		<tr>
			<td>아이디</td>
			<td>${vo.mid}</td>
		</tr>	
		<tr>
			<td>성명</td>
			<td>${vo.name}</td>
		</tr>	
		<tr>
			<td>비밀번호</td>
			<td>
			<c:forEach var="i" begin="0" end="${fn:length(vo.pwd)-1}">
				<c:if test="${(i % 2) == 0}">${fn: substring(vo.pwd,i,i+1)}</c:if>              
	      <c:if test="${(i % 2) != 0}">
	      	${fn:replace(fn:substring(vo.pwd,i,i+1),fn:substring(vo.pwd,i,i+1), '*')}
	      </c:if>
			</c:forEach>
			</td>
		</tr>	
		<tr>
			<td colspan="2"><a href="${ctp}/study/0428_database/login.jsp" class="btn btn-info form-control">로그인</a></td>
		</tr>	
	</table>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>