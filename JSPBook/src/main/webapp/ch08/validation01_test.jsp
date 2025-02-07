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
		
		alert("아이디: " + form.id.value + "\n비밀번호: " + form.passwd.value);
		if(form.id.value == ""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return false;
		} else if(form.passwd.value == ""){
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return false;
		}
		
		if(form.passwd.value == form.id.value){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
		}
		
		form.submit();
	}
</script>

<body>
	<form action="validation01_process_test.jsp" name="loginForm">
		<p> 아이디: <input type="text" name="id">
		<p> 비밀번호: <input type="password" name="passwd">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>