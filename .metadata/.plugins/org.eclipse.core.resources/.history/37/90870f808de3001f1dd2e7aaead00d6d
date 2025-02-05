<%@page import="java.util.Enumeration"%>
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
		request.setCharacterEncoding("UTF-8");
		
		Enumeration<String> paramNames = request.getParameterNames();
		
		StringBuffer buffer = new StringBuffer();
		
		while(paramNames.hasMoreElements()){
			String paramName = paramNames.nextElement();
			String paramValue = request.getParameter(paramName);
			buffer.append(paramName + ": " + paramValue + "<br>");
		}

		out.println(buffer.toString());
	%>
</body>
</html>