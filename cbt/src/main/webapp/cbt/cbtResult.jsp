<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.cbt.dto.CorrectVO" %>
<%@ page import="com.cbt.dto.CbtQuVO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>ITCC</title>
<!--          link 선언          -->
<link rel="stylesheet" href="./css/style_index.css?v=1">
<link rel="stylesheet" href="./css/cbtResult.css">
<!--          script 선언          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js"></script>

</head>
<body>

<%
    int score1 = 0;
	int score2 = 0;
	int score3 = 0;
	int score4 = 0;
	int score5 = 0;
	int count = 0;
	int total = 0;
%>

<c:forEach items="${correctList}" var="correctItem" varStatus="correctIndex">
    <c:choose>
        <c:when test="${ans[correctIndex.index] == correctItem.answer}">
            <%
            	if(count >= 0 && count < 20){
                	score1 += 1;
                	count++;
            	}
            	if(count >=20 && count < 40) {
            		score2 += 1;
            		count++;
            	}
            	if(count >=40 && count < 60) {
            		score3 += 1;
            		count++;
            	}
            	if(count >=60 && count < 80) {
            		score4 += 1;
            		count++;
            	}
            	if(count >=80 && count < 100) {
            		score5 += 1;
            		count++;
            	}
            %>
        </c:when>
        <c:otherwise>
	        <%
	       		count++;
	        %>
        </c:otherwise>
    </c:choose>
</c:forEach>

<%total = score1 + score2 + score3 + score4 + score5; %>

<div id="cbtResult">
	
	<h1>채점 결과</h1>
	
	<table class="result">
		<tr>
			<th>과목명</th>
			<th>과목</th>
			<th>나의 점수</th>
			<th>시험 날짜</th>
		</tr>

		<tr>
			<td>정보처리기사</td>
			<td>1과목</td>
			<td><%= score1 %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>
		
		<tr>
			<td>정보처리기사</td>
			<td>2과목</td>
			<td><%= score2 %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>

		<tr>
			<td>정보처리기사</td>
			<td>3과목</td>
			<td><%= score3 %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>

		<tr>
			<td>정보처리기사</td>
			<td>4과목</td>
			<td><%= score4 %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>

		<tr>
			<td>정보처리기사</td>
			<td>5과목</td>
			<td><%= score5 %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>
		
		<tr>
			<td>정보처리기사</td>
			<td>총점</td>
			<td><%=total %></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cbtCheckList[0].testdate}" /></td>
		</tr>
	</table>

	<div class="button">
		<input type="button" class="btn1" value="홈으로" onclick="location.href='./membermain.jsp'">
		<input type="button" class="btn2" value="저장하기" onclick="location.href='CbtServlet?command=cbt_score_graph&score=' + <%=total %>">
		<input type="button" class="btn3" value="오답해설" onclick="location.href='CbtServlet?command=cbt_wrong_comment'">
	</div>
</div>



</body>
</html>