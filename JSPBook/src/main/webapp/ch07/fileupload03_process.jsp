<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String fileUploadPath = "C:\\eclipse\\JSP\\JSPBook\\src\\main\\webapp\\upload";
		
		DiskFileUpload upload = new DiskFileUpload();
		
		List items = upload.parseRequest(request);
		
		Iterator params = items.iterator();
		
		while(params.hasNext()){
			FileItem fileItem = (FileItem)params.next();
			
			if(!fileItem.isFormField()){
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\" ) + 1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
				out.println("파일 이름: " + fileName);
			}
		}
	%>
</body>
</html>