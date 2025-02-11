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
		HttpSession session1 = request.getSession();
		HttpSession session2 = request.getSession(true);
		
		if(session1 == session2){
			out.println("같은 세션<br>");
		} else{
			out.println("다른 세션<br>");
		}
		
		session.invalidate();
	%>
	
	<%
		HttpSession session3 = request.getSession(false);
		if(session3 != null){
			out.println("세션 확인<br>");
		} else {
			out.println("세션 없음<br>");
		}
	%>
	
	<%=session1 %><br>
	<%=session2 %>
</body>
</html>