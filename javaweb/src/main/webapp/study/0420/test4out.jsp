<!-- test4out.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	pageContext.setAttribute("name", name);
%>
	<script>
		alert('${name}님 로그아웃 되었습니다.');
	<%-- 	location.href='<%=request.getContextPath()%>/study/0420/test4.jsp'; --%>
		location.href='${pageContext.request.contextPath}/study/0420/test4.jsp';
		// EL표기법 주의! 함수 아니니 ()제거. 함수 호출아니니 get제거. 대소문자 구별!
	</script>