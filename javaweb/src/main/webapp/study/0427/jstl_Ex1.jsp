<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jstl_Ex1.jsp</title>
	<jsp:include page="/include/bs4.jsp" /> 
	
	<script>
	let choice;
	let str;
	
	function comboCheck(){
		choice = document.getElementById("num").value;
    str = demo.innerHTML='<img src="${pageContext.request.contextPath}/images/'+choice+'.jpg" width="200px" height="200px">';
    demo.innerHTML = str;
	}
	</script>
	
</head>
<body>
<p><br/></p>
<div class="container">
	<p>콤보상자에 숫자 1~6까지를 기억시키고 화면에 보여준다.<br/>
      이때 숫자를 선택하면 아래쪽(demo)으로 선택한 숫자의 그림파일을 출력한다.
	</p>
	<div>    
  <select name="num" id="num" onchange="comboCheck()">
    <option value="">숫자를 선택하면 이미지 출력</option>
       <c:forEach var="i" begin="1" end="6">
        <option name="num" value="${i}">${i}</option>
      </c:forEach>
    </select>  
  </div>
<p><br/></p>
	<div id="demo"></div>
</div>
<p><br/></p>
</body>
</html>