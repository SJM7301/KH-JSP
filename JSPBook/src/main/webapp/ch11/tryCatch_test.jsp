<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			int a = 1;
			int b = 0;
			int c = a / b;
			out.println(c);
			
		} catch(Exception e){
			out.println("오류 발생: " + e.getMessage());
		}
	%>
</body>
</html>