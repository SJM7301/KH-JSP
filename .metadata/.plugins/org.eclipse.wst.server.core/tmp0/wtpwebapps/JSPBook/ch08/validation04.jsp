<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		alert("아이디: " + form.id.value + "\n" + "비밀번호: " + form.passwd.value);
		
		for(i = 0; i < form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			
			if((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')){
				alert("아이디는 영문 소문자만 입력 가능합니다.");
				form.id.select();
				return;
			}
		}
		
		if(isNaN(form.passwd.value)){
			alert("비밀번호는 숫자만 입력 가능합니다.");
			form.passwd.select();
			return;
		}
		form.submit();
	}
</script>

<body>
	<form action="validation03_process.jsp" method="post" name="loginForm">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>