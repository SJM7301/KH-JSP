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
	<p> 독서: <%=request.getParameter("reading") %>
	<p> 운동: <%=request.getParameter("exercise") %>
	<p> 영화: <%=request.getParameter("movie") %>
	
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		
		<%
			Enumeration paramNames = request.getParameterNames();
			while(paramNames.hasMoreElements()){
				String name = (String) paramNames.nextElement();
				out.println("<tr><td>" + name + "</td>\n");
				String paramValue = request.getParameter(name);
				out.println("<td>" + paramValue + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>