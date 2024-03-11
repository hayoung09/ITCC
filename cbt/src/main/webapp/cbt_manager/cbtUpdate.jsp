<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/cbt_manager.css">

</head>
<body>
	<div id="wrap" align="center">
		<h1>문제 수정</h1>
		<form name="frm" method="post" action="CbtServlet">
		<input type="hidden" name="command" value="cbt_update">
		<input type="hidden" name="qcode" value="${cbt.qcode}">
		
		<table>
			<tr>
				<th>시 험</th>
				<td><input type="text" size="12" name="subject" value="${cbt.subject }"></td>
			</tr>
			<tr>
				<th>과 목</th>
				<td><input type="text" size="12" name="qsubject" value="${cbt.qsubject }"></td>
			</tr>			
			<tr>
				<th>번 호</th>
				<td><input type="text" size="40" name="qcode" value="${cbt.qcode }"></td>
			</tr>		
		
			<tr>
				<th>문 제</th>
				<td>
					<textarea rows="5" cols="200" name="question">
					${cbt.question }
					</textarea>
				</td>
			</tr>
			<tr>
				<th>1번</th>
				<td>
					<textarea rows="5" cols="200" name="ans1">
					${cbt.ans1 }
					</textarea>
				</td>
			</tr>			
			<tr>
				<th>2번</th>
				<td>
					<textarea rows="5" cols="200" name="ans2">
					${cbt.ans2 }
					</textarea>
				</td>
			</tr>		
			<tr>
				<th>3번</th>
				<td>
					<textarea rows="5" cols="200" name="ans3">
					${cbt.ans3 }
					</textarea>
				</td>
			</tr>		
			<tr>
				<th>4번</th>
				<td>
					<textarea rows="15" cols="80" name="ans4">
					${cbt.ans4 }
					</textarea>
				</td>
			</tr>
			
			
		</table>
		<br>
		<input type="submit" value="수정완료">
		<input type="reset" value="다시작성">
		<input type="button" value="목록보기" 
		onclick="location.href='CbtServlet?command=cbt_list'">		
		</form>
	</div>
</body>













</html>