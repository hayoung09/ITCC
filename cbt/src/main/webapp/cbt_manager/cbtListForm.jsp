<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/cbt_manager.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>CBT 문제</h1>
		<table class="list">
		
			<tr>
				<th>시험</th>
				<th>과목</th>
				<th>번호</th>
				<th>문제</th>
				<th>1번</th>
				<th>2번</th>
				<th>3번</th>
				<th>4번</th>
				<th>이미지</th>
			</tr>
			<c:forEach var="cbt" items="${cbtList }">
				<tr class="record">
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.subject }</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.qsubject }</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.qcode }</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.question } </a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.ans1}</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.ans2}</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.ans3}</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.ans4}</a></td>
					<td><a href="CbtServlet?command=cbt_view&qcode=${cbt.qcode}">${cbt.img}</a></td>
				</tr>
			</c:forEach>
		</table>
		<input type="button" value="관리자페이지로 가기" onclick="location.href='../cbt/cbt_manager/admin.jsp'">
	</div>
</body>
</html>