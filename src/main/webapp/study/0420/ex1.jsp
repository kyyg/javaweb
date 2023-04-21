<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> ex1 </title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
	<style>
		div{margin: 10px;}
	</style>
	<script>
		'use strict';
		
		function fCheck(){
		/* 	let su = myform.su.value.trim();
			 */
		/* 	if(su == ""){
			alert("숫자을 입력하세요.")
			myform.name.focus();
			}
			else{ */
			myform.submit();
			
		}
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>5개의 숫자를 받아 정렬 후 출력하기</h2>
	<form name="myform" method="post" action="<%=request.getContextPath()%>/t0420/Ex1Ok">
		<div class="border">
			<div>
				su1 : <input type="number" name="su" value="1" class="form-control" />
			</div>
			<div>
				su2 : <input type="number" name="su" value="2" class="form-control" />
			</div>
			<div>
				su3 : <input type="number" name="su" value="3" class="form-control" />
			</div>
			<div>
				su4 : <input type="number" name="su" value="5" class="form-control" />
			</div>
			<div>
				su5 : <input type="number" name="su" value="4" class="form-control" />
			</div>
		
		</div>
		<div class="text-center">
		<input type="button" value="전송" onclick="fCheck()" class="btn btn-success mr-3">
		<input type="reset" value="다시 입력" class="btn btn-warning">
		</div>
	</form>
</div>
<p><br/></p>
</body>
</html>