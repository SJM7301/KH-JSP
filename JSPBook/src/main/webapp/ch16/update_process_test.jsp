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
		
		String before = request.getParameter("before_depart");
		String after = request.getParameter("after_depart");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "SELECT * FROM student WHERE depart=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, before);
			pstmt.setString(2, after);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String depart  = rs.getString("depart");
				
				if(before.equals(depart)){
					sql = "UPDATE student SET depart=? WHERE depart=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, after);
					pstmt.setString(2, before);
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