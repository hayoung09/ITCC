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
<!--          meta ����          -->
<meta charset="UTF-8">

<title>ITCC</title>
<!--          link ����          -->
<link rel="stylesheet" href="./css/cbt.css?v=1">
<link rel="stylesheet" href="./css/style_index.css">
<!--          script ����          -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js" charset="UTF-8"></script>

<script type="text/javascript" src="./javascript/script.js" charset="UTF-8"></script>

<script>
function checkIframeRadio(group1, group2) {
    // group1�� �θ� HTML ������ ���� ��ư �׷�, group2�� iframe ���� ���� ��ư �׷� �̸��Դϴ�.
    var parentRadios = document.getElementsByName(group1);
    var iframeRadios = window.frameElement.contentDocument.getElementsByName(group2);

    for (var i = 0; i < parentRadios.length; i++) {
        parentRadios[i].addEventListener("change", function () {
            // �θ� ������ ���� ��ư ���� ������ ���� ����
            // iframe ���� ���� ��ư�� �����մϴ�.
            var selectedValue = this.value;
            for (var j = 0; j < iframeRadios.length; j++) {
                if (iframeRadios[j].value === selectedValue) {
                    iframeRadios[j].checked = true;
                }
            }
        });
    }
}

// �θ� HTML ���� �ε� �Ŀ� �̺�Ʈ �ڵ鷯 ���
window.onload = function () {
    // checkIframeRadio �Լ��� ȣ���Ͽ� �̺�Ʈ �ڵ鷯�� ����մϴ�.
    checkIframeRadio(group1,group2); // group1�� group2�� ���� ������ �׷� �̸����� �����ϼ���.
};

// iframe �ε� �Ŀ� syncRadioButtons �Լ��� ȣ���Ͽ� �̺�Ʈ �ڵ鷯�� ����մϴ�.
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
							<li><a class="cbt_menu">������� : &emsp;&emsp;&emsp;&emsp;����ó�����</a></li>
						</ul>
						<div class="subject">
							������ : <select id="sub_select" name="sub_select" size="1">
								<option value="CbtServlet?command=cbt_next&pageNum=1&amount=5&begin_num=1&odd_begin_num=2">1���� : ����Ʈ���� ����(20����)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=5&amount=5&begin_num=21&odd_begin_num=22">2���� : ����Ʈ���� ����(20����)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=9&amount=5&begin_num=41&odd_begin_num=42">3���� : �����ͺ��̽� ����(20����)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=13&amount=5&begin_num=61&odd_begin_num=62">4���� : ���α׷��� ��� Ȱ��(20����)</option>
								<option value="CbtServlet?command=cbt_next&pageNum=17&amount=5&begin_num=81&odd_begin_num=82">5���� : �����ý��� ���� ����(20����)</option>
							</select> <br> <br>
						</div>
					</div>
					<br>
					<br>
				</div>
				<div class="left_time">�����ð� :</div>
				&nbsp;
				<div class="timeSet" id="timer"></div>
			</div>
		</header>
		<%
		
		%>
		
		
		
		<iframe id="important" name="important" src="./cbt/start.jsp">
		
		</iframe>

<script>
        // ���� ���� ��ҿ� iframe ��� ��������
        var selectBox = document.getElementById("sub_select");
        var iframe = document.getElementById("important");

        // ���� ������ ���� ����� �� ������ �Լ�
        selectBox.addEventListener("change", function () {
            // ������ �ɼ��� �� (������ ���ϸ�) ��������
            var selectedPage = selectBox.value;

            // iframe�� ���� document�� ����
            var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

            // iframe�� ���� document�� ������ �������� ����
            iframeDocument.location.href = selectedPage;
        });
    </script>
		<aside>
			<form name="frm" method="post" action="CbtServlet">
				<div class="answer">
					<div class="answer_select">
						<font class="font">�� �� ��</font>
						<p></p>
						<%
						for (int i = 1; i <= 9; i++) {
							if(i%2==0){
						%>
						<h3 style="text-align: center">
							 <a href="CbtServlet?command=cbt_next&pageNum=<%=(i - 1) / 5 + 1 %>&amount=5&begin_num=<%=((i - 1) / 5) * 5 + 1 %>&odd_begin_num=<%=((i - 1) / 5) * 5 + 2 %>" target="important" style="font-size:20px; text-decoration: none;color:black;">00<%=i%>.</a>
							<!-- ������ư���� inputŸ�����޴� id a1, b1, c1, d1 , ������ư���� ���̴°� number1 ����-->
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
							<!-- ������ư���� inputŸ�����޴� id a1, b1, c1, d1 , ������ư���� ���̴°� number1 ����-->
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
							<!-- ������ư���� inputŸ�����޴� id a1, b1, c1, d1 , ������ư���� ���̴°� number1 ����-->
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
							<!-- ������ư���� inputŸ�����޴� id a1, b1, c1, d1 , ������ư���� ���̴°� number1 ����-->
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
							<!-- ������ư���� inputŸ�����޴� id a1, b1, c1, d1 , ������ư���� ���̴°� number1 ����-->
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
        // a �±׸� Ŭ���ϸ� iframe ������ ����
        function changeIframePage(pageUrl) {
            var iframe = document.getElementById("important");
            iframe.src = pageUrl;
        }
</script>

		<footer>
			
				<div class="footer_container">
					<input type="submit" class="btn3" value="ä���ϱ�" onclick="testCheck()" />
				</div>
			
		</footer>
	</div>
</body>
</html>