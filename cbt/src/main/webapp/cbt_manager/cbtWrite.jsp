<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/cbt_manager.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>문제 등록</h1>
		<form name="frm" method="post" action="CbtServlet">
			<input type="hidden" name="command" value="cbt_write">
			<table>
				<tr>
					<th>시험</th>
					<td><input type="text" name="subject"></td>
				</tr>
				<tr>
					<th>과목</th>
					<td><input type="text" name="qsubject"></td>
				</tr>
				<tr>
					<th>번호</th>
					<td><input type="text" name="qcode"></td>
				</tr>
				<tr>
					<th>문제</th>
					<td><textarea cols="180" rows="5" name="question"></textarea></td>
				</tr>
				<tr>
					<th>1번</th>
					<td><textarea cols="180" rows="5" name="ans1"></textarea></td>
				</tr>
				<tr>
					<th>2번</th>
					<td><textarea cols="180" rows="5" name="ans2"></textarea></td>
				</tr>
				<tr>
					<th>3번</th>
					<td><textarea cols="180" rows="5" name="ans3"></textarea></td>
				</tr>
				<tr>
					<th>4번</th>
					<td><textarea cols="180" rows="5" name="ans4"></textarea></td>
				</tr>
				<tr>
					<th>보기</th>
					<td><input type="file" name="image"></td>
				</tr>
			</table>
			<br>
			<br> 
			<input type="submit" value="등록"> 
			<input type="reset" value="다시 작성"> 
			<input type="button" value="목록" onclick="location.href='CbtServlet?command=cbt_list_form'">
		</form>
	</div>
</body>
</html>