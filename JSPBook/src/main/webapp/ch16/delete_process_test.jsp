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
	<%
		request.setCharacterEncoding("utf-8");
		
		String depart = request.getParameter("depart");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "SELECT * FROM student WHERE depart=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, depart);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String d_Depart = rs.getString("depart");
				
				if(depart.equals(d_Depart)){
					sql = "DELETE FROM student WHERE depart=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, depart);
					pstmt.executeUpdate();
					out.println("student 테이블을 수정했습니다.");
				} else{
					out.println("student 테이블을 수정하지 못했습니다.");
				}
			} else{
					out.println("일치하는 학과가 없습니다.");
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
</body>
</html>