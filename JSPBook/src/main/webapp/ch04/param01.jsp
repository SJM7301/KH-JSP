<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:forward page="param01_data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%= URLEncoder.encode("관리자") %>' name="name"/>
	</jsp:forward>
	<p>Jakarta Server Page</p>
	
	<!-- Encode로 복호화 -->
	<!-- forward를 사용해서 <h3>과 <p>태그가 나타나지 않는다. 나타나게 하려면 include를 사용해야함. -->
</body>
</html>