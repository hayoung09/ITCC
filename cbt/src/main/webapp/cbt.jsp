<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html>
<head>
<!--          meta 선언          -->
    <meta charset="UTF-8">
    
<title>ITCC</title>
<!--          link 선언          -->
    <link rel="stylesheet" href="./css/cbt.css">
    <link rel="stylesheet" href="./css/style_index.css">
    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
    <script type="text/javascript" src="./javascript/script.js"></script>
</head>
<body>
<div class = "wrapper">
    <header>
        <div class="header_container">
            <div class="logo_container">
                <a>ITCC</a>
            </div>
            <div class="nav_container" id="nav_menu">
                <div class="cbt_container">
                    <ul class="cbt">
                    	<li><a class="cbt_menu">정보처리기사 : 2023년 00월 00일 기출문제</a></li>
                    </ul>
                    <div class = "subject" >과목선택 : 
					<select id="sub_select" name="sub_select" size="1">
						<option value="sub_one">1과목 : 소프트웨어 설계(20문항)</option>
						<option value="sub_two">2과목 : 소프트웨어 개발(20문항)</option>
						<option value="sub_three">3과목 : 데이터베이스 구축(20문항)</option>
						<option value="sub_four">4과목 : 프로그래밍 언어 활용(20문항)</option>
						<option value="sub_five">5과목 : 정보시스템 구축 관리(20문항)</option>
					</select> <br> <br>
					</div> 
                </div>
				<br><br>
			</div>
                <div class = "left_time">남은시간 : </div>
                &nbsp;
                <div class = "timeSet" id = "timer">
                </div>
        </div>
    </header>
    
		<section>
		<form name="frm" method="post" action="CbtServlet">
			<div class = "left">
				<div class="left_container">
					<table>
					<c:forEach var="cbt" items="${cbtList }">
						${cbt.ans1 }
					</c:forEach>
					</table>
				</div>
			</div>
			<div class = "right">
			오른쪽
			</div>
		</form>
		</section>
		<aside>
		<form name="frm" method="post" action="CbtServlet">
			<div class = "answer">
				<div class = "answer_select">
							<font class = "font">답 안 지</font>
							<p></p>
					<%for(int i=1; i<=9; i++) {%>
					<h3>00<%=i %>.
					<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
						<input type = "radio" class = "radio01" id = "a+<%=i %>" name = "number+<%=i %>" value = "1"/>
						<label for="a+<%=i %>">1</label>
						<input type = "radio" class = "radio02" id = "b+<%=i %>" name = "number+<%=i %>" value = "2"/>
						<label for="b+<%=i %>">2</label>
						<input type = "radio" class = "radio03" id = "c+<%=i %>" name = "number+<%=i %>" value = "3"/>
						<label for="c+<%=i %>">3</label>
						<input type = "radio" class = "radio04" id = "d+<%=i %>" name = "number+<%=i %>" value = "4"/>
						<label for="d+<%=i %>">4</label>
					<%} %>
					</h3>
					
					<%for(int i=10; i<=99; i++) {%>
					<h3>0<%=i %>.
					<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
						<input type = "radio" class = "radio01" id = "a+<%=i %>" name = "number+<%=i %>" value = "1"/>
						<label for="a+<%=i %>">1</label>
						<input type = "radio" class = "radio02" id = "b+<%=i %>" name = "number+<%=i %>" value = "2"/>
						<label for="b+<%=i %>">2</label>
						<input type = "radio" class = "radio03" id = "c+<%=i %>" name = "number+<%=i %>" value = "3"/>
						<label for="c+<%=i %>">3</label>
						<input type = "radio" class = "radio04" id = "d+<%=i %>" name = "number+<%=i %>" value = "4"/>
						<label for="d+<%=i %>">4</label>
					<%} %>
					</h3>
					
					<h3>100.
					<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
						<input type = "radio" class = "radio01" id = "a100" name = "number100" value = "1"/>
						<label for="a100">1</label>
						<input type = "radio" class = "radio02" id = "b100" name = "number100" value = "2"/>
						<label for="b100">2</label>
						<input type = "radio" class = "radio03" id = "c100" name = "number100" value = "3"/>
						<label for="c100">3</label>
						<input type = "radio" class = "radio04" id = "d100" name = "number100" value = "4"/>
						<label for="d100">4</label>
					</h3>
				
				</div>
				
			</div>
		</form>
		</aside>
		
		
	<footer>
	<form name="frm" method="post" action="CbtServlet">
		<div class = "footer_container">
			<input type="button" class = "btn1" value="◀이전" onclick = "back()"/>
			-
			<span id = "page_number">1</span>
			-
			<input type="button" class = "btn2" value="다음▶" onclick = "next()"/>
			<input type="submit" class = "btn3" value="채점하기" onclick = "testCheck()"/>
			
		</div>
	</form>
	</footer>
</div>
</body>
</html>