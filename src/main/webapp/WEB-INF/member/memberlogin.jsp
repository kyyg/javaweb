<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	// 로그인창에 아이디 체크 유무에 대한 처리
	// 쿠키를 검색해서 cMid가 있을때 가져와서 아이디입력창에 뿌릴수 있게 한다.
	Cookie[] cookies = request.getCookies();

  if(cookies != null) {
  	for(int i=0; i<cookies.length; i++) {
  		if(cookies[i].getName().equals("cMid")) {
  			pageContext.setAttribute("mid", cookies[i].getValue());
  			break;
  		}
  	}
  }
%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberlogin.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
</head>
<body>
<jsp:include page="/include/header.jsp" /> 
<p><br/></p>
<div class="container">
	<div class="modal-dialog">
		<div class="modal-content p-4">
			 <h2 class="text-center pt-4 pb-4">로그인</h2>
		  <form name="myform" method="post" action="${ctp}/MemberLoginOk.mem" class="was-validated">
		    <div class="form-group">
		      <label for="mid">아이디</label>
		      <input type="text" class="form-control" name="mid" id="mid" value="${mid}" placeholder="Enter user ID" required autofocus />
		      <div class="valid-feedback">Ok</div>
		      <div class="invalid-feedback">아이디을 입력해 주세요.</div>
		    </div>
		    <div class="form-group">
		      <label for="pwd">비밀번호</label>
		      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password" required />
		      <div class="valid-feedback">Ok</div>
		      <div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
		    </div>
		    <div class="row text-right" style="font-size : 14px">
		  	<span class="col"><input type="checkbox" name="idSave" checked/> 아이디 저장</span>
		  </div>
		    <div class="form-group text-center pt-4 pb-3">
		    	<button type="submit" class="btn btn-primary mr-1">로그인</button>
		    	<button type="reset" class="btn btn-warning mr-1">다시입력</button>
		    	<button type="button" onclick="location.href='${ctp}/';" class="btn btn-danger mr-1">돌아가기</button>
		    	<button type="button" onclick="location.href='${ctp}/MemberJoin.mem';" class="btn btn-info">회원가입</button>
		    </div>
		  </form>
		  <div class="row text-center pb-4" style="font-size : 16px">
		  	<span class="col">
		  		[<a href="${ctp}/MemberIdFind.mem">아이디 찾기</a>] /
		  		[<a href="${ctp}/MemberPwdFind.mem">비밀번호 찾기</a>] 
		  	</span>
		  </div>
		</div>
	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" /> 
</body>
</html>