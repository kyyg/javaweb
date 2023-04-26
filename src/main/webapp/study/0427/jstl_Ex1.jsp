<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jstl_Ex1.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
	
	<script>
	String str;
	function click(){
		for(int i=1; i<=6; i++){
		str = <img src= pageContext.request.contextPath}/images/${i}.jpg>;
		}
	demo.innerHTML = str; 
	}
	</script>
	
</head>
<body>
<p><br/></p>
<div class="container">
	<p>콤보상자에 숫자 1~6까지를 기억시키고 화면에 보여준다. <br/>
			콤보상자 옆에 텍스트박스를 위치시키고, 해당 그림의 '그림명'을 입력 후 '저장'버튼
	   이때 숫자를 선택하면 아래쪽(demo) 선택한 숫자의 그림파일을 출력한다. 
	</p>
	

	<select name="num">
		<c:forEach var="i" begin="1" end="6">
			<option value=${i} onclick="click()">${i}</option>
		</c:forEach>
	</select>
	
</div>
<p><br/></p>
<div id="demo"></div>
</body>
</html>