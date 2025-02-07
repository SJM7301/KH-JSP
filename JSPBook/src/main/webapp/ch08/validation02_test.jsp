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
		
		if (id.length == 0) {
			alert("아이디를 입력해주세요.");
			return false;
		}
		if (passwd.length == 0) {
			alert("비밀번호를 입력해주세요.");
			return false;
		} else {
			if (passwd != passwdCheck) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}

		var sameChar = 0;
		var sequenceCnt1 = 0;
		var sequenceCnt2 = 0;

		for (var i = 0; i < passwd.length; i++) {
			var ch0;
			var ch1;
			var ch2;

			if (i >= 2) {
				ch0 = passwd.charCodeAt(i - 2);
				ch1 = passwd.charCodeAt(i - 1);
				ch2 = passwd.charCodeAt(i);

				if ((ch0 == ch1) && (ch1 == ch2)) {
					sameChar++;
				} else {
					sameChar = 0;
				}

				if (ch0 - ch1 == 1 && ch1 - ch2 == 1) {
					sequenceCnt1++;
				} else {
					sequenceCnt1 = 0;
				}

				if (ch0 - ch1 == -1 && ch1 - ch2 == -1) {
					sequenceCnt2++;
				} else {
					sequenceCnt2 = 0;
				}
			}

			if (sameChar > 0) {
				alert("동일 문자를 3자 이상 연속 입력할 수 없습니다.");
				pw_passed = false;
			}

			if (sequenceCnt1 > 0 || sequenceCnt2 > 0) {
				alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
				pw_passed = false;
			}

			if (!pw_passed) {
				return false;
				break;
			}
		}

		document.loginForm.submit();
	}
</script>
<body>
	<form action="vaildation02_process_test.jsp" method="post" name="loginForm">
		<p>
			아 이 디 : <input id="id" type="text" name="id">
		<p>
			비밀번호 : <input id="passwd" type="password" name="passwd">
		<p>
			비밀번호 확인 : <input id="passwdCheck" type="password" name="passwdCheck">
		<p>
			<input type="button" value="전송" onclick="checkPasswd()">
	</form>
</body>
</html>