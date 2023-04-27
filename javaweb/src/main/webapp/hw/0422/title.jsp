<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String member4 = request.getParameter("member") == null ? "" : request.getParameter("member");
%>
<style>
	.container{
	text-align:center;
	margin:30px;
	justify-content: space-between;
	}
	.title{
	font-size : 50px;
	}
	.title a{
	text-decoration:none;
	}
	.title_img{

	}
</style>
<div class="container" width="1000px">
	<nav class="navbar">
	<table>
		<tr>
			<td class="title_img" width="262px" height="145px">
			<img src="<%=request.getContextPath()%>/images/title1.jpg" 
			onmouseover="this.src='<%=request.getContextPath()%>/images/title2.jpg'"
			onmouseout="this.src='<%=request.getContextPath()%>/images/title1.jpg'"/></td>
			<td class="title" width="500px"><a href="main.jsp?member=<%=member4%>"><b>ON! MY DESK</b></a></td>
			<td class="title_img" width="262px" height="145px">
			<img src="<%=request.getContextPath()%>/images/title3.jpg" 
			onmouseover="this.src='<%=request.getContextPath()%>/images/title4.jpg'"
			onmouseout="this.src='<%=request.getContextPath()%>/images/title3.jpg'"/></td>
		</tr>
	</table>
	</nav>
</div>