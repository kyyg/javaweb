<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw") == null ? "" : request.getParameter("sw");
	String member = request.getParameter("member") == null ? "" : request.getParameter("member");

	if(member.equals("OK")) member="정회원";
	else member="비회원";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<!-- 헤더영역(로고/메뉴)를 표시 -->
<div id="header" class="text-center" style="background-color:#fff">
	<%@ include file="menu.jsp" %>
	<%@ include file="title.jsp" %>
	<%@ include file="menu2.jsp" %>
</div>
<br/>
<div class="container" class="text-center">
  <!-- 본문영역 -->
  <div id="content" class="text-center" style="width:1000px">
		<% if(sw.equals("digital")) { %>
		  <%@ include file="digital.jsp" %>
		<% } else if(sw.equals("living")) { %>
			<%@ include file="living.jsp" %>
		<% } else if(sw.equals("signup")) { %>
			<%@ include file="signup.jsp" %>
		<% } else if(sw.equals("fashion")) { %>
			<%@ include file="fashion.jsp" %>
		<% } else if(sw.equals("sale")) { %>
			<%@ include file="sale.jsp" %>
		<% } else if(sw.equals("instagram")) { %>
			<%@ include file="instagram.jsp" %>
		<% } else if(sw.equals("login")) { %>
			<%@ include file="login.jsp" %>
		<% } else if(sw.equals("mypage")) { %>
			<%@ include file="mypage.jsp" %>
		<% } else if(sw.equals("signupok")) { %>
			<%@ include file="signupOk.jsp" %>
		<% } else if(sw.equals("dummymenu")) { %>
			<%@ include file="dummymenu.jsp" %>
		<% } else if(sw.equals("signupRes")) { %>
			<%@ include file="signupRes.jsp" %>
		<%} else { %>  
	<%@ include file="article0.jsp" %>
	<%@ include file="article1.jsp" %>
<%	} %>
  </div>
</div>
<p><br/></p>
<!-- 푸터(footer)영역 : Copyright/주소/소속/이메일/작성자....등.. -->
<div id="footer">
  <%@ include file="footer.jsp" %>
</div>
</body>
</html>