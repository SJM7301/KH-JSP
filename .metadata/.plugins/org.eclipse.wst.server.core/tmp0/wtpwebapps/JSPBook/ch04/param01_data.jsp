<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디: <%=request.getParameter("id") %></p>
		<%
			String name = request.getParameter("name");
		%> <!-- encoding된 것을 String값으로 변환 후 -->
	<p>이름: <%=URLDecoder.decode(name) %></p>
	<!-- decode로 복호화 -->
</body>
</html>