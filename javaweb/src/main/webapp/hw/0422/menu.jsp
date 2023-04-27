<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String member2 = request.getParameter("member") == null ? "" : request.getParameter("member");
%>
 <style>
 .container{
 margin-top:10px;
 }
 .title_font{
 	font-size:50px;
 }
 .title_font a{
 text-decoration:none;
 }
 </style>
<div class="container">
	<nav class="navbar">
	  <div>
	  <ul class="nav justify-content: end">
	    <li class="nav-item">
	      <a class="nav-link" href="main.jsp?sw=signup&member=<%=member2%>">Sign Up</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="main.jsp?member=<%=member2%>">Service</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="main.jsp?member=<%=member2%>">Cart</a>
	    </li>
	    <% if(member2.equals("OK")){%>
	    <li class="nav-item">
	      <a class="nav-link" href="main.jsp?member=<%=member2%>">Personal Service</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="main.jsp?sw=mypage&member=<%=member2%>">My Page</a>
	    </li>
	    <li class="nav-item">
			<a class="nav-link" href="main.jsp?sw=login">LogOut</a>
		 </li>
			<%} else { %>
		      <li class="nav-item">
		        <a class="nav-link" href="main.jsp?sw=login">Login</a>
		      </li>
			<%} %>
    </ul>
    </div>
  </nav>
</div>

