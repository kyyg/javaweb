<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로그아웃 시 회원전용 페이지에 접속되는 것을 막기 위한 페이지. 세션을 이용한다. -->
<!-- 다른 페이지의 mid와 충돌할수 있으니 변수이름을 다르게 하는것이 좋다. -->
<%
  String memberMid = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
  if(memberMid.equals("")) {
%>
		<script>
		  // location.href = "${ctp}/";
		  location.href = "${pageContext.request.contextPath}/study/0428_database/login.jsp";
		</script>
<%} %>