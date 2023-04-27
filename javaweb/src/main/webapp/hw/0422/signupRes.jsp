<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <style>
.container{
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
    color:#fff;
}
</style>
<div class="container">
  <div class="content">
    <div><h2>회원가입에 성공하였습니다!</h2></div>
    <div><h5>회원이 되신것을 환영합니다.</h5></div>
      <div class="content_box">
        <div class="content_title"><h5>회원님의 가입 정보</h5></div>
        <div class="content_infor">
          아이디 : ${vo.mid}<br/>
          비밀번호 : ${vo.pwd}<br/>
          홈페이지 : ${vo.homepage}<br/>
          전화번호 :${vo.tel}<br/>
          이메일 :${vo.email}<br/>
        </div>
      </div>
      <span class="bt"><a href="main.jsp" class="btn btn-light mt-3">돌아가기</a></span>
        <span class="bt"><a href="main.jsp?sw=login" class="btn btn-light mt-3">로그인</a></span>
  </div>
 </div>