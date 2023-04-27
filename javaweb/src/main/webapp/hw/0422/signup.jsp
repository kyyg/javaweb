<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
const regMid = /^[a-z0-9_]{4,20}$/g; 
const regPwd = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[@$!%*#?&]).{4,20}$/g; 
const regHomepage = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/;
const regTel =  /^\d{3}-\d{4}-\d{4}/;
const regEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/;


	function midCheck(){
	let mid = document.getElementById("mid").value.trim();
  if(regMid.test(mid)){
  m1.innerHTML = '<font color="#e19191">Correct!</font>';
  return false;
  }
  else if(!regMid.test(mid)){
  m1.innerHTML = '<font color="red">Wrong! You have to fix!</font>';
  document.getElementById("mid").focus;
  return false;  
  }
	}
	function pwdCheck(){
	let pwd = document.getElementById("pwd").value.trim();
  if(regPwd.test(pwd)){
  m2.innerHTML = '<font color="#e19191">Correct!</font>';
  return false;
  }
  else if(!regPwd.test(pwd)){
  m2.innerHTML = '<font color="red">Wrong! You have to fix!</font>';
  document.getElementById("pwd").focus;
  return false;  
  }
	}
	function homepageCheck(){
	let homepage = document.getElementById("homepage").value.trim();
	  if(regHomepage.test(homepage)){
  m3.innerHTML = '<font color="#e19191">Correct!</font>';
  return false;
  }
  else if(!regHomepage.test(homepage)){
  m3.innerHTML = '<font color="red">Wrong! You have to fix!</font>';
  document.getElementById("homepage").focus;
  return false;  
  }
	}
	function telCheck(){
	let tel = document.getElementById("tel").value.trim();
  if(!regTel.test(tel)){
  m4.innerHTML = '<font color="#e19191">Correct!</font>';
  return false;
  }
  else if(regTel.test(tel)){
  m4.innerHTML = '<font color="red">Wrong! You have to fix!</font>';
  document.getElementById("tel").focus;
  return false;  
  }
	}
	function emailCheck(){
	let email = document.getElementById("email").value.trim();
  if(regTel.test(email)){
  m5.innerHTML = '<font color="#e19191">Correct!</font>';
  return false;
  }
  else if(!regTel.test(email)){
  m5.innerHTML = '<font color="red">Wrong! You have to fix!</font>';
  document.getElementById("email").focus;
  return false;  
  }
}

function inforCheck(){
  alert("회원가입에 성공하였습니다.");
  location.href='#';  
}
</script>
<div class="container">
  <form name="myform" method="post" action="<%=request.getContextPath()%>/hw0422/signupOk">
    <div class="">
    <h1 class="text-center"><b><i>Sign Up</i></b></h1>
    <p><br/></p>
    <table width="100%">
      <tr>
        <th class="midTable">
          <label for="mid" class="mid">ID</label>
          <span id="m1"></span>
        </th>
      </tr>
      <tr>
        <td id="inputId"><input type="text" name="mid" id="mid" value="java1234" class="form-control" onkeydown="midCheck()" autofocus required></td>
      </tr>
      <tr>
        <th>
          <label for="pwd">PASSWORD</label>
          <span id="m2"></span>
        </th>
      </tr>
      <tr>
        <td id="inputId"><input type="text" name="pwd" id="pwd" value="##java12345" class="form-control" onkeydown="pwdCheck()" autofocus required></td>
      </tr>
      <tr>
        <th>
          <label for="homepage">HOMEPAGE</label>
          <span id="m3"></span>
        </th>
      </tr>
      <tr>
        <td id="inputId"><input type="text" name="homepage" id="homepage" value="http://java.com" class="form-control" onkeydown="homepageCheck()" autofocus required></td>
      </tr>
      <tr>
        <th>
          <label for="tel">TEL</label>
          <span id="m4"></span>
        </th>
      </tr>
      <tr>
        <td id="inputId"><input type="text" name="tel" id="tel" value="010-1234-5678" class="form-control" onkeydown="telCheck()" autofocus required></td>
      </tr>
      <tr>
        <th>
          <label for="email">EMAIL</label>
          <span id="m5"></span>
        </th>
      </tr>
      <tr>
        <td id="inputId"><input type="text" name="email" id="email" value="java1234@java.com" class="form-control" onkeydown="emailCheck()" autofocus required></td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <div class="row">
            <div class="col"><input type="submit" id="sign" value="finish to sign up" onclick="inforCheck()" class="btn btn-danger mt-2 mb-2 pb-3 pt-2 form-control text-white"/></div>
          </div>
        </td>
      </tr>
    </table>
  </div>
  </form>
</div>
