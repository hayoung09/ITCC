<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./css/cbt.css?v=1">
<link rel="stylesheet" href="./css/style_index.css">
<!--          script 선언          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js"></script>

<script>

</script>

</head>
<body>
	<div class="wrapper">
		<header>
			<div class="header_container">
				<div class="logo_container">
					<a>ITCC</a>
				</div>
				<div class="nav_container" id="nav_menu">
					<div class="cbt_container">
						<ul class="cbt">
							<li><a class="cbt_menu">정보처리기사</a></li>
						</ul>
						<div class="subject">
							과목선택 : <select id="sub_select" name="sub_select" size="1">
								<option value="sub_one">1과목 : 소프트웨어 설계(20문항)</option>
								<option value="sub_two">2과목 : 소프트웨어 개발(20문항)</option>
								<option value="sub_three">3과목 : 데이터베이스 구축(20문항)</option>
								<option value="sub_four">4과목 : 프로그래밍 언어 활용(20문항)</option>
								<option value="sub_five">5과목 : 정보시스템 구축 관리(20문항)</option>
							</select> <br> <br>
						</div>
					</div>
					<br>
					<br>
				</div>
				<div class="left_time">남은시간 :</div>
				&nbsp;
				<div class="timeSet" id="timer"></div>
			</div>
		</header>
		<%
		
		%>
		<section>

			<form name="frm" method="post" action="CbtServlet">
				<div class="left">
					<div class="left_container">
						<table style="text-align: left;">
							<c:forEach var="cbt" items="${cbtquList }" varStatus="status">
								<tr>
									<th>${cbt.qcode}.&nbsp;&nbsp;${cbt.question }</th>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="1" class="test1" name="${status.count }" id="one+${status.count }"
										onclick="checkOtherRadio('${status.count }','number+${status.count *2 -1}')">
										<label for="one+${status.count }">1</label> ${cbt.ans1 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="2" class="test1" name="${status.count }" id="two+${status.count }"
										onclick="checkOtherRadio('${status.count }','number+${status.count *2 -1 }')">
										<label for="two+${status.count }">2</label> ${cbt.ans2 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="3" class="test1" name="${status.count }" id="three+${status.count }"
										onclick="checkOtherRadio('${status.count }','number+${status.count *2 -1 }')">
										<label for="three+${status.count }">3</label> ${cbt.ans3 }</td>
								</tr>
								<tr>
									<td style="height: 45px;"><input type="radio" value="4" class="test1" name="${status.count }" id="four+${status.count }"
										onclick="checkOtherRadio('${status.count }','number+${status.count *2 -1 }')">
										<label for="four+${status.count }">4</label> ${cbt.ans4 }</td>
								</tr>
							</c:forEach>

						</table>
					</div>
				</div>
				<div class="right">
					<div class="right_container">
	
						<table style="text-align: left;">
							<c:forEach var="cbt" items="${cbtevenList }" varStatus="status">
								<tr>
									<th>${cbt.qcode}.&nbsp;&nbsp;${cbt.question }</th>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="1" class="test1" name="q+${status.count }" id="five+${status.count }"
										onclick="checkOtherRadio('q+${status.count }','number+${status.count*2}')">
										<label for="five+${status.count }">1</label> ${cbt.ans1 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="2" class="test1" name="q+${status.count }" id="six+${status.count }"
										onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
										<label for="six+${status.count }">2</label> ${cbt.ans2 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="3" class="test1" name="q+${status.count }" id="seven+${status.count }"
										onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
										<label for="seven+${status.count }">3</label> ${cbt.ans3 }</td>
								</tr>
								<tr>
									<td style="height: 45px;">
										<input type="radio" value="4" class="test1" name="q+${status.count }" id="eight+${status.count }"
										onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
										<label for="eight+${status.count }">4</label> ${cbt.ans4 }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>
		</section>

		<aside>
			<form name="frm" method="post" action="CbtServlet">
				<div class="answer">
					<div class="answer_select">
						<font class="font">답 안 지</font>
						<p></p>
						<%
						for (int i = 1; i <= 9; i++) {
							if(i%2==0){
						%>
						<h3 style="text-align: center">
							00<%=i%>.
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="d+<%=i%>">4</label>
							</h3>
							<%}
							if(i%2==1){
							%>
								<h3 style="text-align: center">
							00<%=i%>.
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="d+<%=i%>">4</label>
							<% 
							}
						}
							%>
							
						
						</h3>

						<%
						for (int i = 10; i <= 99; i++) {
							if(i%2==0){
						%>
						<h3 style="text-align: center">
							0<%=i%>.
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkEvenRadio('number+<%=i%>','q+<%=i/2%>')"/> <label for="d+<%=i%>">4</label>
								</h3>
							<%}
							if(i%2==1){
							%>
							<h3 style="text-align: center">
							0<%=i%>.
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkEvenRadio('number+<%=i%>','<%=i/2+1%>')"/> <label for="d+<%=i%>">4</label>
								</h3>
							
							
							<%}
							}
							%>
						

						<h3 style="text-align: center">
							100.
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<input type="radio" class="radio01" id="a100" name="number100" value="1" 
								onclick="checkEvenRadio('number100','q+<%=50%>')"/> <label for="a100">1</label> 
								<input type="radio" class="radio02" id="b100" name="number100" value="2" 
								onclick="checkEvenRadio('number100','q+<%=50%>')"/> <label for="b100">2</label> 
								<input type="radio" class="radio03" id="c100" name="number100" value="3" 
								onclick="checkEvenRadio('number100','q+<%=50%>')"/> <label for="c100">3</label>
							<input type="radio" class="radio04" id="d100" name="number100" value="4" 
								onclick="checkEvenRadio('number100','q+<%=50%>')"/> <label for="d100">4</label>
						</h3>

					</div>

				</div>
			</form>
		</aside>


		<footer>
			
				<div class="footer_container">
					
					<input type="button" class="btn1" value="◀이전" onclick="location.href='CbtServlet?command=cbt&pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount}'" />
					<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
					 - <span id="page_number">${num }</span> - 
					</c:forEach>
					<input type="button" class="btn2" value="다음▶" onclick="location.href='CbtServlet?command=cbt&pageNum=${pageVO.endPage + 1 }&amount=${pageVO.amount}'" /> 
				
					<input type="button" class="btn3" value="채점하기" onclick="testCheck()" />
				</div>
			
		</footer>
	</div>
</body>
</html>