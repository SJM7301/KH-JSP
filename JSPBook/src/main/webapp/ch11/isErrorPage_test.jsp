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
	<h3>오류 발생</h3>
	
	<table border="1">
		<tr>
			<td>Error: </td>
			<td>${pageContext.exception }</td>
		</tr>
		
		<tr>
			<td>URI: </td>
			<td>${pageContext.errorData.requestURI }</td>
		</tr>
		
		<tr>
			<td>Status code: </td>
			<td>${pageContext.errorData.statusCode }</td>
		</tr>
	</table>
</body>
</html>