<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan" scope="request" />
	<%
		int i = 5;
		
		for(int j = 1; j <= 9; j++){
			out.println(i + " * " + j + " = " + gugudan.process(i, j) + "<br>");
		}
	%>
</body>
</html>