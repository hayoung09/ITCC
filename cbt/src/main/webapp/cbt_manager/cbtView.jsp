<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/cbt_manager.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>문제 상세보기</h1>
		<table>
			<tr>
				<th>시험</th>
				<td>${cbt.subject}</td>
			</tr>
			<tr>
				<th>과목</th>
				<td>${cbt.qsubject}</td>
			</tr>
			<tr>
				<th>번호</th>
				<td>${cbt.qcode}</td>
			</tr>
			
			<tr>
				<th>문제</th>
				<td colspan="3">${cbt.question}</td>
			</tr>
			<tr>
				<th>1번</th>
				<td clospan="3">${cbt.ans1 }</td>
			</tr>
			<tr>
				<th>2번</th>
				<td colspan="3">${cbt.ans2 }</td>
			</tr>
			<tr>
				<th>3번</th>
				<td colspan="3"><pre>${cbt.ans3 }</pre></td>
			</tr>
			<tr>
				<th>4번</th>
				<td colspan="3"><pre>${cbt.ans4 }</pre></td>
			</tr>
			
		</table>
		<br> <br> <input type="button" value="문제 수정"
			onclick="location.href='CbtServlet?command=cbt_update_form&qcode=${cbt.qcode}'">
		<input type="button" value="문제 삭제"
			onclick="location.href='CbtServlet?command=cbt_delete&qcode=${cbt.qcode}'">
		<input type="button" value="cbt 리스트"
			onclick="location.href='BoardServlet?command=cbt_list'"> 
		<input type="button" value="문제 등록"
			onclick="location.href='BoardServlet?command=board_write_form'">
	</div>
</body>
</html>