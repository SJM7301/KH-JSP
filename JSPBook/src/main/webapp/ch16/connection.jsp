<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		try{
			String url = "jdbc:mysql://localhost:3306/jspbook";
			String user = "root";
			String password = "1111";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결이 성공했습니다.");
		} catch(SQLException e){
			out.println("데이터베이스 연결이 실패했습니다.<br>");
			out.println("SQLException: " + e.getMessage());
		} finally{
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>