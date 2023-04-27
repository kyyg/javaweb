<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
		String id = request.getParameter("id");
		String save = request.getParameter("save");
		// 코드 확인 응답값
		
		if(save != null) {
			// 쿠키유효시간 설정
		String job = "학생";
  	Cookie cookie = new Cookie("cid", id);
  	cookie.setMaxAge(60*60*24);		// 쿠키의 만료시간 : 단위(초),  1일(60*60*24)
			
			// 응답 헤더에 추가함.
			response.addCookie(cookie);
		}
		
	%>
 <p><a href="<%=request.getContextPath()%>/hw/0424/cookie_loginfrom.jsp" class="btn btn-danger">뒤로가기</a></p>