<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		이 페이지는 5초마다 새로고침 됩니다.<br>
		<%
			response.setIntHeader("Refresh", 5);
		%>
		
		<%=new Date() %><br>
	</p>
	
	<%
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
	%>
	
	<p>
		문자 인코딩: <%=response.getCharacterEncoding() %><br>
		콘텐츠 유형: <%=response.getContentType() %>
	</p>
</body>
</html>