<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href = "../css/index1.css" rel = "stylesheet"/>
</head>
<body>
<%
response.sendRedirect("http://localhost:8080/cbt/CbtServlet?command=cbt_choose");
%>
</body>
</html>