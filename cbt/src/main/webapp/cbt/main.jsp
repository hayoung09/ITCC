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
<link rel="stylesheet" href="./css/cbt.css?v=1">
<link rel="stylesheet" href="./css/style_index.css">
<!--          script 선언          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js" charset="UTF-8"></script>

<script>
function checkIframeRadio(group1, group2) {
    // group1은 부모 HTML 문서의 라디오 버튼 그룹, group2는 iframe 내의 라디오 버튼 그룹 이름입니다.
    var parentRadios = document.getElementsByName(group1);
    var iframeRadios = window.frameElement.contentDocument.getElementsByName(group2);

    for (var i = 0; i < parentRadios.length; i++) {
        parentRadios[i].addEventListener("change", function () {
            // 부모 문서의 라디오 버튼 값과 동일한 값을 가진
            // iframe 내의 라디오 버튼을 선택합니다.
            var selectedValue = this.value;
            for (var j = 0; j < iframeRadios.length; j++) {
                if (iframeRadios[j].value === selectedValue) {
                    iframeRadios[j].checked = true;
                }
            }
        });
    }
}

// 부모 HTML 문서 로드 후에 이벤트 핸들러 등록
window.onload = function () {
    // checkIframeRadio 함수를 호출하여 이벤트 핸들러를 등록합니다.
    checkIframeRadio(group1,group2); // group1과 group2를 각각 적절한 그룹 이름으로 변경하세요.
};

// iframe 로드 후에 syncRadioButtons 함수를 호출하여 이벤트 핸들러를 등록합니다.
window.onload = checkOtherRadio;
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
							<li><a class="cbt_menu">시험과목 : &emsp;&emsp;&emsp;&emsp;정보처리기사</a></li>
						</ul>
						<div class="subject">
							과목선택 : <select id="sub_select" name="sub_select" size="1">
								<option value="CbtServlet?command=cbt_next&pageNum=1&amount=5&begin_num=1&odd_begin_num=2">1과목 : 소프트웨어 설계(20문항)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=5&amount=5&begin_num=21&odd_begin_num=22">2과목 : 소프트웨어 개발(20문항)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=9&amount=5&begin_num=41&odd_begin_num=42">3과목 : 데이터베이스 구축(20문항)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=13&amount=5&begin_num=61&odd_begin_num=62">4과목 : 프로그래밍 언어 활용(20문항)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=17&amount=5&begin_num=81&odd_begin_num=82">5과목 : 정보시스템 구축 관리(20문항)</option>
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
		
		
		
		<iframe id="important" name="important" src="./cbt/start.jsp">
		
		</iframe>

<script>
        // 선택 상자 요소와 iframe 요소 가져오기
        var selectBox = document.getElementById("sub_select");
        var iframe = document.getElementById("important");

        // 선택 상자의 값이 변경될 때 실행할 함수
        selectBox.addEventListener("change", function () {
            // 선택한 옵션의 값 (페이지 파일명) 가져오기
            var selectedPage = selectBox.value;

            // iframe의 내부 document에 접근
            var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

            // iframe의 내부 document를 선택한 페이지로 변경
            iframeDocument.location.href = selectedPage;
        });
    </script>
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
							 <a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">00<%=i%>.</a>
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							 <a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="d+<%=i%>">4</label>
							</a>
							</h3>
							<%}
							if(i%2==1){
							%>
								<h3 style="text-align: center">
							 <a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">00<%=i%>.</a>
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							 <a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="d+<%=i%>">4</label>
							<% 
							}
						}
							%>
							
						</a>
						</h3>

						<%
						for (int i = 10; i <= 99; i++) {
							if(i%2==0){
						%>
						<h3 style="text-align: center">
							<a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">0<%=i%>.</a>
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="d+<%=i%>">4</label>
								</a>
								</h3>
							<%}
							if(i%2==1){
							%>
							<h3 style="text-align: center">
							<a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">0<%=i%>.</a>
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">
							<input type="radio" class="radio01" id="a+<%=i%>" name="number+<%=i%>" value="1" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="a+<%=i%>">1</label>
							<input type="radio" class="radio02" id="b+<%=i%>" name="number+<%=i%>" value="2" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="b+<%=i%>">2</label>
							<input type="radio" class="radio03" id="c+<%=i%>" name="number+<%=i%>" value="3" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="c+<%=i%>">3</label>
							<input type="radio" class="radio04" id="d+<%=i%>" name="number+<%=i%>" value="4" 
								onclick="checkIframeRadio('number+<%=i%>','<%=i%>')"/> <label for="d+<%=i%>">4</label>
								</a>
								</h3>
							
							
							<%}
							}
							%>
						

						<h3 style="text-align: center">
							<a href="CbtServlet?command=cbt_next&pageNum=20&amount=5&begin_num=96&odd_begin_num=97" target="important" style="font-size:20px; text-decoration: none;color:black;">100.</a>
							<!-- 라디오버튼에서 input타입을받는 id a1, b1, c1, d1 , 라디오버튼에서 쓰이는건 number1 공용-->
							<a href="CbtServlet?command=cbt_next&pageNum=20&amount=5&begin_num=96&odd_begin_num=97" target="important" style="font-size:20px; text-decoration: none;color:black;">
							<input type="radio" class="radio01" id="a100" name="number+100" value="1" 
								onclick="checkIframeRadio('number+100','<%=100%>')"/> <label for="a100">1</label> 
								<input type="radio" class="radio02" id="b100" name="number+100" value="2" 
								onclick="checkIframeRadio('number+100','<%=100%>')"/> <label for="b100">2</label> 
								<input type="radio" class="radio03" id="c100" name="number+100" value="3" 
								onclick="checkIframeRadio('number+100','<%=100%>')"/> <label for="c100">3</label>
							<input type="radio" class="radio04" id="d100" name="number+100" value="4" 
								onclick="checkIframeRadio('number+100','<%=100%>')"/> <label for="d100">4</label>
								</a>
						</h3>

					</div>

				</div>
			</form>
		</aside>
<script>
        // a 태그를 클릭하면 iframe 페이지 변경
        function changeIframePage(pageUrl) {
            var iframe = document.getElementById("important");
            iframe.src = pageUrl;
        }
</script>

		<footer>
			
				<div class="footer_container">
					<input type="submit" class="btn3" value="채점하기" onclick="testCheck()" />
				</div>
			
		</footer>
	</div>
</body>
</html>