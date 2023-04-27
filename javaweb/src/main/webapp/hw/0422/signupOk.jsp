<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
  @import‎ url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Chivo+Mono:wght@200&family=DynaPuff:wght@600&family=Josefin+Sans:ital@1&family=Noto+Serif+KR:wght@300&display=swap');
.body{
}
.container{
font-family: 'Black Han Sans', sans-serif;
font-family: 'Chivo Mono', monospace;
font-family: 'DynaPuff', cursive;
font-family: 'Josefin Sans', sans-serif;
font-family: 'Noto Serif KR', serif;
 margin: 30px auto;
 background: #0c3580;
 border-radius: 10px;
 height: 550px;
 text-align: center;
}
.content{
  margin: 60px;
  padding: 60px;
  color: rgb(244, 233, 230);
}
.content_box{
background-color: #fff;
border: 0px;
border-radius: 10px;
height:230px;
margin-top: 75px;
color: rgb(84, 73, 73);
}
.content_title{
  padding: 20px;
  font-weight: 600;
}
.bt{
    margin-top:70px;
}
</style>

 <div class="container">
  <div class="content">
    <div><h2>회원가입에 성공하였습니다!</h2></div>
    <div><h5>회원이 되신것을 환영합니다.</h5></div>
      <div class="content_box">
        <div class="content_title"><h5>회원님의 가입 정보</h5></div>
        <div class="content_infor">
          아이디 : <%=request.getParameter("mid") %><br/>
          비밀번호 : <%=request.getParameter("pwd") %><br/>
          홈페이지 : <%=request.getParameter("homepage") %><br/>
          전화번호 : <%=request.getParameter("tel") %><br/>
          이메일 : <%=request.getParameter("email") %><br/>
        </div>
      </div>
      <span class="bt"><a href="main.jsp" class="btn btn-light mt-3">돌아가기</a></span>
        <span class="bt"><a href="main.jsp?sw=login" class="btn btn-light mt-3">로그인</a></span>
  </div>
 </div>