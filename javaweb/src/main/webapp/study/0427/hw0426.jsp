<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String atom = "Welcome to My Homepage!";
pageContext.setAttribute("atom", atom);

String textSearch = request.getParameter("textSearch");
pageContext.setAttribute("textSearch", textSearch);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0426 과제1</title>
</head>
<body>
<pre>
                         1         2
               01234567890123456789012
String atom = "Welcome to My Homepage!";
① 찾고자 하는 문자를 입력받는다.
② '찾고자하는 문자'가 atom변수에서 포함된 3번째 위치를 찾아서 출력하시오.(출력시는 검색한 위치값을 모두 출력할것)
단, (1) 찾고자 하는 문자가 없다면 '검색문자 없음'이라고 출력하시오.
    (2) 3번째문자까지를 모두 검색하였다면 더이상 수행하지 않도록 프로그램을 제작하시오.
 </pre>
 
 <div class="container">
 <form name="myform" method="post" action="">
 	<input type="text" name="textSearch" id="box"/>
 	<input type="submit" value="찾기" />
 	</form>
 	
 	<c:set var="cnt" value="0"/>
 	
 	 <div>찾는 문자가 있는 위치 :</div> 
	 <c:forEach var="i" begin="0" end="${fn: length(atom)-1}">
	 	<c:if test="${cnt < 3}">
		 	<c:if test="${fn:substring(atom,i,i+1) == textSearch}">
		 		<c:set var="cnt" value="${cnt+1}" />
		 		${i}번째 /
		 	</c:if>
	 	</c:if>	
	 </c:forEach>
	 <c:if test="${cnt == 3}">검색문자 없음... 종료</c:if>
 </div>
</body>
</html>