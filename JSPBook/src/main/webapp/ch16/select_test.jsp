<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
		
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try{
				String sql = "select * from Student";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					int num = rs.getInt("num");
					String depart = rs.getString("depart");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String phone = rs.getString("phone");
			%>
			<tr>
				<td><%=num %></td>
				<td><%=depart %></td>
				<td><%=name %></td>
				<td><%=address %></td>
				<td><%=phone %></td>
			</tr>
		<%
				}
			} catch(SQLException ex){
				ex.printStackTrace();
			} finally{
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}
		%>
	</table>
</body>
</html>