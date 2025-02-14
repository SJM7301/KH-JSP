<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	%>
	
	<sql:setDataSource var="dataSource" 
		url="jdbc:mysql://localhost:3306/jspbook" 
		driver="com.mysql.cj.jdbc.Driver" user="root" password="1111" />
	
	<sql:update dataSource="${dataSource }" var="resultSet">
		DELETE FROM member WHERE id =? AND passwd =?
		<sql:param value="<%=id %>" />
		<sql:param value="<%=passwd %>" />
	</sql:update>
	<c:import url="sql01.jsp" var="url" />
	${url }
</body>
</html>