<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 Cookie[] cookies = request.getCookies();
 
 String id = "";
 if(cookies != null){
 	for(int i=0; i<cookies.length; i++){
 		if(cookies[i].getName().equals("id")){
 			id = cookies[i].getValue();
 		}
 	}
 } 
 %>
<h2 align = "center">로그인</h2>
	<form action = "cookie_loginProc.jsp" method = "post">
	<table width = "300px" border = "0" align = "center" bgcolor = "#fff">
		<tr bordercolor = "#fff66">
			<td colspan = "2" align = "center"><b>LOG_IN</b></td>
		</tr>	
		<tr bordercolor = "#fff66">
			<td width = "47%" align = "center">ID</td>
			<td width = "53%" align = "center"><input name = "<%=id %>"></td>
		</tr>		
		<tr>
			<td align = "center">PWD</td>
			<td align = "center"><input name = "pwd"></td>
		</tr>		
		<tr height = "50">
			<td colspan = "2" align = "center">
				<input type = "checkbox" name = "save" value = "1">아이디 저장
			</td>
		</tr>	
		<tr>
			<td colspan = "2" align = "center">
				<input type = "submit" value = "login"> 
				<input type = "reset" value = "reset"> 
			</td>			
		</tr>
		</table>
	</form>