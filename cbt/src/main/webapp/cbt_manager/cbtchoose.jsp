<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href = "./css/index1.css" rel = "stylesheet"/>
</head>
<body>
<div class="container">
	<input type="button" class="but1" value="문제 등록" onclick="location.href='CbtServlet?command=cbt_write_form'">
	<input type="button" class="but2" value="문제 수정" onclick="location.href='CbtServlet?command=cbt_list_form'">
</div>
</body>
</html>