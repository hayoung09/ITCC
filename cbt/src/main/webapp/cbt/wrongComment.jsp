<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>ITCC</title>
<!--          link 선언          -->
<link rel="stylesheet" href="./css/cbt.css?v=1">
<link rel="stylesheet" href="./css/style_index.css">
<link rel="stylesheet" href="./css/wrongComment.css?after">
<!--          script 선언          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js"></script>

</head>
<body>
	
<div class="board_wrap">
        <div class="board_title">
            <strong>CBT 모의고사 오답풀이</strong><br>
            <strong>100문제에 대한 오답 및 해설</strong>
            
            <input type="button" class="btn" value="홈으로" onclick="location.href='./membermain.jsp'">
        </div>
        
        <c:forEach items="${cbtwrongList}" var="cbtwrongList">
	        <div class="board_view_wrap"> 
	            <div class="board_view">
	                <div class="title">
	                    ${cbtwrongList.qcode}번문제:${cbtwrongList.question}
	                </div>
	                <div class="cont">
		                 <button>1번</button> ${cbtwrongList.ans1}<br><br>
		                 <button>2번</button> ${cbtwrongList.ans2}<br><br>
		                 <button>3번</button> ${cbtwrongList.ans3}<br><br>
		                 <button>4번</button> ${cbtwrongList.ans4}<br><br><br>
		                  정답: ${cbtwrongList.answer}번<br>
		                  <div class="correct">정답률: 83%</div><br>
		                  <문제해설><br>
		                  <strong>${cbtwrongList.info}</strong>
	                </div>
	        	</div>
    		</div>
    		<br><br><br>
    	</c:forEach>
</div>
    
    
	
</body>
</html>