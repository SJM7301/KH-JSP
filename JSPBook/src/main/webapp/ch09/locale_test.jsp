<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>현재 로케일</h3>
	<%
		Locale locale  = request.getLocale();
		String language = locale.getLanguage();
		String country = locale.getCountry();
	%>
	
	언어 : <%=language %><br>
	국가 : <%=country %><br>
</body>
</html>