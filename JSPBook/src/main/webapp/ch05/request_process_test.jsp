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
	<%
		String value = request.getQueryString();
		out.println("전송된 파라미터값: " + URLDecoder.decode(value));
	%>
	
	<%
		String id = request.getParameter("id");
		String pswd = request.getParameter("passwd");
	%>
	
	<p>아이디: <%=id %><br>
	<p>비밀번호: <%=pswd %><br>
</body>
</html>