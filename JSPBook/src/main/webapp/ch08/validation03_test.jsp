<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
      var pw_passed = true;
      function checkPasswd() {
         var id = document.getElementById("id").value;
         var passwd = document.getElementById("passwd").value;
         var passwdCheck = document.getElementById("passwdCheck").value;
         pw_passed = true;
         
         var pattern1 = /[0-9]/;
         var pattern2 = /[a-zA-Z]/;
         var pattern3 = /[~!@\#$%<>^&*]/;
         var pw_msg = "";
         
         if (id.length == 0) {
            alert("아이디를 입력해주세요.");
            return false;
         }
         if (passwd.length == 0) {
            alert("비밀번호를 입력해주세요.");
            return false;
         }else {
            if(passwd != passwdCheck){
               alert("비밀번호가 일치하지 않습니다.");
               return false;
            }
         }
         
         if(!pattern1.test(passwd)||!pattern2.test(passwd)||!pattern3.test(passwd)||passwd.length < 8 || passwd.length > 50){
            alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
            return false;
         }
         
         document.loginForm.submit();
      }
   </script>
<body>
	<form action="vaildation03_process_test.jsp" method="post" name="loginForm">
		<p> 아 이 디 : <input id="id" type="text" name="id">
		<p> 비밀번호 : <input id="passwd" type="password" name="passwd">
		<p> 비밀번호 확인 : <input id="passwdCheck" type="password" name="passwdCheck">
		<p> <input type="button" value="전송" onclick="checkPasswd()">
	</form>
</body>
</html>