<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String member3 = request.getParameter("member") == null ? "" : request.getParameter("member");
%>
 <style>
  ul, li{
    margin: 0px;
    padding: 0px;
    list-style: none;
  }
  .container{
  text-align: center;
  }
  nav{
    text-align: center;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }
  nav > ul{
    display: flex;
  }
  nav > ul > li{
    width: 110px;
  }
  nav > ul > li > a{
    padding: 12px 20px 12px 25px;
    width: 70px;
    text-decoration: none;
  }
  nav > ul > li:hover > a{
  color: rgb(117, 104, 93);
  text-decoration:none;
  }
  nav li{
    position: relative;
  }
  
  /* 서브 메뉴 설정 */
  nav ul li ul{
    display: none;
    position: absolute;
    width: 120px;
    background-color: rgb(230, 216, 210);
  }
  nav li:hover > ul{
  display: block;
  }
  nav ul li ul li{
  padding: 10px;
  }
  nav ul li ul li:hover{
  background-color: rgb(224, 200, 189);
  }
  nav ul li ul li a:hover{
  text-decoration:none;
  }
  
 </style>
 <nav class="navbar container"> 
   <ul class="menu">
     <li>
       <a href="main.jsp?">New!</a> 
       <ul>
         <li><a href="main.jsp?sw=digital&member=<%=member3%>">가구</a></li>
         <li><a href="#">소품</a></li>
         <li><a href="#">프린팅</a></li>
         <li><a href="#">컬러</a></li>
         <li><a href="#">조명</a></li>
       </ul>
     </li>
     <li>
       <a href="main.jsp?&member=<%=member3%>">Best50</a> 
       <ul>
         <li><a href="#">가구</a></li>
         <li><a href="#">소품</a></li>
         <li><a href="#">프린팅</a></li>
         <li><a href="#">컬러</a></li>
         <li><a href="#">조명</a></li>
       </ul>
     </li>
     <li>
       <a href="main.jsp?&member=<%=member3%>">INTERIOR</a> 
       <ul>
         <li><a href="#">가구</a></li>
         <li><a href="#">소품</a></li>
         <li><a href="#">프린팅</a></li>
         <li><a href="#">컬러</a></li>
         <li><a href="#">조명</a></li>
       </ul>
     </li>

     <li>
       <a href="main.jsp?sw=digital&member=<%=member3%>">DIGITAL</a> 
       <ul>
         <li><a href="main.jsp?sw=dummymenu&member=<%=member3%>">휴대폰 상품</a></li>
         <li><a href="#">태블릿 상품</a></li>
         <li><a href="#">스마트워치</a></li>
         <li><a href="#">전자기기</a></li>
       </ul>
     </li>

     <li>
       <a href="main.jsp?sw=living&member=<%=member3%>">LIVING</a> 
       <ul>
         <li><a href="#">침실용품</a></li>
         <li><a href="#">거실용품</a></li>
         <li><a href="#">침구류</a></li>
         <li><a href="#">정리용품</a></li>
       </ul>
     </li>
     <li>
      <a href="main.jsp?sw=fashion&member=<%=member3%>">FASHION</a> 
       <ul>
         <li><a href="#">여성 의류</a></li>
         <li><a href="#">남성 의류</a></li>
         <li><a href="#">악세사리</a></li>
         <li><a href="#">소품</a></li>
       </ul>
     </li>
     <li>
      <a href="main.jsp?sw=sale&member=<%=member3%>">SLAE</a>
       <ul>
         <li><a href="#">10% 할인</a></li>
         <li><a href="#">30% 할인</a></li>
         <li><a href="#">50% 할인</a></li>
         <li><a href="#">마지막 수량상품</a></li>
       </ul>
     </li>
     <li>
      <a href="main.jsp?sw=instagram&member=<%=member3%>">INSTAGRAM</a>
       <ul>
         <li><a href="#">공식 SNS</a></li>
         <li><a href="#">직원 SNS</a></li>
       </ul>
     </li>
   </ul>
 </nav>