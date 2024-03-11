<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/section.css?v=1">
<link rel="stylesheet" href="./css/style_index.css">
<!--          script 선언          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js?v=1"></script>
<!-- 이 코드는 부모 페이지의 <head> 내에 들어갑니다. -->

</head>

<script>
    // iframe 내부에서 라디오 버튼을 클릭할 때 호출되는 함수
    function checkOtherRadio(group1,group2) {
    	
        var iframeRadios = document.getElementsByName(group1);
        var parentRadios = window.parent.document.getElementsByName(group2);

        for (var i = 0; i < iframeRadios.length; i++) {
            iframeRadios[i].addEventListener("change", function () {
                // iframe 내부 라디오 버튼의 값과 동일한 값을 가진
                // 부모 문서의 라디오 버튼을 선택합니다.
                var selectedValue = this.value;
                for (var j = 0; j < parentRadios.length; j++) {
                    if (parentRadios[j].value === selectedValue) {
                        parentRadios[j].checked = true;
                    }
                }
            });
        }
    }

    // iframe 로드 후에 syncRadioButtons 함수를 호출하여 이벤트 핸들러를 등록합니다.
    window.onload = syncRadioButtons;
</script>

<body>

<section>
			<form name="frm" method="post" action="CbtServlet">
				<div class="left">
					<div class="left_container">
						<table style="text-align: left;">
						<%
							int begin_num = Integer.parseInt(request.getAttribute("begin_num").toString());
						
		
						%>
							<c:forEach var="cbt" items="${cbtquList }" varStatus="status" >
							<%-- <%
								int num = (int)pageContext.getAttribute("status");
								int question_num = begin_num + 2*(num-1);
								
								String q_num = Integer.toString(question_num);
							
							%> --%>
							
							<%
							int question_num = begin_num ;
							
							String q_num = Integer.toString(question_num);
							
							
							%>
								<tr>
									<th>${cbt.qcode}.&nbsp;&nbsp;${cbt.question }</th>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="1" class="test1" name="<%=q_num %>" id="one+${status.count }"
										onclick="checkOtherRadio('<%=q_num %>','number+<%=q_num %>')">
										<label for="one+${status.count }">1</label> ${cbt.ans1 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="2" class="test1" name="<%=q_num %>" id="two+${status.count }"
										onclick="checkOtherRadio('<%=q_num %>','number+<%=q_num %>')">
										<label for="two+${status.count }">2</label> ${cbt.ans2 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="3" class="test1" name="<%=q_num %>" id="three+${status.count }"
										onclick="checkOtherRadio('<%=q_num %>','number+<%=q_num %>')">
										<label for="three+${status.count }">3</label> ${cbt.ans3 }</td>
								</tr>
								<tr>
									<td style="height: 45px;">
										<input type="radio" value="4" class="test1" name="<%=q_num %>" id="four+${status.count }"
										onclick="checkOtherRadio('<%=q_num %>','number+<%=q_num %>')">
										<label for="four+${status.count }">4</label> ${cbt.ans4 }</td>
								</tr>
								<%
									begin_num += 2; 
								%>
							</c:forEach>

						</table>
					</div>
				</div>
				<div class="right">
					<div class="right_container">
						<table style="text-align: left;">
						<%
							int odd_begin_num = Integer.parseInt(request.getAttribute("odd_begin_num").toString());
		
						%>
							<c:forEach var="cbt" items="${cbtevenList }" varStatus="status">
							<%
							int odd_question_num = odd_begin_num ;
							
							String p_num = Integer.toString(odd_question_num);
							
							
							%>
								<tr>
									<th>${cbt.qcode}.&nbsp;&nbsp;${cbt.question }</th>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="1" class="test1" name="<%=p_num %>" id="five+${status.count }"
										onclick="checkOtherRadio('<%=p_num %>','number+<%=p_num %>')">
										<label for="five+${status.count }">1</label> ${cbt.ans1 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="2" class="test1" name="<%=p_num %>" id="six+${status.count }"
										onclick="checkOtherRadio('<%=p_num %>','number+<%=p_num %>')">
										<label for="six+${status.count }">2</label> ${cbt.ans2 }</td>
								</tr>
								<tr>
									<td style="height: 35px;">
										<input type="radio" value="3" class="test1" name="<%=p_num %>" id="seven+${status.count }"
										onclick="checkOtherRadio('<%=p_num %>','number+<%=p_num %>')">
										<label for="seven+${status.count }">3</label> ${cbt.ans3 }</td>
								</tr>
								<tr>
									<td style="height: 45px;">
										<input type="radio" value="4" class="test1" name="<%=p_num %>" id="eight+${status.count }"
										onclick="checkOtherRadio('<%=p_num %>','number+<%=p_num %>')">
										<label for="eight+${status.count }">4</label> ${cbt.ans4 }</td>
								</tr>
								<%
									odd_begin_num += 2; 
								%>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>
			<div class="section_btn">
			<input type="button" class="btn1" value="◀이전" onclick="before_swap_page('${pageVO.startPage - 1 }','${pageVO.amount}','<%=begin_num-10 %>','<%=odd_begin_num-10 %>')" />
					<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
					 - <span id="page_number">${num }</span> - 
					</c:forEach>
					<input type="button" class="btn2" value="다음▶" onclick="before_swap_page('${pageVO.endPage + 1 }','${pageVO.amount}','<%=begin_num %>','<%=odd_begin_num %>')" />
			</div>
		</section>
		
	<script type="text/javascript">

	function before_swap_page(pageNum,amount,begin_num,odd_begin_num){

	 	if(pageNum>20){
	 		alert("마지막 페이지입니다.");
	 		return false;
	 	}else if(pageNum<1){
	 		alert("첫 페이지입니다.");
	 		return false;
	 	}else{
			if(pageNum%2==0){
				odd_begin_num = parseInt(odd_begin_num) + 1;
				begin_num= parseInt(begin_num)-1;
				
			}else if(pageNum%2==1){
				odd_begin_num = parseInt(odd_begin_num) + 1;
				begin_num= parseInt(begin_num)-1;
			}
			location.href='CbtServlet?command=cbt_next&pageNum='+pageNum+'&amount='+amount+'&begin_num='+begin_num+'&odd_begin_num='+odd_begin_num;
	 	}
	 }
	
	</script>
		
</body>
</html>