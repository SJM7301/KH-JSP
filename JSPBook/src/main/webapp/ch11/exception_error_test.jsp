<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(response.getStatus() == 500){
			
	%>
	오류발생 : <%=exception.getMessage() %>
	<%@ include file="exception_test.jsp" %>
	<%
		} else{
	%>
		오류 코드 발생 : <%=response.getStatus() %><br>
		<a href="JSPBook/ch11/exception_test.jsp">처음 페이지로 이동</a>
	<%
		}
	%>
</body>
</html>